contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
array of struct stor2;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor6;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor8;
array of uint256 tokenByIndex;
mapping of uint256 stor10;
uint256 stor11;
mapping of struct stor12;
uint256 stor13;

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
    return bool(stor6[address(arg1)][address(arg2)])
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
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor6[address(msg.sender)][address(arg1)] = uint8(arg2)
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
        if not stor6[stor3[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function setTokenUri(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ownerOf[arg1]:
        revert with 0, 'Only allowed to set uri for minted token'
    if bool(stor12[arg1].field_0):
        if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor12[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor12[arg1].field_0 = 0
            idx = 0
            while uint255(stor12[arg1].field_1) + 31 / 32 > idx:
                stor12[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor12[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor12[arg1].field_0 = 0
            idx = 0
            while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                stor12[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
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
            if not stor6[stor3[arg3]][address(msg.sender)]:
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
                revert with 'NH{q', 17
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor4[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
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

function sub_6bac67aa(?) payable {
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
    stor13 = stor11
    stor11++
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor13]:
        revert with 0, 'ERC721: token already minted'
    stor10[stor13] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor13
    if msg.sender:
        tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = stor13
        stor8[stor13] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[stor13] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[stor13]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[stor13]
        stor10[stor13] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor13] = msg.sender
    emit Transfer(0, msg.sender, stor13);
    if ext_code.size(msg.sender) > 0:
        require ext_code.size(msg.sender)
        call msg.sender.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, 0, stor13, 128, 0
        if not ext_call.success:
            if not return_data.size:
                if not arg1.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg1[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    if bool(stor12[stor13].field_0):
        if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor12[stor13][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor12[stor13].field_0 = 0
            idx = 0
            while uint255(stor12[stor13].field_1) + 31 / 32 > idx:
                stor12[stor13][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor12[stor13][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor12[stor13].field_0 = 0
            idx = 0
            while stor12[stor13].field_1 % 128 + 31 / 32 > idx:
                stor12[stor13][idx].field_0 = 0
                idx = idx + 1
                continue 
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
            if not stor6[stor3[arg3]][address(msg.sender)]:
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
                revert with 'NH{q', 17
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor4[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
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

function name() payable {
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

function symbol() payable {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor2.length.field_1):
                if 31 < uint255(stor2.length.field_1):
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor2.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        else:
            if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1 % 128:
                if 31 < stor2.length.field_1 % 128:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        mem[ceil32(uint255(stor2.length.field_1)) + 192 len ceil32(uint255(stor2.length.field_1))] = mem[128 len ceil32(uint255(stor2.length.field_1))]
        if ceil32(uint255(stor2.length.field_1)) > uint255(stor2.length.field_1):
            mem[ceil32(uint255(stor2.length.field_1)) + uint255(stor2.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))], mem[(2 * ceil32(uint255(stor2.length.field_1))) + 192 len 2 * ceil32(uint255(stor2.length.field_1))]), 
    if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor2.length.field_1):
            if 31 < uint255(stor2.length.field_1):
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while uint255(stor2.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    else:
        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1 % 128:
            if 31 < stor2.length.field_1 % 128:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    mem[ceil32(stor2.length.field_1 % 128) + 192 len ceil32(stor2.length.field_1 % 128)] = mem[128 len ceil32(stor2.length.field_1 % 128)]
    if ceil32(stor2.length.field_1 % 128) > stor2.length.field_1 % 128:
        mem[ceil32(stor2.length.field_1 % 128) + stor2.length.field_1 % 128 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)], mem[(2 * ceil32(stor2.length.field_1 % 128)) + 192 len 2 * ceil32(stor2.length.field_1 % 128)]), 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor12[arg1].field_0):
        if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor12[arg1].field_0):
            if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor12[arg1].field_1):
                if 31 < uint255(stor12[arg1].field_1):
                    mem[128] = stor12[arg1].field_0
                    idx = 128
                    s = 0
                    while uint255(stor12[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor12[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor12[arg1].field_1)), data=mem[128 len ceil32(uint255(stor12[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
        else:
            if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor12[arg1].field_1 % 128:
                if 31 < stor12[arg1].field_1 % 128:
                    mem[128] = stor12[arg1].field_0
                    idx = 128
                    s = 0
                    while stor12[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor12[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor12[arg1].field_1)), data=mem[128 len ceil32(uint255(stor12[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
        mem[ceil32(uint255(stor12[arg1].field_1)) + 192 len ceil32(uint255(stor12[arg1].field_1))] = mem[128 len ceil32(uint255(stor12[arg1].field_1))]
        if ceil32(uint255(stor12[arg1].field_1)) > uint255(stor12[arg1].field_1):
            mem[ceil32(uint255(stor12[arg1].field_1)) + uint255(stor12[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor12[arg1].field_1)), data=mem[128 len ceil32(uint255(stor12[arg1].field_1))], mem[(2 * ceil32(uint255(stor12[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor12[arg1].field_1))]), 
    if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor12[arg1].field_0):
        if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor12[arg1].field_1):
            if 31 < uint255(stor12[arg1].field_1):
                mem[128] = stor12[arg1].field_0
                idx = 128
                s = 0
                while uint255(stor12[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor12[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12[arg1].field_0 % 128, data=mem[128 len ceil32(stor12[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
    else:
        if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor12[arg1].field_1 % 128:
            if 31 < stor12[arg1].field_1 % 128:
                mem[128] = stor12[arg1].field_0
                idx = 128
                s = 0
                while stor12[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor12[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12[arg1].field_0 % 128, data=mem[128 len ceil32(stor12[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
    mem[ceil32(stor12[arg1].field_1 % 128) + 192 len ceil32(stor12[arg1].field_1 % 128)] = mem[128 len ceil32(stor12[arg1].field_1 % 128)]
    if ceil32(stor12[arg1].field_1 % 128) > stor12[arg1].field_1 % 128:
        mem[ceil32(stor12[arg1].field_1 % 128) + stor12[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor12[arg1].field_0 % 128, data=mem[128 len ceil32(stor12[arg1].field_1 % 128)], mem[(2 * ceil32(stor12[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor12[arg1].field_1 % 128)]), 
}

function sub_26aa1e4a(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] <= test266151307()
        require cd[4] + cd[idx] + 67 < calldata.size
        if cd[(cd[4] + cd[idx] + 36)] > test266151307():
            revert with 'NH{q', 65
        _149 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1
        mem[_149] = cd[(cd[4] + cd[idx] + 36)]
        require cd[4] + cd[idx] + cd[(cd[4] + cd[idx] + 36)] + 68 <= calldata.size
        mem[_149 + 32 len cd[(cd[4] + cd[idx] + 36)]] = call.data[cd[4] + cd[idx] + 68 len cd[(cd[4] + cd[idx] + 36)]]
        mem[_149 + cd[(cd[4] + cd[idx] + 36)] + 32] = 0
        mem[s] = _149
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _290 = mem[96]
    idx = 0
    while idx < _290:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _292 = mem[(32 * idx) + 128]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        stor13 = stor11
        stor11++
        _294 = mem[64]
        mem[64] = mem[64] + 32
        mem[_294] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor13]:
            revert with 0, 'ERC721: token already minted'
        stor10[stor13] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor13
        if msg.sender:
            tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = stor13
            stor8[stor13] = balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor13
            mem[32] = 3
            ownerOf[stor13] = msg.sender
            emit Transfer(0, msg.sender, stor13);
            if ext_code.size(msg.sender) <= 0:
                mem[0] = stor13
                mem[32] = 12
                _323 = mem[_292]
                if bool(stor12[stor13].field_0):
                    if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(stor13, 12)
                    if not _323:
                        stor12[stor13].field_0 = 0
                        s = sha3(sha3(stor13, 12))
                        while sha3(sha3(stor13, 12)) + (uint255(stor12[stor13].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            _290 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        stor12[stor13].field_0 = (2 * _323) + 1
                        t = sha3(sha3(stor13, 12))
                        s = _292 + 32
                        while _292 + _323 + 32 > s:
                            stor[t] = mem[s]
                            _290 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor13, 12)) + (Mask(251, 0, _323 + 31) >> 5)
                        while sha3(sha3(stor13, 12)) + (uint255(stor12[stor13].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            _290 = mem[96]
                            s = s + 1
                            continue 
                else:
                    if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(stor13, 12)
                    if not _323:
                        stor12[stor13].field_0 = 0
                        s = sha3(sha3(stor13, 12))
                        while sha3(sha3(stor13, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            _290 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        stor12[stor13].field_0 = (2 * _323) + 1
                        t = sha3(sha3(stor13, 12))
                        s = _292 + 32
                        while _292 + _323 + 32 > s:
                            stor[t] = mem[s]
                            _290 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor13, 12)) + (Mask(251, 0, _323 + 31) >> 5)
                        while sha3(sha3(stor13, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            _290 = mem[96]
                            s = s + 1
                            continue 
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor13
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_294 + s + 32]
                    _290 = mem[96]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor13, 128, 0
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
                _441 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_441] == Mask(32, 224, mem[_441])
                if Mask(32, 224, mem[_441]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                mem[0] = stor13
                mem[32] = 12
                _490 = mem[_292]
                if bool(stor12[stor13].field_0):
                    if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(stor13, 12)
                    if not _490:
                        stor12[stor13].field_0 = 0
                        s = sha3(sha3(stor13, 12))
                        while sha3(sha3(stor13, 12)) + (uint255(stor12[stor13].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            _290 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        stor12[stor13].field_0 = (2 * _490) + 1
                        t = sha3(sha3(stor13, 12))
                        s = _292 + 32
                        while _292 + _490 + 32 > s:
                            stor[t] = mem[s]
                            _290 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor13, 12)) + (Mask(251, 0, _490 + 31) >> 5)
                        while sha3(sha3(stor13, 12)) + (uint255(stor12[stor13].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            _290 = mem[96]
                            s = s + 1
                            continue 
                else:
                    if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(stor13, 12)
                    if not _490:
                        stor12[stor13].field_0 = 0
                        s = sha3(sha3(stor13, 12))
                        while sha3(sha3(stor13, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            _290 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        stor12[stor13].field_0 = (2 * _490) + 1
                        t = sha3(sha3(stor13, 12))
                        s = _292 + 32
                        while _292 + _490 + 32 > s:
                            stor[t] = mem[s]
                            _290 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor13, 12)) + (Mask(251, 0, _490 + 31) >> 5)
                        while sha3(sha3(stor13, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            _290 = mem[96]
                            s = s + 1
                            continue 
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor10[stor13] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor10[stor13]] = tokenByIndex[tokenByIndex.length]
            stor10[stor9[stor9.length]] = stor10[stor13]
            stor10[stor13] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor13
            mem[32] = 3
            ownerOf[stor13] = msg.sender
            emit Transfer(0, msg.sender, stor13);
            if ext_code.size(msg.sender) <= 0:
                mem[0] = stor13
                mem[32] = 12
                _327 = mem[_292]
                if bool(stor12[stor13].field_0):
                    if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(stor13, 12)
                    if not _327:
                        stor12[stor13].field_0 = 0
                        s = sha3(sha3(stor13, 12))
                        while sha3(sha3(stor13, 12)) + (uint255(stor12[stor13].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            _290 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        stor12[stor13].field_0 = (2 * _327) + 1
                        t = sha3(sha3(stor13, 12))
                        s = _292 + 32
                        while _292 + _327 + 32 > s:
                            stor[t] = mem[s]
                            _290 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor13, 12)) + (Mask(251, 0, _327 + 31) >> 5)
                        while sha3(sha3(stor13, 12)) + (uint255(stor12[stor13].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            _290 = mem[96]
                            s = s + 1
                            continue 
                else:
                    if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(stor13, 12)
                    if not _327:
                        stor12[stor13].field_0 = 0
                        s = sha3(sha3(stor13, 12))
                        while sha3(sha3(stor13, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            _290 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        stor12[stor13].field_0 = (2 * _327) + 1
                        t = sha3(sha3(stor13, 12))
                        s = _292 + 32
                        while _292 + _327 + 32 > s:
                            stor[t] = mem[s]
                            _290 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor13, 12)) + (Mask(251, 0, _327 + 31) >> 5)
                        while sha3(sha3(stor13, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            _290 = mem[96]
                            s = s + 1
                            continue 
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor13
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_294 + s + 32]
                    _290 = mem[96]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor13, 128, 0
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
                _442 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_442] == Mask(32, 224, mem[_442])
                if Mask(32, 224, mem[_442]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                mem[0] = stor13
                mem[32] = 12
                _492 = mem[_292]
                if bool(stor12[stor13].field_0):
                    if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(stor13, 12)
                    if not _492:
                        stor12[stor13].field_0 = 0
                        s = sha3(sha3(stor13, 12))
                        while sha3(sha3(stor13, 12)) + (uint255(stor12[stor13].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            _290 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        stor12[stor13].field_0 = (2 * _492) + 1
                        t = sha3(sha3(stor13, 12))
                        s = _292 + 32
                        while _292 + _492 + 32 > s:
                            stor[t] = mem[s]
                            _290 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor13, 12)) + (Mask(251, 0, _492 + 31) >> 5)
                        while sha3(sha3(stor13, 12)) + (uint255(stor12[stor13].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            _290 = mem[96]
                            s = s + 1
                            continue 
                else:
                    if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(stor13, 12)
                    if not _492:
                        stor12[stor13].field_0 = 0
                        s = sha3(sha3(stor13, 12))
                        while sha3(sha3(stor13, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            _290 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        stor12[stor13].field_0 = (2 * _492) + 1
                        t = sha3(sha3(stor13, 12))
                        s = _292 + 32
                        while _292 + _492 + 32 > s:
                            stor[t] = mem[s]
                            _290 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor13, 12)) + (Mask(251, 0, _492 + 31) >> 5)
                        while sha3(sha3(stor13, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            _290 = mem[96]
                            s = s + 1
                            continue 
        if idx == -1:
            revert with 'NH{q', 17
        _290 = mem[96]
        idx = idx + 1
        continue 
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
    else:
        if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
            revert with 'NH{q', 65
        else:
            require arg4 + arg4.length + 36 <= calldata.size
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: operator query for nonexistent token'
            else:
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                else:
                    if msg.sender == ownerOf[arg3]:
                        if not ownerOf[arg3]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        else:
                            if ownerOf[arg3] != arg1:
                                revert with 0, 'ERC721: transfer from incorrect owner'
                            else:
                                if not arg2:
                                    revert with 0, 'ERC721: transfer to the zero address'
                                else:
                                    if arg1:
                                        if arg1 == arg2:
                                            if arg2:
                                                if arg2 == arg1:
                                                    approved[arg3] = 0
                                                    if not ownerOf[arg3]:
                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                    else:
                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                        if balanceOf[address(arg1)] < 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            balanceOf[address(arg1)]--
                                                            if balanceOf[address(arg2)] > -2:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                balanceOf[address(arg2)]++
                                                                ownerOf[arg3] = arg2
                                                                emit Transfer(arg1, arg2, arg3);
                                                                if ext_code.size(arg2) <= 0:
                                                                else:
                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                        require ext_code.size(arg2)
                                                                        call arg2.0x150b7a02 with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                        if not ext_call.success:
                                                                            if not return_data.size:
                                                                                if not arg4.length:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with arg4[all]
                                                                            else:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                    else:
                                                                        require ext_code.size(arg2)
                                                                        call arg2.0x150b7a02 with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                        if not ext_call.success:
                                                                            if not return_data.size:
                                                                                if not arg4.length:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with arg4[all]
                                                                            else:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                else:
                                                    if not arg2:
                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                    else:
                                                        tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
                                                        stor8[arg3] = balanceOf[address(arg2)]
                                                        approved[arg3] = 0
                                                        if not ownerOf[arg3]:
                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                        else:
                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                            if balanceOf[address(arg1)] < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                balanceOf[address(arg1)]--
                                                                if balanceOf[address(arg2)] > -2:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    balanceOf[address(arg2)]++
                                                                    ownerOf[arg3] = arg2
                                                                    emit Transfer(arg1, arg2, arg3);
                                                                    if ext_code.size(arg2) <= 0:
                                                                    else:
                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                            require ext_code.size(arg2)
                                                                            call arg2.0x150b7a02 with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                            if not ext_call.success:
                                                                                if not return_data.size:
                                                                                    if not arg4.length:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with arg4[all]
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                        else:
                                                                            require ext_code.size(arg2)
                                                                            call arg2.0x150b7a02 with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                            if not ext_call.success:
                                                                                if not return_data.size:
                                                                                    if not arg4.length:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with arg4[all]
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                            else:
                                                if tokenByIndex.length < 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                        revert with 'NH{q', 50
                                                    else:
                                                        if stor10[arg3] >= tokenByIndex.length:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
                                                            stor10[stor9[stor9.length]] = stor10[arg3]
                                                            stor10[arg3] = 0
                                                            if not tokenByIndex.length:
                                                                revert with 'NH{q', 49
                                                            else:
                                                                tokenByIndex[tokenByIndex.length] = 0
                                                                tokenByIndex.length--
                                                                approved[arg3] = 0
                                                                if not ownerOf[arg3]:
                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                    if balanceOf[address(arg1)] < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg1)]--
                                                                        if balanceOf[address(arg2)] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg2)]++
                                                                            ownerOf[arg3] = arg2
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if ext_code.size(arg2) <= 0:
                                                                            else:
                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                else:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                        else:
                                            if not arg1:
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            else:
                                                if balanceOf[address(arg1)] < 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    if stor8[arg3] == balanceOf[address(arg1)] - 1:
                                                        stor8[arg3] = 0
                                                        tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
                                                        if arg2:
                                                            if arg2 == arg1:
                                                                approved[arg3] = 0
                                                                if not ownerOf[arg3]:
                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                    if balanceOf[address(arg1)] < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg1)]--
                                                                        if balanceOf[address(arg2)] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg2)]++
                                                                            ownerOf[arg3] = arg2
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if ext_code.size(arg2) <= 0:
                                                                            else:
                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                else:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                                else:
                                                                    tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
                                                                    stor8[arg3] = balanceOf[address(arg2)]
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if ext_code.size(arg2) <= 0:
                                                                                else:
                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                    else:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                        else:
                                                            if tokenByIndex.length < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    if stor10[arg3] >= tokenByIndex.length:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                        stor10[stor9[stor9.length]] = stor10[arg3]
                                                                        stor10[arg3] = 0
                                                                        if not tokenByIndex.length:
                                                                            revert with 'NH{q', 49
                                                                        else:
                                                                            tokenByIndex[tokenByIndex.length] = 0
                                                                            tokenByIndex.length--
                                                                            approved[arg3] = 0
                                                                            if not ownerOf[arg3]:
                                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                                if balanceOf[address(arg1)] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg1)]--
                                                                                    if balanceOf[address(arg2)] > -2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg2)]++
                                                                                        ownerOf[arg3] = arg2
                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                        if ext_code.size(arg2) <= 0:
                                                                                        else:
                                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                            else:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                    else:
                                                        tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                                                        stor8[stor7[address(arg1)][stor4[address(arg1)] - 1]] = stor8[arg3]
                                                        stor8[arg3] = 0
                                                        tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
                                                        if arg2:
                                                            if arg2 == arg1:
                                                                approved[arg3] = 0
                                                                if not ownerOf[arg3]:
                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                    if balanceOf[address(arg1)] < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg1)]--
                                                                        if balanceOf[address(arg2)] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg2)]++
                                                                            ownerOf[arg3] = arg2
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if ext_code.size(arg2) <= 0:
                                                                            else:
                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                else:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                                else:
                                                                    tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
                                                                    stor8[arg3] = balanceOf[address(arg2)]
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if ext_code.size(arg2) <= 0:
                                                                                else:
                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                    else:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                        else:
                                                            if tokenByIndex.length < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    if stor10[arg3] >= tokenByIndex.length:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                        stor10[stor9[stor9.length]] = stor10[arg3]
                                                                        stor10[arg3] = 0
                                                                        if not tokenByIndex.length:
                                                                            revert with 'NH{q', 49
                                                                        else:
                                                                            tokenByIndex[tokenByIndex.length] = 0
                                                                            tokenByIndex.length--
                                                                            approved[arg3] = 0
                                                                            if not ownerOf[arg3]:
                                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                                if balanceOf[address(arg1)] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg1)]--
                                                                                    if balanceOf[address(arg2)] > -2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg2)]++
                                                                                        ownerOf[arg3] = arg2
                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                        if ext_code.size(arg2) <= 0:
                                                                                        else:
                                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                            else:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                    else:
                                        stor10[arg3] = tokenByIndex.length
                                        tokenByIndex.length++
                                        tokenByIndex[tokenByIndex.length] = arg3
                                        if arg2:
                                            if arg2 == arg1:
                                                approved[arg3] = 0
                                                if not ownerOf[arg3]:
                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                else:
                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                    if balanceOf[address(arg1)] < 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        balanceOf[address(arg1)]--
                                                        if balanceOf[address(arg2)] > -2:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            balanceOf[address(arg2)]++
                                                            ownerOf[arg3] = arg2
                                                            emit Transfer(arg1, arg2, arg3);
                                                            if ext_code.size(arg2) <= 0:
                                                            else:
                                                                if ceil32(arg4.length) <= arg4.length:
                                                                    require ext_code.size(arg2)
                                                                    call arg2.0x150b7a02 with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                    if not ext_call.success:
                                                                        if not return_data.size:
                                                                            if not arg4.length:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                revert with arg4[all]
                                                                        else:
                                                                            if not return_data.size:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        else:
                                                                else:
                                                                    require ext_code.size(arg2)
                                                                    call arg2.0x150b7a02 with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                    if not ext_call.success:
                                                                        if not return_data.size:
                                                                            if not arg4.length:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                revert with arg4[all]
                                                                        else:
                                                                            if not return_data.size:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        else:
                                            else:
                                                if not arg2:
                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                else:
                                                    tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
                                                    stor8[arg3] = balanceOf[address(arg2)]
                                                    approved[arg3] = 0
                                                    if not ownerOf[arg3]:
                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                    else:
                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                        if balanceOf[address(arg1)] < 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            balanceOf[address(arg1)]--
                                                            if balanceOf[address(arg2)] > -2:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                balanceOf[address(arg2)]++
                                                                ownerOf[arg3] = arg2
                                                                emit Transfer(arg1, arg2, arg3);
                                                                if ext_code.size(arg2) <= 0:
                                                                else:
                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                        require ext_code.size(arg2)
                                                                        call arg2.0x150b7a02 with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                        if not ext_call.success:
                                                                            if not return_data.size:
                                                                                if not arg4.length:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with arg4[all]
                                                                            else:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                    else:
                                                                        require ext_code.size(arg2)
                                                                        call arg2.0x150b7a02 with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                        if not ext_call.success:
                                                                            if not return_data.size:
                                                                                if not arg4.length:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with arg4[all]
                                                                            else:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                        else:
                                            if tokenByIndex.length < 1:
                                                revert with 'NH{q', 17
                                            else:
                                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                    revert with 'NH{q', 50
                                                else:
                                                    if stor10[arg3] >= tokenByIndex.length:
                                                        revert with 'NH{q', 50
                                                    else:
                                                        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
                                                        stor10[stor9[stor9.length]] = stor10[arg3]
                                                        stor10[arg3] = 0
                                                        if not tokenByIndex.length:
                                                            revert with 'NH{q', 49
                                                        else:
                                                            tokenByIndex[tokenByIndex.length] = 0
                                                            tokenByIndex.length--
                                                            approved[arg3] = 0
                                                            if not ownerOf[arg3]:
                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                            else:
                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                if balanceOf[address(arg1)] < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    balanceOf[address(arg1)]--
                                                                    if balanceOf[address(arg2)] > -2:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg2)]++
                                                                        ownerOf[arg3] = arg2
                                                                        emit Transfer(arg1, arg2, arg3);
                                                                        if ext_code.size(arg2) <= 0:
                                                                        else:
                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                require ext_code.size(arg2)
                                                                                call arg2.0x150b7a02 with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        if not arg4.length:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with arg4[all]
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                            else:
                                                                                require ext_code.size(arg2)
                                                                                call arg2.0x150b7a02 with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        if not arg4.length:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with arg4[all]
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                    else:
                        if not ownerOf[arg3]:
                            revert with 0, 'ERC721: approved query for nonexistent token'
                        else:
                            if approved[arg3] == msg.sender:
                                if not ownerOf[arg3]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                else:
                                    if ownerOf[arg3] != arg1:
                                        revert with 0, 'ERC721: transfer from incorrect owner'
                                    else:
                                        if not arg2:
                                            revert with 0, 'ERC721: transfer to the zero address'
                                        else:
                                            if arg1:
                                                if arg1 == arg2:
                                                    if arg2:
                                                        if arg2 == arg1:
                                                            approved[arg3] = 0
                                                            if not ownerOf[arg3]:
                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                            else:
                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                if balanceOf[address(arg1)] < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    balanceOf[address(arg1)]--
                                                                    if balanceOf[address(arg2)] > -2:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg2)]++
                                                                        ownerOf[arg3] = arg2
                                                                        emit Transfer(arg1, arg2, arg3);
                                                                        if ext_code.size(arg2) <= 0:
                                                                        else:
                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                require ext_code.size(arg2)
                                                                                call arg2.0x150b7a02 with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        if not arg4.length:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with arg4[all]
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                            else:
                                                                                require ext_code.size(arg2)
                                                                                call arg2.0x150b7a02 with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        if not arg4.length:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with arg4[all]
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                        else:
                                                            if not arg2:
                                                                revert with 0, 'ERC721: balance query for the zero address'
                                                            else:
                                                                tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
                                                                stor8[arg3] = balanceOf[address(arg2)]
                                                                approved[arg3] = 0
                                                                if not ownerOf[arg3]:
                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                    if balanceOf[address(arg1)] < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg1)]--
                                                                        if balanceOf[address(arg2)] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg2)]++
                                                                            ownerOf[arg3] = arg2
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if ext_code.size(arg2) <= 0:
                                                                            else:
                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                else:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                    else:
                                                        if tokenByIndex.length < 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                if stor10[arg3] >= tokenByIndex.length:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                    stor10[stor9[stor9.length]] = stor10[arg3]
                                                                    stor10[arg3] = 0
                                                                    if not tokenByIndex.length:
                                                                        revert with 'NH{q', 49
                                                                    else:
                                                                        tokenByIndex[tokenByIndex.length] = 0
                                                                        tokenByIndex.length--
                                                                        approved[arg3] = 0
                                                                        if not ownerOf[arg3]:
                                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                                        else:
                                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                                            if balanceOf[address(arg1)] < 1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg1)]--
                                                                                if balanceOf[address(arg2)] > -2:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg2)]++
                                                                                    ownerOf[arg3] = arg2
                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                    if ext_code.size(arg2) <= 0:
                                                                                    else:
                                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.0x150b7a02 with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                        else:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.0x150b7a02 with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                else:
                                                    if not arg1:
                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                    else:
                                                        if balanceOf[address(arg1)] < 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            if stor8[arg3] == balanceOf[address(arg1)] - 1:
                                                                stor8[arg3] = 0
                                                                tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
                                                                if arg2:
                                                                    if arg2 == arg1:
                                                                        approved[arg3] = 0
                                                                        if not ownerOf[arg3]:
                                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                                        else:
                                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                                            if balanceOf[address(arg1)] < 1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg1)]--
                                                                                if balanceOf[address(arg2)] > -2:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg2)]++
                                                                                    ownerOf[arg3] = arg2
                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                    if ext_code.size(arg2) <= 0:
                                                                                    else:
                                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.0x150b7a02 with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                        else:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.0x150b7a02 with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                    else:
                                                                        if not arg2:
                                                                            revert with 0, 'ERC721: balance query for the zero address'
                                                                        else:
                                                                            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
                                                                            stor8[arg3] = balanceOf[address(arg2)]
                                                                            approved[arg3] = 0
                                                                            if not ownerOf[arg3]:
                                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                                if balanceOf[address(arg1)] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg1)]--
                                                                                    if balanceOf[address(arg2)] > -2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg2)]++
                                                                                        ownerOf[arg3] = arg2
                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                        if ext_code.size(arg2) <= 0:
                                                                                        else:
                                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                            else:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                else:
                                                                    if tokenByIndex.length < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            if stor10[arg3] >= tokenByIndex.length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                                stor10[stor9[stor9.length]] = stor10[arg3]
                                                                                stor10[arg3] = 0
                                                                                if not tokenByIndex.length:
                                                                                    revert with 'NH{q', 49
                                                                                else:
                                                                                    tokenByIndex[tokenByIndex.length] = 0
                                                                                    tokenByIndex.length--
                                                                                    approved[arg3] = 0
                                                                                    if not ownerOf[arg3]:
                                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                    else:
                                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                                        if balanceOf[address(arg1)] < 1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg1)]--
                                                                                            if balanceOf[address(arg2)] > -2:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                balanceOf[address(arg2)]++
                                                                                                ownerOf[arg3] = arg2
                                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                                if ext_code.size(arg2) <= 0:
                                                                                                else:
                                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                                        require ext_code.size(arg2)
                                                                                                        call arg2.0x150b7a02 with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                        if not ext_call.success:
                                                                                                            if not return_data.size:
                                                                                                                if not arg4.length:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with arg4[all]
                                                                                                            else:
                                                                                                                if not return_data.size:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                    else:
                                                                                                        require ext_code.size(arg2)
                                                                                                        call arg2.0x150b7a02 with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                        if not ext_call.success:
                                                                                                            if not return_data.size:
                                                                                                                if not arg4.length:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with arg4[all]
                                                                                                            else:
                                                                                                                if not return_data.size:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                            else:
                                                                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                                                                stor8[stor7[address(arg1)][stor4[address(arg1)] - 1]] = stor8[arg3]
                                                                stor8[arg3] = 0
                                                                tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
                                                                if arg2:
                                                                    if arg2 == arg1:
                                                                        approved[arg3] = 0
                                                                        if not ownerOf[arg3]:
                                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                                        else:
                                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                                            if balanceOf[address(arg1)] < 1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg1)]--
                                                                                if balanceOf[address(arg2)] > -2:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg2)]++
                                                                                    ownerOf[arg3] = arg2
                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                    if ext_code.size(arg2) <= 0:
                                                                                    else:
                                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.0x150b7a02 with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                        else:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.0x150b7a02 with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                    else:
                                                                        if not arg2:
                                                                            revert with 0, 'ERC721: balance query for the zero address'
                                                                        else:
                                                                            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
                                                                            stor8[arg3] = balanceOf[address(arg2)]
                                                                            approved[arg3] = 0
                                                                            if not ownerOf[arg3]:
                                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                                if balanceOf[address(arg1)] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg1)]--
                                                                                    if balanceOf[address(arg2)] > -2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg2)]++
                                                                                        ownerOf[arg3] = arg2
                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                        if ext_code.size(arg2) <= 0:
                                                                                        else:
                                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                            else:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                else:
                                                                    if tokenByIndex.length < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            if stor10[arg3] >= tokenByIndex.length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                                stor10[stor9[stor9.length]] = stor10[arg3]
                                                                                stor10[arg3] = 0
                                                                                if not tokenByIndex.length:
                                                                                    revert with 'NH{q', 49
                                                                                else:
                                                                                    tokenByIndex[tokenByIndex.length] = 0
                                                                                    tokenByIndex.length--
                                                                                    approved[arg3] = 0
                                                                                    if not ownerOf[arg3]:
                                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                    else:
                                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                                        if balanceOf[address(arg1)] < 1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg1)]--
                                                                                            if balanceOf[address(arg2)] > -2:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                balanceOf[address(arg2)]++
                                                                                                ownerOf[arg3] = arg2
                                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                                if ext_code.size(arg2) <= 0:
                                                                                                else:
                                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                                        require ext_code.size(arg2)
                                                                                                        call arg2.0x150b7a02 with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                        if not ext_call.success:
                                                                                                            if not return_data.size:
                                                                                                                if not arg4.length:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with arg4[all]
                                                                                                            else:
                                                                                                                if not return_data.size:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                    else:
                                                                                                        require ext_code.size(arg2)
                                                                                                        call arg2.0x150b7a02 with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                        if not ext_call.success:
                                                                                                            if not return_data.size:
                                                                                                                if not arg4.length:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with arg4[all]
                                                                                                            else:
                                                                                                                if not return_data.size:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                            else:
                                                stor10[arg3] = tokenByIndex.length
                                                tokenByIndex.length++
                                                tokenByIndex[tokenByIndex.length] = arg3
                                                if arg2:
                                                    if arg2 == arg1:
                                                        approved[arg3] = 0
                                                        if not ownerOf[arg3]:
                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                        else:
                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                            if balanceOf[address(arg1)] < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                balanceOf[address(arg1)]--
                                                                if balanceOf[address(arg2)] > -2:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    balanceOf[address(arg2)]++
                                                                    ownerOf[arg3] = arg2
                                                                    emit Transfer(arg1, arg2, arg3);
                                                                    if ext_code.size(arg2) <= 0:
                                                                    else:
                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                            require ext_code.size(arg2)
                                                                            call arg2.0x150b7a02 with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                            if not ext_call.success:
                                                                                if not return_data.size:
                                                                                    if not arg4.length:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with arg4[all]
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                        else:
                                                                            require ext_code.size(arg2)
                                                                            call arg2.0x150b7a02 with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                            if not ext_call.success:
                                                                                if not return_data.size:
                                                                                    if not arg4.length:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with arg4[all]
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                    else:
                                                        if not arg2:
                                                            revert with 0, 'ERC721: balance query for the zero address'
                                                        else:
                                                            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
                                                            stor8[arg3] = balanceOf[address(arg2)]
                                                            approved[arg3] = 0
                                                            if not ownerOf[arg3]:
                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                            else:
                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                if balanceOf[address(arg1)] < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    balanceOf[address(arg1)]--
                                                                    if balanceOf[address(arg2)] > -2:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg2)]++
                                                                        ownerOf[arg3] = arg2
                                                                        emit Transfer(arg1, arg2, arg3);
                                                                        if ext_code.size(arg2) <= 0:
                                                                        else:
                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                require ext_code.size(arg2)
                                                                                call arg2.0x150b7a02 with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        if not arg4.length:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with arg4[all]
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                            else:
                                                                                require ext_code.size(arg2)
                                                                                call arg2.0x150b7a02 with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        if not arg4.length:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with arg4[all]
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                else:
                                                    if tokenByIndex.length < 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            if stor10[arg3] >= tokenByIndex.length:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                stor10[stor9[stor9.length]] = stor10[arg3]
                                                                stor10[arg3] = 0
                                                                if not tokenByIndex.length:
                                                                    revert with 'NH{q', 49
                                                                else:
                                                                    tokenByIndex[tokenByIndex.length] = 0
                                                                    tokenByIndex.length--
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if ext_code.size(arg2) <= 0:
                                                                                else:
                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                    else:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                            else:
                                if not stor6[stor3[arg3]][address(msg.sender)]:
                                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                                else:
                                    if not ownerOf[arg3]:
                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                    else:
                                        if ownerOf[arg3] != arg1:
                                            revert with 0, 'ERC721: transfer from incorrect owner'
                                        else:
                                            if not arg2:
                                                revert with 0, 'ERC721: transfer to the zero address'
                                            else:
                                                if arg1:
                                                    if arg1 == arg2:
                                                        if arg2:
                                                            if arg2 == arg1:
                                                                approved[arg3] = 0
                                                                if not ownerOf[arg3]:
                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                    if balanceOf[address(arg1)] < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg1)]--
                                                                        if balanceOf[address(arg2)] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg2)]++
                                                                            ownerOf[arg3] = arg2
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if ext_code.size(arg2) <= 0:
                                                                            else:
                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                else:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                                else:
                                                                    tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
                                                                    stor8[arg3] = balanceOf[address(arg2)]
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if ext_code.size(arg2) <= 0:
                                                                                else:
                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                    else:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                        else:
                                                            if tokenByIndex.length < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    if stor10[arg3] >= tokenByIndex.length:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                        stor10[stor9[stor9.length]] = stor10[arg3]
                                                                        stor10[arg3] = 0
                                                                        if not tokenByIndex.length:
                                                                            revert with 'NH{q', 49
                                                                        else:
                                                                            tokenByIndex[tokenByIndex.length] = 0
                                                                            tokenByIndex.length--
                                                                            approved[arg3] = 0
                                                                            if not ownerOf[arg3]:
                                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                                if balanceOf[address(arg1)] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg1)]--
                                                                                    if balanceOf[address(arg2)] > -2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg2)]++
                                                                                        ownerOf[arg3] = arg2
                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                        if ext_code.size(arg2) <= 0:
                                                                                        else:
                                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                            else:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                    else:
                                                        if not arg1:
                                                            revert with 0, 'ERC721: balance query for the zero address'
                                                        else:
                                                            if balanceOf[address(arg1)] < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if stor8[arg3] == balanceOf[address(arg1)] - 1:
                                                                    stor8[arg3] = 0
                                                                    tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
                                                                    if arg2:
                                                                        if arg2 == arg1:
                                                                            approved[arg3] = 0
                                                                            if not ownerOf[arg3]:
                                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                                if balanceOf[address(arg1)] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg1)]--
                                                                                    if balanceOf[address(arg2)] > -2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg2)]++
                                                                                        ownerOf[arg3] = arg2
                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                        if ext_code.size(arg2) <= 0:
                                                                                        else:
                                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                            else:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                        else:
                                                                            if not arg2:
                                                                                revert with 0, 'ERC721: balance query for the zero address'
                                                                            else:
                                                                                tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
                                                                                stor8[arg3] = balanceOf[address(arg2)]
                                                                                approved[arg3] = 0
                                                                                if not ownerOf[arg3]:
                                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                                    if balanceOf[address(arg1)] < 1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg1)]--
                                                                                        if balanceOf[address(arg2)] > -2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg2)]++
                                                                                            ownerOf[arg3] = arg2
                                                                                            emit Transfer(arg1, arg2, arg3);
                                                                                            if ext_code.size(arg2) <= 0:
                                                                                            else:
                                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.0x150b7a02 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                else:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.0x150b7a02 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                    else:
                                                                        if tokenByIndex.length < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                if stor10[arg3] >= tokenByIndex.length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                                    stor10[stor9[stor9.length]] = stor10[arg3]
                                                                                    stor10[arg3] = 0
                                                                                    if not tokenByIndex.length:
                                                                                        revert with 'NH{q', 49
                                                                                    else:
                                                                                        tokenByIndex[tokenByIndex.length] = 0
                                                                                        tokenByIndex.length--
                                                                                        approved[arg3] = 0
                                                                                        if not ownerOf[arg3]:
                                                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                        else:
                                                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                                                            if balanceOf[address(arg1)] < 1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                balanceOf[address(arg1)]--
                                                                                                if balanceOf[address(arg2)] > -2:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    balanceOf[address(arg2)]++
                                                                                                    ownerOf[arg3] = arg2
                                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                                    if ext_code.size(arg2) <= 0:
                                                                                                    else:
                                                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                                                            require ext_code.size(arg2)
                                                                                                            call arg2.0x150b7a02 with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                            if not ext_call.success:
                                                                                                                if not return_data.size:
                                                                                                                    if not arg4.length:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with arg4[all]
                                                                                                                else:
                                                                                                                    if not return_data.size:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                        else:
                                                                                                            require ext_code.size(arg2)
                                                                                                            call arg2.0x150b7a02 with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                            if not ext_call.success:
                                                                                                                if not return_data.size:
                                                                                                                    if not arg4.length:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with arg4[all]
                                                                                                                else:
                                                                                                                    if not return_data.size:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                else:
                                                                    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                                                                    stor8[stor7[address(arg1)][stor4[address(arg1)] - 1]] = stor8[arg3]
                                                                    stor8[arg3] = 0
                                                                    tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
                                                                    if arg2:
                                                                        if arg2 == arg1:
                                                                            approved[arg3] = 0
                                                                            if not ownerOf[arg3]:
                                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                                if balanceOf[address(arg1)] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg1)]--
                                                                                    if balanceOf[address(arg2)] > -2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg2)]++
                                                                                        ownerOf[arg3] = arg2
                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                        if ext_code.size(arg2) <= 0:
                                                                                        else:
                                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                            else:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                        else:
                                                                            if not arg2:
                                                                                revert with 0, 'ERC721: balance query for the zero address'
                                                                            else:
                                                                                tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
                                                                                stor8[arg3] = balanceOf[address(arg2)]
                                                                                approved[arg3] = 0
                                                                                if not ownerOf[arg3]:
                                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                                    if balanceOf[address(arg1)] < 1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg1)]--
                                                                                        if balanceOf[address(arg2)] > -2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg2)]++
                                                                                            ownerOf[arg3] = arg2
                                                                                            emit Transfer(arg1, arg2, arg3);
                                                                                            if ext_code.size(arg2) <= 0:
                                                                                            else:
                                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.0x150b7a02 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                else:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.0x150b7a02 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                    else:
                                                                        if tokenByIndex.length < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                if stor10[arg3] >= tokenByIndex.length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                                    stor10[stor9[stor9.length]] = stor10[arg3]
                                                                                    stor10[arg3] = 0
                                                                                    if not tokenByIndex.length:
                                                                                        revert with 'NH{q', 49
                                                                                    else:
                                                                                        tokenByIndex[tokenByIndex.length] = 0
                                                                                        tokenByIndex.length--
                                                                                        approved[arg3] = 0
                                                                                        if not ownerOf[arg3]:
                                                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                        else:
                                                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                                                            if balanceOf[address(arg1)] < 1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                balanceOf[address(arg1)]--
                                                                                                if balanceOf[address(arg2)] > -2:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    balanceOf[address(arg2)]++
                                                                                                    ownerOf[arg3] = arg2
                                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                                    if ext_code.size(arg2) <= 0:
                                                                                                    else:
                                                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                                                            require ext_code.size(arg2)
                                                                                                            call arg2.0x150b7a02 with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                            if not ext_call.success:
                                                                                                                if not return_data.size:
                                                                                                                    if not arg4.length:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with arg4[all]
                                                                                                                else:
                                                                                                                    if not return_data.size:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                        else:
                                                                                                            require ext_code.size(arg2)
                                                                                                            call arg2.0x150b7a02 with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                            if not ext_call.success:
                                                                                                                if not return_data.size:
                                                                                                                    if not arg4.length:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with arg4[all]
                                                                                                                else:
                                                                                                                    if not return_data.size:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                else:
                                                    stor10[arg3] = tokenByIndex.length
                                                    tokenByIndex.length++
                                                    tokenByIndex[tokenByIndex.length] = arg3
                                                    if arg2:
                                                        if arg2 == arg1:
                                                            approved[arg3] = 0
                                                            if not ownerOf[arg3]:
                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                            else:
                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                if balanceOf[address(arg1)] < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    balanceOf[address(arg1)]--
                                                                    if balanceOf[address(arg2)] > -2:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg2)]++
                                                                        ownerOf[arg3] = arg2
                                                                        emit Transfer(arg1, arg2, arg3);
                                                                        if ext_code.size(arg2) <= 0:
                                                                        else:
                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                require ext_code.size(arg2)
                                                                                call arg2.0x150b7a02 with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        if not arg4.length:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with arg4[all]
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                            else:
                                                                                require ext_code.size(arg2)
                                                                                call arg2.0x150b7a02 with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        if not arg4.length:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with arg4[all]
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                        else:
                                                            if not arg2:
                                                                revert with 0, 'ERC721: balance query for the zero address'
                                                            else:
                                                                tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
                                                                stor8[arg3] = balanceOf[address(arg2)]
                                                                approved[arg3] = 0
                                                                if not ownerOf[arg3]:
                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                    if balanceOf[address(arg1)] < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg1)]--
                                                                        if balanceOf[address(arg2)] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg2)]++
                                                                            ownerOf[arg3] = arg2
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if ext_code.size(arg2) <= 0:
                                                                            else:
                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                else:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                    else:
                                                        if tokenByIndex.length < 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                if stor10[arg3] >= tokenByIndex.length:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                    stor10[stor9[stor9.length]] = stor10[arg3]
                                                                    stor10[arg3] = 0
                                                                    if not tokenByIndex.length:
                                                                        revert with 'NH{q', 49
                                                                    else:
                                                                        tokenByIndex[tokenByIndex.length] = 0
                                                                        tokenByIndex.length--
                                                                        approved[arg3] = 0
                                                                        if not ownerOf[arg3]:
                                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                                        else:
                                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                                            if balanceOf[address(arg1)] < 1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg1)]--
                                                                                if balanceOf[address(arg2)] > -2:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg2)]++
                                                                                    ownerOf[arg3] = arg2
                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                    if ext_code.size(arg2) <= 0:
                                                                                    else:
                                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.0x150b7a02 with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                        else:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.0x150b7a02 with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
}



}
