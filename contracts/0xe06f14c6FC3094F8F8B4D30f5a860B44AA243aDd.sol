contract main {




// =====================  Runtime code  =====================


#
#  - sub_fb2d6169(?)
#
address owner;
address implementationAddress;
address sub_df20f47aAddress;
uint256 sub_fec146a2;
array of struct stor52;
array of struct stor53;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor57;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor59;
array of uint256 tokenByIndex;
mapping of uint256 stor61;

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

function getImplementation() payable {
    return implementationAddress
}

function sub_df20f47a(?) payable {
    return sub_df20f47aAddress
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor57[address(arg1)][address(arg2)])
}

function sub_fec146a2(?) payable {
    return sub_fec146a2
}

function _fallback() payable {
    revert
}

function checkStorage() payable {
    if sub_fec146a2 != 123456:
        return 0
    return 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function upgrade(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    implementationAddress = arg1
}

function setMarketAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_df20f47aAddress = arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor57[address(msg.sender)][address(arg1)] = uint8(arg2)
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
        if not stor57[stor54[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
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
            if not stor57[stor54[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if sub_fec146a2 != 123456:
        revert with 0, 'Storage error'
    if not arg1:
        stor61[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor59[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor59[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor55[address(arg1)] - 1]
                stor59[stor58[address(arg1)][stor55[address(arg1)] - 1]] = stor59[arg3]
            stor59[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor55[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor55[address(arg2)]] = arg3
            stor59[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor61[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor61[arg3]] = tokenByIndex[tokenByIndex.length]
        stor61[stor60[stor60.length]] = stor61[arg3]
        stor61[arg3] = 0
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
    if bool(stor52.length):
        if bool(stor52.length) == stor52.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor52.length):
            if bool(stor52.length) == stor52.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor52.length.field_1:
                if 31 < stor52.length.field_1:
                    mem[128] = uint256(stor52.field_0)
                    idx = 128
                    s = 0
                    while stor52.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor52[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor52.length.field_1), data=mem[128 len ceil32(stor52.length.field_1)])
                mem[128] = 256 * stor52.length.field_8
        else:
            if bool(stor52.length) == stor52.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor52.length.field_1:
                if 31 < stor52.length.field_1:
                    mem[128] = uint256(stor52.field_0)
                    idx = 128
                    s = 0
                    while stor52.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor52[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor52.length.field_1), data=mem[128 len ceil32(stor52.length.field_1)])
                mem[128] = 256 * stor52.length.field_8
        mem[ceil32(stor52.length.field_1) + 192 len ceil32(stor52.length.field_1)] = mem[128 len ceil32(stor52.length.field_1)]
        if ceil32(stor52.length.field_1) > stor52.length.field_1:
            mem[ceil32(stor52.length.field_1) + stor52.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor52.length.field_1), data=mem[128 len ceil32(stor52.length.field_1)], mem[(2 * ceil32(stor52.length.field_1)) + 192 len 2 * ceil32(stor52.length.field_1)]), 
    if bool(stor52.length) == stor52.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor52.length):
        if bool(stor52.length) == stor52.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor52.length.field_1:
            if 31 < stor52.length.field_1:
                mem[128] = uint256(stor52.field_0)
                idx = 128
                s = 0
                while stor52.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor52[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor52.length % 128, data=mem[128 len ceil32(stor52.length.field_1)])
            mem[128] = 256 * stor52.length.field_8
    else:
        if bool(stor52.length) == stor52.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor52.length.field_1:
            if 31 < stor52.length.field_1:
                mem[128] = uint256(stor52.field_0)
                idx = 128
                s = 0
                while stor52.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor52[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor52.length % 128, data=mem[128 len ceil32(stor52.length.field_1)])
            mem[128] = 256 * stor52.length.field_8
    mem[ceil32(stor52.length.field_1) + 192 len ceil32(stor52.length.field_1)] = mem[128 len ceil32(stor52.length.field_1)]
    if ceil32(stor52.length.field_1) > stor52.length.field_1:
        mem[ceil32(stor52.length.field_1) + stor52.length.field_1 + 192] = 0
    return Array(len=stor52.length % 128, data=mem[128 len ceil32(stor52.length.field_1)], mem[(2 * ceil32(stor52.length.field_1)) + 192 len 2 * ceil32(stor52.length.field_1)]), 
}

function symbol() payable {
    if bool(stor53.length):
        if bool(stor53.length) == stor53.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor53.length):
            if bool(stor53.length) == stor53.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor53.length.field_1:
                if 31 < stor53.length.field_1:
                    mem[128] = uint256(stor53.field_0)
                    idx = 128
                    s = 0
                    while stor53.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor53[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor53.length.field_1), data=mem[128 len ceil32(stor53.length.field_1)])
                mem[128] = 256 * stor53.length.field_8
        else:
            if bool(stor53.length) == stor53.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor53.length.field_1:
                if 31 < stor53.length.field_1:
                    mem[128] = uint256(stor53.field_0)
                    idx = 128
                    s = 0
                    while stor53.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor53[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor53.length.field_1), data=mem[128 len ceil32(stor53.length.field_1)])
                mem[128] = 256 * stor53.length.field_8
        mem[ceil32(stor53.length.field_1) + 192 len ceil32(stor53.length.field_1)] = mem[128 len ceil32(stor53.length.field_1)]
        if ceil32(stor53.length.field_1) > stor53.length.field_1:
            mem[ceil32(stor53.length.field_1) + stor53.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor53.length.field_1), data=mem[128 len ceil32(stor53.length.field_1)], mem[(2 * ceil32(stor53.length.field_1)) + 192 len 2 * ceil32(stor53.length.field_1)]), 
    if bool(stor53.length) == stor53.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor53.length):
        if bool(stor53.length) == stor53.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor53.length.field_1:
            if 31 < stor53.length.field_1:
                mem[128] = uint256(stor53.field_0)
                idx = 128
                s = 0
                while stor53.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor53[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor53.length % 128, data=mem[128 len ceil32(stor53.length.field_1)])
            mem[128] = 256 * stor53.length.field_8
    else:
        if bool(stor53.length) == stor53.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor53.length.field_1:
            if 31 < stor53.length.field_1:
                mem[128] = uint256(stor53.field_0)
                idx = 128
                s = 0
                while stor53.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor53[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor53.length % 128, data=mem[128 len ceil32(stor53.length.field_1)])
            mem[128] = 256 * stor53.length.field_8
    mem[ceil32(stor53.length.field_1) + 192 len ceil32(stor53.length.field_1)] = mem[128 len ceil32(stor53.length.field_1)]
    if ceil32(stor53.length.field_1) > stor53.length.field_1:
        mem[ceil32(stor53.length.field_1) + stor53.length.field_1 + 192] = 0
    return Array(len=stor53.length % 128, data=mem[128 len ceil32(stor53.length.field_1)], mem[(2 * ceil32(stor53.length.field_1)) + 192 len 2 * ceil32(stor53.length.field_1)]), 
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
            if not stor57[stor54[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if sub_fec146a2 != 123456:
        revert with 0, 'Storage error'
    if not arg1:
        stor61[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor59[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor59[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor55[address(arg1)] - 1]
                stor59[stor58[address(arg1)][stor55[address(arg1)] - 1]] = stor59[arg3]
            stor59[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor55[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor55[address(arg2)]] = arg3
            stor59[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor61[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor61[arg3]] = tokenByIndex[tokenByIndex.length]
        stor61[stor60[stor60.length]] = stor61[arg3]
        stor61[arg3] = 0
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

function sub_e03e2d02(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not sub_df20f47aAddress:
        revert with 0, 'Market Wallet is not set'
    if sub_df20f47aAddress != msg.sender:
        revert with 0, 'Sender is not market'
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] != address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg2]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] != address(arg1):
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not sub_df20f47aAddress:
        revert with 0, 'ERC721: transfer to the zero address'
    if sub_fec146a2 != 123456:
        revert with 0, 'Storage error'
    if not address(arg1):
        stor61[arg2] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg2
    else:
        if address(arg1) != sub_df20f47aAddress:
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor59[arg2] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor59[arg2]] = tokenOfOwnerByIndex[address(arg1)][stor55[address(arg1)] - 1]
                stor59[stor58[address(arg1)][stor55[address(arg1)] - 1]] = stor59[arg2]
            stor59[arg2] = 0
            tokenOfOwnerByIndex[address(arg1)][stor55[address(arg1)] - 1] = 0
    if sub_df20f47aAddress:
        if sub_df20f47aAddress != address(arg1):
            if not sub_df20f47aAddress:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[stor2][stor55[stor2]] = arg2
            stor59[arg2] = balanceOf[stor2]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor61[arg2] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor61[arg2]] = tokenByIndex[tokenByIndex.length]
        stor61[stor60[stor60.length]] = stor61[arg2]
        stor61[arg2] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg2] = 0
    if not ownerOf[arg2]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], 0, arg2);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[stor2] > -2:
        revert with 'NH{q', 17
    balanceOf[stor2]++
    ownerOf[arg2] = sub_df20f47aAddress
    emit Transfer(address(arg1), sub_df20f47aAddress, arg2);
    if ext_code.size(sub_df20f47aAddress) > 0:
        require ext_code.size(sub_df20f47aAddress)
        call sub_df20f47aAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg2, 128, 0
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
            if not stor57[stor54[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if sub_fec146a2 != 123456:
        revert with 0, 'Storage error'
    if not arg1:
        stor61[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor59[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor59[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor55[address(arg1)] - 1]
                stor59[stor58[address(arg1)][stor55[address(arg1)] - 1]] = stor59[arg3]
            stor59[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor55[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor55[address(arg2)]] = arg3
            stor59[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor61[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor61[arg3]] = tokenByIndex[tokenByIndex.length]
        stor61[stor60[stor60.length]] = stor61[arg3]
        stor61[arg3] = 0
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

function getTokenIds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    mem[96] = balanceOf[address(arg1)]
    mem[64] = (32 * balanceOf[address(arg1)]) + 128
    if not balanceOf[address(arg1)]:
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if var43002 >= var43001:
            mem[(32 * balanceOf[address(arg1)]) + 128] = 32
            mem[(32 * balanceOf[address(arg1)]) + 160] = balanceOf[address(arg1)]
            mem[(32 * balanceOf[address(arg1)]) + 192 len 32 * balanceOf[address(arg1)]] = mem[128 len 32 * balanceOf[address(arg1)]]
            return memory
              from (32 * balanceOf[address(arg1)]) + 128
               len (96 * balanceOf[address(arg1)]) + 64
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if var53003 >= var53001:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = var55002
        mem[32] = sha3(address(arg1), 58)
        if var57002 >= balanceOf[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * var57002) + 128] = var57001
        s = var57002
        t = var57001
        idx = var57002
        while idx != -1:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx + 1 >= balanceOf[address(arg1)]:
                mem[(32 * balanceOf[address(arg1)]) + 128] = 32
                mem[(32 * balanceOf[address(arg1)]) + 160] = balanceOf[address(arg1)]
                idx = 0
                u = 128
                v = (32 * balanceOf[address(arg1)]) + 192
                while idx < balanceOf[address(arg1)]:
                    mem[v] = mem[u]
                    mem[(32 * s) + 128] = t
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from (32 * balanceOf[address(arg1)]) + 128
                   len (96 * balanceOf[address(arg1)]) + 64
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx + 1 >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = idx + 1
            mem[32] = sha3(address(arg1), 58)
            if idx + 1 >= balanceOf[address(arg1)]:
                revert with 'NH{q', 50
            mem[(32 * idx + 2) + 128] = tokenOfOwnerByIndex[address(arg1)][idx + 1]
            s = idx + 1
            t = tokenOfOwnerByIndex[address(arg1)][idx + 1]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if var44002 >= var44001:
            mem[(32 * balanceOf[address(arg1)]) + 128] = 32
            mem[(32 * balanceOf[address(arg1)]) + 160] = balanceOf[address(arg1)]
            mem[(32 * balanceOf[address(arg1)]) + 192 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
            return memory
              from (32 * balanceOf[address(arg1)]) + 128
               len (96 * balanceOf[address(arg1)]) + 64
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if var54003 >= var54001:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = var56002
        mem[32] = sha3(address(arg1), 58)
        if var58002 >= balanceOf[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * var58002) + 128] = var58001
        s = var58002
        t = var58001
        idx = var58002
        while idx != -1:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx + 1 >= balanceOf[address(arg1)]:
                mem[(32 * balanceOf[address(arg1)]) + 128] = 32
                mem[(32 * balanceOf[address(arg1)]) + 160] = balanceOf[address(arg1)]
                idx = 0
                u = 128
                v = (32 * balanceOf[address(arg1)]) + 192
                while idx < balanceOf[address(arg1)]:
                    mem[v] = mem[u]
                    mem[(32 * s) + 128] = t
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from (32 * balanceOf[address(arg1)]) + 128
                   len (96 * balanceOf[address(arg1)]) + 64
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx + 1 >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = idx + 1
            mem[32] = sha3(address(arg1), 58)
            if idx + 1 >= balanceOf[address(arg1)]:
                revert with 'NH{q', 50
            mem[(32 * idx + 2) + 128] = tokenOfOwnerByIndex[address(arg1)][idx + 1]
            s = idx + 1
            t = tokenOfOwnerByIndex[address(arg1)][idx + 1]
            idx = idx + 1
            continue 
    revert with 'NH{q', 17
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 54
    if not ownerOf[arg1]:
        return ''
    mem[96] = 33
    mem[128 len 33] = 0xfe68747470733a2f2f3762616c6c732e6e65742f6d657461646174612f6865726f
    if not arg1:
        mem[288 len 64] = 0xfe68747470733a2f2f3762616c6c732e6e65742f6d657461646174612f6865726f, mem[161 len 31]
        mem[321] = '0'
        mem[322] = 32
        mem[354] = mem[256]
        mem[386 len ceil32(mem[256])] = mem[288 len ceil32(mem[256])]
        if ceil32(mem[256]) > mem[256]:
            mem[mem[256] + 386] = 0
        return Array(len=mem[256], data=mem[386 len ceil32(mem[256])])
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
    mem[192] = s
    mem[64] = ceil32(s) + 224
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[192]:
                revert with 'NH{q', 50
            mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _140 = mem[64]
        _144 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _234 = mem[192]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            if ceil32(_234) <= _234:
                _302 = mem[64]
                mem[64] = mem[64] + mem[96] + _234 + 32
                mem[_140 + mem[96] + _234 + 32] = 32
                _318 = mem[_302]
                mem[_140 + _144 + _234 + 64] = mem[_302]
                mem[_140 + _144 + _234 + 96 len ceil32(_318)] = mem[_302 + 32 len ceil32(_318)]
                if ceil32(_318) > _318:
                    mem[_140 + _144 + _234 + _318 + 96] = 0
                return 32, mem[_140 + _144 + _234 + 64 len ceil32(_318) + 32]
            mem[mem[64] + mem[96] + _234 + 32] = 0
            _306 = mem[64]
            mem[64] = mem[64] + mem[96] + _234 + 32
            mem[_140 + mem[96] + _234 + 32] = 32
            _322 = mem[_306]
            mem[_140 + _144 + _234 + 64] = mem[_306]
            mem[_140 + _144 + _234 + 96 len ceil32(_322)] = mem[_306 + 32 len ceil32(_322)]
            if ceil32(_322) > _322:
                mem[_140 + _144 + _234 + _322 + 96] = 0
            return 32, mem[_140 + _144 + _234 + 64 len ceil32(_322) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _236 = mem[192]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
        if ceil32(_236) <= _236:
            _303 = mem[64]
            mem[64] = mem[64] + mem[96] + _236 + 32
            mem[_140 + mem[96] + _236 + 32] = 32
            _319 = mem[_303]
            mem[_140 + _144 + _236 + 64] = mem[_303]
            mem[_140 + _144 + _236 + 96 len ceil32(_319)] = mem[_303 + 32 len ceil32(_319)]
            if ceil32(_319) > _319:
                mem[_140 + _144 + _236 + _319 + 96] = 0
            return 32, mem[_140 + _144 + _236 + 64 len ceil32(_319) + 32]
        mem[mem[64] + mem[96] + _236 + 32] = 0
        _307 = mem[64]
        mem[64] = mem[64] + mem[96] + _236 + 32
        mem[_140 + mem[96] + _236 + 32] = 32
        _323 = mem[_307]
        mem[_140 + _144 + _236 + 64] = mem[_307]
        mem[_140 + _144 + _236 + 96 len ceil32(_323)] = mem[_307 + 32 len ceil32(_323)]
        if ceil32(_323) > _323:
            mem[_140 + _144 + _236 + _323 + 96] = 0
        return 32, mem[_140 + _144 + _236 + 64 len ceil32(_323) + 32]
    mem[224 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[192]:
            revert with 'NH{q', 50
        mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _141 = mem[64]
    _145 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _235 = mem[192]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
        if ceil32(_235) <= _235:
            _304 = mem[64]
            mem[64] = mem[64] + mem[96] + _235 + 32
            mem[_141 + mem[96] + _235 + 32] = 32
            _320 = mem[_304]
            mem[_141 + _145 + _235 + 64] = mem[_304]
            mem[_141 + _145 + _235 + 96 len ceil32(_320)] = mem[_304 + 32 len ceil32(_320)]
            if ceil32(_320) > _320:
                mem[_141 + _145 + _235 + _320 + 96] = 0
            return 32, mem[_141 + _145 + _235 + 64 len ceil32(_320) + 32]
        mem[mem[64] + mem[96] + _235 + 32] = 0
        _308 = mem[64]
        mem[64] = mem[64] + mem[96] + _235 + 32
        mem[_141 + mem[96] + _235 + 32] = 32
        _324 = mem[_308]
        mem[_141 + _145 + _235 + 64] = mem[_308]
        mem[_141 + _145 + _235 + 96 len ceil32(_324)] = mem[_308 + 32 len ceil32(_324)]
        if ceil32(_324) > _324:
            mem[_141 + _145 + _235 + _324 + 96] = 0
        return 32, mem[_141 + _145 + _235 + 64 len ceil32(_324) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _237 = mem[192]
    mem[mem[64] + mem[96] + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
    if ceil32(_237) <= _237:
        _305 = mem[64]
        mem[64] = mem[64] + mem[96] + _237 + 32
        mem[_141 + mem[96] + _237 + 32] = 32
        _321 = mem[_305]
        mem[_141 + _145 + _237 + 64] = mem[_305]
        mem[_141 + _145 + _237 + 96 len ceil32(_321)] = mem[_305 + 32 len ceil32(_321)]
        if ceil32(_321) > _321:
            mem[_141 + _145 + _237 + _321 + 96] = 0
        return 32, mem[_141 + _145 + _237 + 64 len ceil32(_321) + 32]
    mem[mem[64] + mem[96] + _237 + 32] = 0
    _309 = mem[64]
    mem[64] = mem[64] + mem[96] + _237 + 32
    mem[_141 + mem[96] + _237 + 32] = 32
    _325 = mem[_309]
    mem[_141 + _145 + _237 + 64] = mem[_309]
    mem[_141 + _145 + _237 + 96 len ceil32(_325)] = mem[_309 + 32 len ceil32(_325)]
    if ceil32(_325) > _325:
        mem[_141 + _145 + _237 + _325 + 96] = 0
    return 32, mem[_141 + _145 + _237 + 64 len ceil32(_325) + 32]
}



}
