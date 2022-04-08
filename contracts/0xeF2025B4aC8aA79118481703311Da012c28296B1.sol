contract main {




// =====================  Runtime code  =====================


#
#  - getFifth(uint256 arg1)
#  - tokenURI(uint256 arg1)
#
array of struct stor0;
array of struct stor1;
uint256 stor10;
address owner;
array of uint256 stor12;
array of uint256 stor13;
array of uint256 stor14;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;

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

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if arg1 <= 0:
        revert with 0, 'Token ID invalid'
    if arg1 >= 26:
        revert with 0, 'Token ID invalid'
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg1]:
        revert with 0, 'ERC721: token already minted'
    stor9[arg1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg1
    if msg.sender:
        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = arg1
        stor7[arg1] = balanceOf[address(msg.sender)]
    else:
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
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    emit Transfer(0, msg.sender, arg1);
    if ext_code.size(msg.sender) > 0:
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, arg1, 128, 0
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
    stor10 = 1
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

function getSixth(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 5
    mem[128] = 'SIXTH'
    mem[160] = stor12.length
    if stor12.length:
        mem[0] = 12
        mem[192] = stor12
        idx = 192
        s = 0
        while (32 * stor12.length) + 160 > idx:
            mem[idx + 32] = stor('name', 'stor12', 12)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    if not arg1:
        mem[(32 * stor12.length) + 192] = 1
        mem[(32 * stor12.length) + 224] = '0'
        mem[(32 * stor12.length) + 288] = 'SIXTH'
        mem[(32 * stor12.length) + 293] = '0'
        mem[(32 * stor12.length) + 256] = 6
        mem[(32 * stor12.length) + 326] = 'SIXTH', '0', 0
        mem[(32 * stor12.length) + 332] = 0
        mem[(32 * stor12.length) + 294] = 6
        mem[64] = (32 * stor12.length) + 332
        if not stor12.length:
            revert with 'NH{q', 18
        if sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor12.length >= stor12.length:
            revert with 'NH{q', 50
        if sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % 21 <= 14:
            if sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % 21 < 19:
                mem[(32 * stor12.length) + 332] = mem[(32 * sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor12.length) + 223 len 1]
            else:
                if sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % 21 != 19:
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor13.length)] > -1 / mem[(32 * sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor12.length) + 223 len 1]:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 332] = mem[(32 * sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor13.length)]
                else:
                    if not stor14.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor14.length >= stor14.length:
                        revert with 'NH{q', 50
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor13.length)] > -1 / mem[(32 * sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor12.length) + 223 len 1]:
                        revert with 'NH{q', 17
                    if mem[(32 * sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor13.length)] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor14.length)] - 1:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 332] = (mem[(32 * sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor14.length)]
        else:
            if not stor14.length:
                revert with 'NH{q', 18
            if sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor14.length >= stor14.length:
                revert with 'NH{q', 50
            if mem[(32 * sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor12.length) + 223 len 1] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor14.length)] - 1:
                revert with 'NH{q', 17
            if sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % 21 < 19:
                mem[(32 * stor12.length) + 332] = mem[(32 * sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor14.length)]
            else:
                if sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % 21 != 19:
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor13.length)] > -1 / mem[(32 * sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor14.length)]:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 332] = (mem[(32 * sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor13.length)])
                else:
                    if not stor14.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor14.length >= stor14.length:
                        revert with 'NH{q', 50
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor13.length)] > -1 / mem[(32 * sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor14.length)]:
                        revert with 'NH{q', 17
                    if (mem[(32 * sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor13.length)]) > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor14.length)] - 1:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 332] = (mem[(32 * sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'SIXTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'SIXTH', '0', 0) >> 208) % stor14.length)]
        return memory
          from (32 * stor12.length) + 332
           len 32
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
    mem[(32 * stor12.length) + 192] = s
    if s:
        mem[(32 * stor12.length) + 224 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[(32 * stor12.length) + 192]:
            revert with 'NH{q', 50
        mem[t + (32 * stor12.length) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[(32 * stor12.length) + ceil32(s) + 256] = 'SIXTH'
    mem[(32 * stor12.length) + ceil32(s) + 261] = 0
    mem[(32 * stor12.length) + ceil32(s) + 261 len ceil32(mem[(32 * stor12.length) + 192])] = mem[(32 * stor12.length) + 224 len ceil32(mem[(32 * stor12.length) + 192])]
    if ceil32(mem[(32 * stor12.length) + 192]) > mem[(32 * stor12.length) + 192]:
        mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 261] = 0
    mem[(32 * stor12.length) + ceil32(s) + 224] = mem[(32 * stor12.length) + 192] + 5
    mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len floor32(mem[(32 * stor12.length) + 192] + 36)] = 'SIXTH', mem[(32 * stor12.length) + ceil32(s) + 261 len floor32(mem[(32 * stor12.length) + 192] + 36) - 5]
    if floor32(mem[(32 * stor12.length) + 192] + 36) > mem[(32 * stor12.length) + 192] + 5:
        mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = 0
    mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 261] = mem[(32 * stor12.length) + 192] + 5
    mem[64] = (32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298
    if not stor12.length:
        revert with 'NH{q', 18
    if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length >= stor12.length:
        revert with 'NH{q', 50
    if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % 21 <= 14:
        if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % 21 < 19:
            mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1]
        else:
            if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % 21 != 19:
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1]:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]
            else:
                if not stor14.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length >= stor14.length:
                    revert with 'NH{q', 50
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1]:
                    revert with 'NH{q', 17
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] - 1:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)]
    else:
        if not stor14.length:
            revert with 'NH{q', 18
        if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length >= stor14.length:
            revert with 'NH{q', 50
        if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] - 1:
            revert with 'NH{q', 17
        if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % 21 < 19:
            mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)]
        else:
            if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % 21 != 19:
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)]:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)])
            else:
                if not stor14.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length >= stor14.length:
                    revert with 'NH{q', 50
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)]:
                    revert with 'NH{q', 17
                if (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] - 1:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)]
    return memory
      from (32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298
       len 32
}

function getFirst(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 5
    mem[128] = 'FIRST'
    mem[160] = stor12.length
    if stor12.length:
        mem[0] = 12
        mem[192] = stor12
        idx = 192
        s = 0
        while (32 * stor12.length) + 160 > idx:
            mem[idx + 32] = stor('name', 'stor12', 12)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    if not arg1:
        mem[(32 * stor12.length) + 192] = 1
        mem[(32 * stor12.length) + 224] = '0'
        mem[(32 * stor12.length) + 288] = 'FIRST'
        mem[(32 * stor12.length) + 293] = '0'
        mem[(32 * stor12.length) + 256] = 6
        mem[(32 * stor12.length) + 326] = 'FIRST', '0', 0
        mem[(32 * stor12.length) + 332] = 0
        mem[(32 * stor12.length) + 294] = 6
        mem[64] = (32 * stor12.length) + 332
        if not stor12.length:
            revert with 'NH{q', 18
        if sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor12.length >= stor12.length:
            revert with 'NH{q', 50
        if sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % 21 <= 14:
            if sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % 21 < 19:
                mem[(32 * stor12.length) + 332] = mem[(32 * sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor12.length) + 223 len 1]
            else:
                if sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % 21 != 19:
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor13.length)] > -1 / mem[(32 * sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor12.length) + 223 len 1]:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 332] = mem[(32 * sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor13.length)]
                else:
                    if not stor14.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor14.length >= stor14.length:
                        revert with 'NH{q', 50
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor13.length)] > -1 / mem[(32 * sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor12.length) + 223 len 1]:
                        revert with 'NH{q', 17
                    if mem[(32 * sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor13.length)] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor14.length)] - 1:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 332] = (mem[(32 * sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor14.length)]
        else:
            if not stor14.length:
                revert with 'NH{q', 18
            if sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor14.length >= stor14.length:
                revert with 'NH{q', 50
            if mem[(32 * sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor12.length) + 223 len 1] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor14.length)] - 1:
                revert with 'NH{q', 17
            if sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % 21 < 19:
                mem[(32 * stor12.length) + 332] = mem[(32 * sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor14.length)]
            else:
                if sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % 21 != 19:
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor13.length)] > -1 / mem[(32 * sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor14.length)]:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 332] = (mem[(32 * sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor13.length)])
                else:
                    if not stor14.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor14.length >= stor14.length:
                        revert with 'NH{q', 50
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor13.length)] > -1 / mem[(32 * sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor14.length)]:
                        revert with 'NH{q', 17
                    if (mem[(32 * sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor13.length)]) > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor14.length)] - 1:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 332] = (mem[(32 * sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'FIRST'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'FIRST', '0', 0) >> 208) % stor14.length)]
        return memory
          from (32 * stor12.length) + 332
           len 32
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
    mem[(32 * stor12.length) + 192] = s
    if s:
        mem[(32 * stor12.length) + 224 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[(32 * stor12.length) + 192]:
            revert with 'NH{q', 50
        mem[t + (32 * stor12.length) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[(32 * stor12.length) + ceil32(s) + 256] = 'FIRST'
    mem[(32 * stor12.length) + ceil32(s) + 261] = 0
    mem[(32 * stor12.length) + ceil32(s) + 261 len ceil32(mem[(32 * stor12.length) + 192])] = mem[(32 * stor12.length) + 224 len ceil32(mem[(32 * stor12.length) + 192])]
    if ceil32(mem[(32 * stor12.length) + 192]) > mem[(32 * stor12.length) + 192]:
        mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 261] = 0
    mem[(32 * stor12.length) + ceil32(s) + 224] = mem[(32 * stor12.length) + 192] + 5
    mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len floor32(mem[(32 * stor12.length) + 192] + 36)] = 'FIRST', mem[(32 * stor12.length) + ceil32(s) + 261 len floor32(mem[(32 * stor12.length) + 192] + 36) - 5]
    if floor32(mem[(32 * stor12.length) + 192] + 36) > mem[(32 * stor12.length) + 192] + 5:
        mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = 0
    mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 261] = mem[(32 * stor12.length) + 192] + 5
    mem[64] = (32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298
    if not stor12.length:
        revert with 'NH{q', 18
    if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length >= stor12.length:
        revert with 'NH{q', 50
    if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % 21 <= 14:
        if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % 21 < 19:
            mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1]
        else:
            if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % 21 != 19:
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1]:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]
            else:
                if not stor14.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length >= stor14.length:
                    revert with 'NH{q', 50
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1]:
                    revert with 'NH{q', 17
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] - 1:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)]
    else:
        if not stor14.length:
            revert with 'NH{q', 18
        if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length >= stor14.length:
            revert with 'NH{q', 50
        if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] - 1:
            revert with 'NH{q', 17
        if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % 21 < 19:
            mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)]
        else:
            if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % 21 != 19:
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)]:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)])
            else:
                if not stor14.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length >= stor14.length:
                    revert with 'NH{q', 50
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)]:
                    revert with 'NH{q', 17
                if (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] - 1:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)]
    return memory
      from (32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298
       len 32
}

function getEight(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 5
    mem[128] = 'EIGHT'
    mem[160] = stor12.length
    if stor12.length:
        mem[0] = 12
        mem[192] = stor12
        idx = 192
        s = 0
        while (32 * stor12.length) + 160 > idx:
            mem[idx + 32] = stor('name', 'stor12', 12)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    if not arg1:
        mem[(32 * stor12.length) + 192] = 1
        mem[(32 * stor12.length) + 224] = '0'
        mem[(32 * stor12.length) + 288] = 'EIGHT'
        mem[(32 * stor12.length) + 293] = '0'
        mem[(32 * stor12.length) + 256] = 6
        mem[(32 * stor12.length) + 326] = 'EIGHT', '0', 0
        mem[(32 * stor12.length) + 332] = 0
        mem[(32 * stor12.length) + 294] = 6
        mem[64] = (32 * stor12.length) + 332
        if not stor12.length:
            revert with 'NH{q', 18
        if sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor12.length >= stor12.length:
            revert with 'NH{q', 50
        if sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % 21 <= 14:
            if sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % 21 < 19:
                mem[(32 * stor12.length) + 332] = mem[(32 * sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor12.length) + 223 len 1]
            else:
                if sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % 21 != 19:
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor13.length)] > -1 / mem[(32 * sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor12.length) + 223 len 1]:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 332] = mem[(32 * sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor13.length)]
                else:
                    if not stor14.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor14.length >= stor14.length:
                        revert with 'NH{q', 50
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor13.length)] > -1 / mem[(32 * sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor12.length) + 223 len 1]:
                        revert with 'NH{q', 17
                    if mem[(32 * sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor13.length)] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor14.length)] - 1:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 332] = (mem[(32 * sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor14.length)]
        else:
            if not stor14.length:
                revert with 'NH{q', 18
            if sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor14.length >= stor14.length:
                revert with 'NH{q', 50
            if mem[(32 * sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor12.length) + 223 len 1] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor14.length)] - 1:
                revert with 'NH{q', 17
            if sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % 21 < 19:
                mem[(32 * stor12.length) + 332] = mem[(32 * sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor14.length)]
            else:
                if sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % 21 != 19:
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor13.length)] > -1 / mem[(32 * sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor14.length)]:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 332] = (mem[(32 * sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor13.length)])
                else:
                    if not stor14.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor14.length >= stor14.length:
                        revert with 'NH{q', 50
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor13.length)] > -1 / mem[(32 * sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor14.length)]:
                        revert with 'NH{q', 17
                    if (mem[(32 * sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor13.length)]) > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor14.length)] - 1:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 332] = (mem[(32 * sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'EIGHT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'EIGHT', '0', 0) >> 208) % stor14.length)]
        return memory
          from (32 * stor12.length) + 332
           len 32
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
    mem[(32 * stor12.length) + 192] = s
    if s:
        mem[(32 * stor12.length) + 224 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[(32 * stor12.length) + 192]:
            revert with 'NH{q', 50
        mem[t + (32 * stor12.length) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[(32 * stor12.length) + ceil32(s) + 256] = 'EIGHT'
    mem[(32 * stor12.length) + ceil32(s) + 261] = 0
    mem[(32 * stor12.length) + ceil32(s) + 261 len ceil32(mem[(32 * stor12.length) + 192])] = mem[(32 * stor12.length) + 224 len ceil32(mem[(32 * stor12.length) + 192])]
    if ceil32(mem[(32 * stor12.length) + 192]) > mem[(32 * stor12.length) + 192]:
        mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 261] = 0
    mem[(32 * stor12.length) + ceil32(s) + 224] = mem[(32 * stor12.length) + 192] + 5
    mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len floor32(mem[(32 * stor12.length) + 192] + 36)] = 'EIGHT', mem[(32 * stor12.length) + ceil32(s) + 261 len floor32(mem[(32 * stor12.length) + 192] + 36) - 5]
    if floor32(mem[(32 * stor12.length) + 192] + 36) > mem[(32 * stor12.length) + 192] + 5:
        mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = 0
    mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 261] = mem[(32 * stor12.length) + 192] + 5
    mem[64] = (32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298
    if not stor12.length:
        revert with 'NH{q', 18
    if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length >= stor12.length:
        revert with 'NH{q', 50
    if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % 21 <= 14:
        if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % 21 < 19:
            mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1]
        else:
            if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % 21 != 19:
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1]:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]
            else:
                if not stor14.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length >= stor14.length:
                    revert with 'NH{q', 50
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1]:
                    revert with 'NH{q', 17
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] - 1:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)]
    else:
        if not stor14.length:
            revert with 'NH{q', 18
        if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length >= stor14.length:
            revert with 'NH{q', 50
        if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] - 1:
            revert with 'NH{q', 17
        if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % 21 < 19:
            mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)]
        else:
            if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % 21 != 19:
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)]:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)])
            else:
                if not stor14.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length >= stor14.length:
                    revert with 'NH{q', 50
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)]:
                    revert with 'NH{q', 17
                if (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] - 1:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)]
    return memory
      from (32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298
       len 32
}

function getThird(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 5
    mem[128] = 'THIRD'
    mem[160] = stor12.length
    if stor12.length:
        mem[0] = 12
        mem[192] = stor12
        idx = 192
        s = 0
        while (32 * stor12.length) + 160 > idx:
            mem[idx + 32] = stor('name', 'stor12', 12)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    if not arg1:
        mem[(32 * stor12.length) + 192] = 1
        mem[(32 * stor12.length) + 224] = '0'
        mem[(32 * stor12.length) + 288] = 'THIRD'
        mem[(32 * stor12.length) + 293] = '0'
        mem[(32 * stor12.length) + 256] = 6
        mem[(32 * stor12.length) + 326] = 'THIRD', '0', 0
        mem[(32 * stor12.length) + 332] = 0
        mem[(32 * stor12.length) + 294] = 6
        mem[64] = (32 * stor12.length) + 332
        if not stor12.length:
            revert with 'NH{q', 18
        if sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor12.length >= stor12.length:
            revert with 'NH{q', 50
        if sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % 21 <= 14:
            if sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % 21 < 19:
                mem[(32 * stor12.length) + 332] = mem[(32 * sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor12.length) + 223 len 1]
            else:
                if sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % 21 != 19:
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor13.length)] > -1 / mem[(32 * sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor12.length) + 223 len 1]:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 332] = mem[(32 * sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor13.length)]
                else:
                    if not stor14.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor14.length >= stor14.length:
                        revert with 'NH{q', 50
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor13.length)] > -1 / mem[(32 * sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor12.length) + 223 len 1]:
                        revert with 'NH{q', 17
                    if mem[(32 * sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor13.length)] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor14.length)] - 1:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 332] = (mem[(32 * sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor14.length)]
        else:
            if not stor14.length:
                revert with 'NH{q', 18
            if sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor14.length >= stor14.length:
                revert with 'NH{q', 50
            if mem[(32 * sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor12.length) + 223 len 1] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor14.length)] - 1:
                revert with 'NH{q', 17
            if sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % 21 < 19:
                mem[(32 * stor12.length) + 332] = mem[(32 * sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor14.length)]
            else:
                if sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % 21 != 19:
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor13.length)] > -1 / mem[(32 * sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor14.length)]:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 332] = (mem[(32 * sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor13.length)])
                else:
                    if not stor14.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor14.length >= stor14.length:
                        revert with 'NH{q', 50
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor13.length)] > -1 / mem[(32 * sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor14.length)]:
                        revert with 'NH{q', 17
                    if (mem[(32 * sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor13.length)]) > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor14.length)] - 1:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 332] = (mem[(32 * sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 48, 208, -208, ('data', ('mask_shl', 40, 216, -216, "'THIRD'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(48, 208, 'THIRD', '0', 0) >> 208) % stor14.length)]
        return memory
          from (32 * stor12.length) + 332
           len 32
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
    mem[(32 * stor12.length) + 192] = s
    if s:
        mem[(32 * stor12.length) + 224 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[(32 * stor12.length) + 192]:
            revert with 'NH{q', 50
        mem[t + (32 * stor12.length) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[(32 * stor12.length) + ceil32(s) + 256] = 'THIRD'
    mem[(32 * stor12.length) + ceil32(s) + 261] = 0
    mem[(32 * stor12.length) + ceil32(s) + 261 len ceil32(mem[(32 * stor12.length) + 192])] = mem[(32 * stor12.length) + 224 len ceil32(mem[(32 * stor12.length) + 192])]
    if ceil32(mem[(32 * stor12.length) + 192]) > mem[(32 * stor12.length) + 192]:
        mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 261] = 0
    mem[(32 * stor12.length) + ceil32(s) + 224] = mem[(32 * stor12.length) + 192] + 5
    mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len floor32(mem[(32 * stor12.length) + 192] + 36)] = 'THIRD', mem[(32 * stor12.length) + ceil32(s) + 261 len floor32(mem[(32 * stor12.length) + 192] + 36) - 5]
    if floor32(mem[(32 * stor12.length) + 192] + 36) > mem[(32 * stor12.length) + 192] + 5:
        mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = 0
    mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 261] = mem[(32 * stor12.length) + 192] + 5
    mem[64] = (32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298
    if not stor12.length:
        revert with 'NH{q', 18
    if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length >= stor12.length:
        revert with 'NH{q', 50
    if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % 21 <= 14:
        if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % 21 < 19:
            mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1]
        else:
            if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % 21 != 19:
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1]:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]
            else:
                if not stor14.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length >= stor14.length:
                    revert with 'NH{q', 50
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1]:
                    revert with 'NH{q', 17
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] - 1:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)]
    else:
        if not stor14.length:
            revert with 'NH{q', 18
        if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length >= stor14.length:
            revert with 'NH{q', 50
        if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] - 1:
            revert with 'NH{q', 17
        if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % 21 < 19:
            mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)]
        else:
            if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % 21 != 19:
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)]:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)])
            else:
                if not stor14.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length >= stor14.length:
                    revert with 'NH{q', 50
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)]:
                    revert with 'NH{q', 17
                if (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] - 1:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298] = (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 293 len mem[(32 * stor12.length) + 192] + 5]) % stor14.length)]
    return memory
      from (32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 298
       len 32
}

function getSecond(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 6
    mem[128] = 'SECOND'
    mem[160] = stor12.length
    if stor12.length:
        mem[0] = 12
        mem[192] = stor12
        idx = 192
        s = 0
        while (32 * stor12.length) + 160 > idx:
            mem[idx + 32] = stor('name', 'stor12', 12)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    if not arg1:
        mem[(32 * stor12.length) + 192] = 1
        mem[(32 * stor12.length) + 224] = '0'
        mem[(32 * stor12.length) + 288] = 'SECOND'
        mem[(32 * stor12.length) + 294] = '0'
        mem[(32 * stor12.length) + 256] = 7
        mem[(32 * stor12.length) + 327] = 'SECOND', '0', 0
        mem[(32 * stor12.length) + 334] = 0
        mem[(32 * stor12.length) + 295] = 7
        mem[64] = (32 * stor12.length) + 334
        if not stor12.length:
            revert with 'NH{q', 18
        if sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor12.length >= stor12.length:
            revert with 'NH{q', 50
        if sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % 21 <= 14:
            if sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % 21 < 19:
                mem[(32 * stor12.length) + 334] = mem[(32 * sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor12.length) + 223 len 1]
            else:
                if sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % 21 != 19:
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor13.length)] > -1 / mem[(32 * sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor12.length) + 223 len 1]:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 334] = mem[(32 * sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor13.length)]
                else:
                    if not stor14.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor14.length >= stor14.length:
                        revert with 'NH{q', 50
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor13.length)] > -1 / mem[(32 * sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor12.length) + 223 len 1]:
                        revert with 'NH{q', 17
                    if mem[(32 * sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor13.length)] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor14.length)] - 1:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 334] = (mem[(32 * sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor14.length)]
        else:
            if not stor14.length:
                revert with 'NH{q', 18
            if sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor14.length >= stor14.length:
                revert with 'NH{q', 50
            if mem[(32 * sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor12.length) + 223 len 1] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor14.length)] - 1:
                revert with 'NH{q', 17
            if sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % 21 < 19:
                mem[(32 * stor12.length) + 334] = mem[(32 * sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor14.length)]
            else:
                if sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % 21 != 19:
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor13.length)] > -1 / mem[(32 * sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor14.length)]:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 334] = (mem[(32 * sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor13.length)])
                else:
                    if not stor14.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor14.length >= stor14.length:
                        revert with 'NH{q', 50
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor13.length)] > -1 / mem[(32 * sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor14.length)]:
                        revert with 'NH{q', 17
                    if (mem[(32 * sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor13.length)]) > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor14.length)] - 1:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 334] = (mem[(32 * sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SECOND'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SECOND', '0', 0) >> 200) % stor14.length)]
        return memory
          from (32 * stor12.length) + 334
           len 32
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
    mem[(32 * stor12.length) + 192] = s
    if s:
        mem[(32 * stor12.length) + 224 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[(32 * stor12.length) + 192]:
            revert with 'NH{q', 50
        mem[t + (32 * stor12.length) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[(32 * stor12.length) + ceil32(s) + 256] = 'SECOND'
    mem[(32 * stor12.length) + ceil32(s) + 262] = 0
    mem[(32 * stor12.length) + ceil32(s) + 262 len ceil32(mem[(32 * stor12.length) + 192])] = mem[(32 * stor12.length) + 224 len ceil32(mem[(32 * stor12.length) + 192])]
    if ceil32(mem[(32 * stor12.length) + 192]) > mem[(32 * stor12.length) + 192]:
        mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 262] = 0
    mem[(32 * stor12.length) + ceil32(s) + 224] = mem[(32 * stor12.length) + 192] + 6
    mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len floor32(mem[(32 * stor12.length) + 192] + 37)] = 'SECOND', mem[(32 * stor12.length) + ceil32(s) + 262 len floor32(mem[(32 * stor12.length) + 192] + 37) - 6]
    if floor32(mem[(32 * stor12.length) + 192] + 37) > mem[(32 * stor12.length) + 192] + 6:
        mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300] = 0
    mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 262] = mem[(32 * stor12.length) + 192] + 6
    mem[64] = (32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300
    if not stor12.length:
        revert with 'NH{q', 18
    if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length >= stor12.length:
        revert with 'NH{q', 50
    if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % 21 <= 14:
        if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % 21 < 19:
            mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300] = mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1]
        else:
            if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % 21 != 19:
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1]:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300] = mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)]
            else:
                if not stor14.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length >= stor14.length:
                    revert with 'NH{q', 50
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1]:
                    revert with 'NH{q', 17
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] - 1:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300] = (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)]
    else:
        if not stor14.length:
            revert with 'NH{q', 18
        if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length >= stor14.length:
            revert with 'NH{q', 50
        if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] - 1:
            revert with 'NH{q', 17
        if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % 21 < 19:
            mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300] = mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)]
        else:
            if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % 21 != 19:
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)]:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300] = (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)])
            else:
                if not stor14.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length >= stor14.length:
                    revert with 'NH{q', 50
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)]:
                    revert with 'NH{q', 17
                if (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)]) > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] - 1:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300] = (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)]
    return memory
      from (32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300
       len 32
}

function getFourth(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 6
    mem[128] = 'FOURTH'
    mem[160] = stor12.length
    if stor12.length:
        mem[0] = 12
        mem[192] = stor12
        idx = 192
        s = 0
        while (32 * stor12.length) + 160 > idx:
            mem[idx + 32] = stor('name', 'stor12', 12)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    if not arg1:
        mem[(32 * stor12.length) + 192] = 1
        mem[(32 * stor12.length) + 224] = '0'
        mem[(32 * stor12.length) + 288] = 'FOURTH'
        mem[(32 * stor12.length) + 294] = '0'
        mem[(32 * stor12.length) + 256] = 7
        mem[(32 * stor12.length) + 327] = 'FOURTH', '0', 0
        mem[(32 * stor12.length) + 334] = 0
        mem[(32 * stor12.length) + 295] = 7
        mem[64] = (32 * stor12.length) + 334
        if not stor12.length:
            revert with 'NH{q', 18
        if sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor12.length >= stor12.length:
            revert with 'NH{q', 50
        if sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % 21 <= 14:
            if sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % 21 < 19:
                mem[(32 * stor12.length) + 334] = mem[(32 * sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor12.length) + 223 len 1]
            else:
                if sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % 21 != 19:
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor13.length)] > -1 / mem[(32 * sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor12.length) + 223 len 1]:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 334] = mem[(32 * sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor13.length)]
                else:
                    if not stor14.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor14.length >= stor14.length:
                        revert with 'NH{q', 50
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor13.length)] > -1 / mem[(32 * sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor12.length) + 223 len 1]:
                        revert with 'NH{q', 17
                    if mem[(32 * sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor13.length)] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor14.length)] - 1:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 334] = (mem[(32 * sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor14.length)]
        else:
            if not stor14.length:
                revert with 'NH{q', 18
            if sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor14.length >= stor14.length:
                revert with 'NH{q', 50
            if mem[(32 * sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor12.length) + 223 len 1] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor14.length)] - 1:
                revert with 'NH{q', 17
            if sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % 21 < 19:
                mem[(32 * stor12.length) + 334] = mem[(32 * sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor14.length)]
            else:
                if sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % 21 != 19:
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor13.length)] > -1 / mem[(32 * sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor14.length)]:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 334] = (mem[(32 * sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor13.length)])
                else:
                    if not stor14.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor14.length >= stor14.length:
                        revert with 'NH{q', 50
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor13.length)] > -1 / mem[(32 * sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor14.length)]:
                        revert with 'NH{q', 17
                    if (mem[(32 * sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor13.length)]) > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor14.length)] - 1:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 334] = (mem[(32 * sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'FOURTH'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'FOURTH', '0', 0) >> 200) % stor14.length)]
        return memory
          from (32 * stor12.length) + 334
           len 32
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
    mem[(32 * stor12.length) + 192] = s
    if s:
        mem[(32 * stor12.length) + 224 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[(32 * stor12.length) + 192]:
            revert with 'NH{q', 50
        mem[t + (32 * stor12.length) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[(32 * stor12.length) + ceil32(s) + 256] = 'FOURTH'
    mem[(32 * stor12.length) + ceil32(s) + 262] = 0
    mem[(32 * stor12.length) + ceil32(s) + 262 len ceil32(mem[(32 * stor12.length) + 192])] = mem[(32 * stor12.length) + 224 len ceil32(mem[(32 * stor12.length) + 192])]
    if ceil32(mem[(32 * stor12.length) + 192]) > mem[(32 * stor12.length) + 192]:
        mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 262] = 0
    mem[(32 * stor12.length) + ceil32(s) + 224] = mem[(32 * stor12.length) + 192] + 6
    mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len floor32(mem[(32 * stor12.length) + 192] + 37)] = 'FOURTH', mem[(32 * stor12.length) + ceil32(s) + 262 len floor32(mem[(32 * stor12.length) + 192] + 37) - 6]
    if floor32(mem[(32 * stor12.length) + 192] + 37) > mem[(32 * stor12.length) + 192] + 6:
        mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300] = 0
    mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 262] = mem[(32 * stor12.length) + 192] + 6
    mem[64] = (32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300
    if not stor12.length:
        revert with 'NH{q', 18
    if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length >= stor12.length:
        revert with 'NH{q', 50
    if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % 21 <= 14:
        if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % 21 < 19:
            mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300] = mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1]
        else:
            if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % 21 != 19:
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1]:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300] = mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)]
            else:
                if not stor14.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length >= stor14.length:
                    revert with 'NH{q', 50
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1]:
                    revert with 'NH{q', 17
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] - 1:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300] = (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)]
    else:
        if not stor14.length:
            revert with 'NH{q', 18
        if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length >= stor14.length:
            revert with 'NH{q', 50
        if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] - 1:
            revert with 'NH{q', 17
        if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % 21 < 19:
            mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300] = mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)]
        else:
            if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % 21 != 19:
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)]:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300] = (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)])
            else:
                if not stor14.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length >= stor14.length:
                    revert with 'NH{q', 50
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)]:
                    revert with 'NH{q', 17
                if (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)]) > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] - 1:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300] = (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)]
    return memory
      from (32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300
       len 32
}

function getSeventh(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 6
    mem[128] = 'SEVENT'
    mem[160] = stor12.length
    if stor12.length:
        mem[0] = 12
        mem[192] = stor12
        idx = 192
        s = 0
        while (32 * stor12.length) + 160 > idx:
            mem[idx + 32] = stor('name', 'stor12', 12)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    if not arg1:
        mem[(32 * stor12.length) + 192] = 1
        mem[(32 * stor12.length) + 224] = '0'
        mem[(32 * stor12.length) + 288] = 'SEVENT'
        mem[(32 * stor12.length) + 294] = '0'
        mem[(32 * stor12.length) + 256] = 7
        mem[(32 * stor12.length) + 327] = 'SEVENT', '0', 0
        mem[(32 * stor12.length) + 334] = 0
        mem[(32 * stor12.length) + 295] = 7
        mem[64] = (32 * stor12.length) + 334
        if not stor12.length:
            revert with 'NH{q', 18
        if sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor12.length >= stor12.length:
            revert with 'NH{q', 50
        if sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % 21 <= 14:
            if sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % 21 < 19:
                mem[(32 * stor12.length) + 334] = mem[(32 * sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor12.length) + 223 len 1]
            else:
                if sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % 21 != 19:
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor13.length)] > -1 / mem[(32 * sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor12.length) + 223 len 1]:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 334] = mem[(32 * sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor13.length)]
                else:
                    if not stor14.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor14.length >= stor14.length:
                        revert with 'NH{q', 50
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor13.length)] > -1 / mem[(32 * sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor12.length) + 223 len 1]:
                        revert with 'NH{q', 17
                    if mem[(32 * sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor13.length)] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor14.length)] - 1:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 334] = (mem[(32 * sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor14.length)]
        else:
            if not stor14.length:
                revert with 'NH{q', 18
            if sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor14.length >= stor14.length:
                revert with 'NH{q', 50
            if mem[(32 * sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor12.length) + 223 len 1] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor14.length)] - 1:
                revert with 'NH{q', 17
            if sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % 21 < 19:
                mem[(32 * stor12.length) + 334] = mem[(32 * sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor14.length)]
            else:
                if sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % 21 != 19:
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor13.length)] > -1 / mem[(32 * sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor14.length)]:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 334] = (mem[(32 * sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor13.length)])
                else:
                    if not stor14.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor14.length >= stor14.length:
                        revert with 'NH{q', 50
                    if not stor13.length:
                        revert with 'NH{q', 18
                    if sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor13.length >= stor13.length:
                        revert with 'NH{q', 50
                    if mem[(32 * sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor13.length)] > -1 / mem[(32 * sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor14.length)]:
                        revert with 'NH{q', 17
                    if (mem[(32 * sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor13.length)]) > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor14.length)] - 1:
                        revert with 'NH{q', 17
                    mem[(32 * stor12.length) + 334] = (mem[(32 * sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mask_shl', 56, 200, -200, ('data', ('mask_shl', 48, 208, -208, "'SEVENT'"), ('mask_shl', 8, 248, -248, "'0'"), 0))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(Mask(56, 200, 'SEVENT', '0', 0) >> 200) % stor14.length)]
        return memory
          from (32 * stor12.length) + 334
           len 32
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
    mem[(32 * stor12.length) + 192] = s
    if s:
        mem[(32 * stor12.length) + 224 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[(32 * stor12.length) + 192]:
            revert with 'NH{q', 50
        mem[t + (32 * stor12.length) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[(32 * stor12.length) + ceil32(s) + 256] = 'SEVENT'
    mem[(32 * stor12.length) + ceil32(s) + 262] = 0
    mem[(32 * stor12.length) + ceil32(s) + 262 len ceil32(mem[(32 * stor12.length) + 192])] = mem[(32 * stor12.length) + 224 len ceil32(mem[(32 * stor12.length) + 192])]
    if ceil32(mem[(32 * stor12.length) + 192]) > mem[(32 * stor12.length) + 192]:
        mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 262] = 0
    mem[(32 * stor12.length) + ceil32(s) + 224] = mem[(32 * stor12.length) + 192] + 6
    mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len floor32(mem[(32 * stor12.length) + 192] + 37)] = 'SEVENT', mem[(32 * stor12.length) + ceil32(s) + 262 len floor32(mem[(32 * stor12.length) + 192] + 37) - 6]
    if floor32(mem[(32 * stor12.length) + 192] + 37) > mem[(32 * stor12.length) + 192] + 6:
        mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300] = 0
    mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 262] = mem[(32 * stor12.length) + 192] + 6
    mem[64] = (32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300
    if not stor12.length:
        revert with 'NH{q', 18
    if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length >= stor12.length:
        revert with 'NH{q', 50
    if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % 21 <= 14:
        if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % 21 < 19:
            mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300] = mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1]
        else:
            if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % 21 != 19:
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1]:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300] = mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)]
            else:
                if not stor14.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length >= stor14.length:
                    revert with 'NH{q', 50
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1]:
                    revert with 'NH{q', 17
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] - 1:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300] = (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)]
    else:
        if not stor14.length:
            revert with 'NH{q', 18
        if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length >= stor14.length:
            revert with 'NH{q', 50
        if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] - 1:
            revert with 'NH{q', 17
        if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % 21 < 19:
            mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300] = mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)]
        else:
            if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % 21 != 19:
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)]:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300] = (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)])
            else:
                if not stor14.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length >= stor14.length:
                    revert with 'NH{q', 50
                if not stor13.length:
                    revert with 'NH{q', 18
                if sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length >= stor13.length:
                    revert with 'NH{q', 50
                if mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)] > -1 / mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)]:
                    revert with 'NH{q', 17
                if (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)]) > -stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] - 1:
                    revert with 'NH{q', 17
                mem[(32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300] = (mem[(32 * sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor12.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor13', 13))))), ('name', 'stor13', 13))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor13.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor12', 12))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor14', 14))))), ('name', 'stor14', 14))[uint8(sha3(mem[(32 * stor12.length) + ceil32(s) + mem[(32 * stor12.length) + 192] + 294 len mem[(32 * stor12.length) + 192] + 6]) % stor14.length)]
    return memory
      from (32 * stor12.length) + ceil32(s) + (2 * mem[(32 * stor12.length) + 192]) + 300
       len 32
}



}
