contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - sub_ecc377e6(?)
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
mapping of struct stor12;
array of struct stor13;
uint256 MAX_SUPPLY;
uint8 paused;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function MAX_SUPPLY() payable {
    return MAX_SUPPLY
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() payable {
    return bool(paused)
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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

function setSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MAX_SUPPLY = arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
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
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function reclaimERC20(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) payable {
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

function walletOfOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
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
            revert with 0, 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function setBaseURI(string arg1) payable {
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
    if bool(stor13.length):
        if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor13[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13.length = 0
            idx = 0
            while (uint255(stor13.length) * 0.5) + 31 / 32 > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor13[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13.length = 0
            idx = 0
            while stor13.length.field_1 + 31 / 32 > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
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

function name() payable {
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
            mem[ceil32(uint255(stor0.length) * 0.5) + (uint255(stor0.length) * 0.5) + 192] = 0
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
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() payable {
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
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
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
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'This nft is not minted'
    if bool(stor13.length):
        if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor13.length):
            if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor13.length):
                if 31 < uint255(stor13.length) * 0.5:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor13.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length), data=mem[128 len ceil32(uint255(stor13.length) * 0.5)])
                mem[128] = 256 * stor13.length.field_8
        else:
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 0, 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length), data=mem[128 len ceil32(uint255(stor13.length) * 0.5)])
                mem[128] = 256 * stor13.length.field_8
        mem[ceil32(uint255(stor13.length) * 0.5) + 192 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
        if ceil32(uint255(stor13.length) * 0.5) > uint255(stor13.length) * 0.5:
            mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor13.length), data=mem[128 len ceil32(uint255(stor13.length) * 0.5)], mem[(2 * ceil32(uint255(stor13.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor13.length) * 0.5)]), 
    if bool(stor13.length) == stor13.length.field_1 < 32:
        revert with 0, 34
    if bool(stor13.length):
        if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor13.length):
            if 31 < uint255(stor13.length) * 0.5:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while (uint255(stor13.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
    if ceil32(stor13.length.field_1) > stor13.length.field_1:
        mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
    return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
}

function getTokenIds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = balanceOf[address(arg1)]
    mem[64] = (32 * balanceOf[address(arg1)]) + 128
    if not balanceOf[address(arg1)]:
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if var35002 >= var35001:
            mem[(32 * balanceOf[address(arg1)]) + 128] = 32
            mem[(32 * balanceOf[address(arg1)]) + 160] = balanceOf[address(arg1)]
            mem[(32 * balanceOf[address(arg1)]) + 192 len 32 * balanceOf[address(arg1)]] = mem[128 len 32 * balanceOf[address(arg1)]]
            return memory
              from (32 * balanceOf[address(arg1)]) + 128
               len (96 * balanceOf[address(arg1)]) + 64
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if var45003 >= var45001:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = var47002
        mem[32] = sha3(address(arg1), 6)
        if var49002 >= balanceOf[address(arg1)]:
            revert with 0, 50
        mem[(32 * var49002) + 128] = var49001
        s = var49002
        t = var49001
        idx = var49002
        while idx != -1:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx + 1 >= balanceOf[address(arg1)]:
                mem[(32 * balanceOf[address(arg1)]) + 128] = 32
                mem[(32 * balanceOf[address(arg1)]) + 160] = balanceOf[address(arg1)]
                idx = 0
                u = (32 * balanceOf[address(arg1)]) + 192
                v = 128
                while idx < balanceOf[address(arg1)]:
                    mem[u] = mem[v]
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
            mem[32] = sha3(address(arg1), 6)
            if idx + 1 >= balanceOf[address(arg1)]:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = tokenOfOwnerByIndex[address(arg1)][idx + 1]
            s = idx + 1
            t = tokenOfOwnerByIndex[address(arg1)][idx + 1]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if var36002 >= var36001:
            mem[(32 * balanceOf[address(arg1)]) + 128] = 32
            mem[(32 * balanceOf[address(arg1)]) + 160] = balanceOf[address(arg1)]
            mem[(32 * balanceOf[address(arg1)]) + 192 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
            return memory
              from (32 * balanceOf[address(arg1)]) + 128
               len (96 * balanceOf[address(arg1)]) + 64
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if var46003 >= var46001:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = var48002
        mem[32] = sha3(address(arg1), 6)
        if var50002 >= balanceOf[address(arg1)]:
            revert with 0, 50
        mem[(32 * var50002) + 128] = var50001
        s = var50002
        t = var50001
        idx = var50002
        while idx != -1:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx + 1 >= balanceOf[address(arg1)]:
                mem[(32 * balanceOf[address(arg1)]) + 128] = 32
                mem[(32 * balanceOf[address(arg1)]) + 160] = balanceOf[address(arg1)]
                idx = 0
                u = (32 * balanceOf[address(arg1)]) + 192
                v = 128
                while idx < balanceOf[address(arg1)]:
                    mem[u] = mem[v]
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
            mem[32] = sha3(address(arg1), 6)
            if idx + 1 >= balanceOf[address(arg1)]:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = tokenOfOwnerByIndex[address(arg1)][idx + 1]
            s = idx + 1
            t = tokenOfOwnerByIndex[address(arg1)][idx + 1]
            idx = idx + 1
            continue 
    revert with 0, 17
}

function sub_5a566136(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'The contract is paused'
    if tokenByIndex.length >= MAX_SUPPLY:
        revert with 0, 'No more mints'
    if 1 > !tokenByIndex.length:
        revert with 0, 17
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor8.length + 1]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor8.length + 1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = tokenByIndex.length + 1
    if address(arg1):
        if address(arg1):
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = tokenByIndex.length + 1
            stor7[stor8.length + 1] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor8.length + 1] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor8.length + 1]
        stor9[stor8.length + 1] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor8.length + 1] = address(arg1)
    emit Transfer(0, address(arg1), tokenByIndex.length + 1);
    if not ext_code.size(address(arg1)):
        if 1 > !tokenByIndex.length:
            revert with 0, 17
        if not bool(stor13.length):
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 0, 34
            if bool(stor13.length):
                if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor13.length):
                    if 31 >= uint255(stor13.length) * 0.5:
                        mem[160] = 256 * stor13.length.field_8
                    else:
                        mem[160] = uint256(stor13.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor13.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor13[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor13.length) == stor13.length.field_1 < 32:
                    revert with 0, 34
                if stor13.length.field_1:
                    if 31 >= stor13.length.field_1:
                        mem[160] = 256 * stor13.length.field_8
                    else:
                        mem[160] = uint256(stor13.field_0)
                        idx = 160
                        s = 0
                        while stor13.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor13[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            if not ownerOf[stor8.length + 1]:
                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
            if stor12[stor8.length + 1].field_0:
                if stor12[stor8.length + 1].field_0 == uint255(stor12[stor8.length + 1].field_0) * 0.5 < 32:
                    revert with 0, 34
                if stor13.length.field_1:
                    stor12[stor8.length + 1][].field_0 = Array(len=stor13.length.field_1, data=mem[160 len stor13.length.field_1])
                else:
                    stor12[stor8.length + 1].field_0 = 0
                    idx = 0
                    while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                        stor12[stor8.length + 1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor12[stor8.length + 1].field_0 == stor12[stor8.length + 1].field_1 < 32:
                    revert with 0, 34
                if stor13.length.field_1:
                    stor12[stor8.length + 1][].field_0 = Array(len=stor13.length.field_1, data=mem[160 len stor13.length.field_1])
                else:
                    stor12[stor8.length + 1].field_0 = 0
                    idx = 0
                    while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                        stor12[stor8.length + 1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
                revert with 0, 34
            if bool(stor13.length):
                if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor13.length):
                    if not ownerOf[stor8.length + 1]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    if stor12[stor8.length + 1].field_0:
                        if stor12[stor8.length + 1].field_0 == uint255(stor12[stor8.length + 1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(stor13.length) * 0.5:
                            stor12[stor8.length + 1].field_0 = 0
                            idx = 0
                            while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                stor12[stor8.length + 1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                if not Mask(256, -1, stor13.length):
                                    idx = 0
                                    while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 160
                                    while (uint255(stor13.length) * 0.5) + 160 > idx:
                                        stor12[stor8.length + 1][s].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                    while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                stor12[stor8.length + 1].field_0 = 0
                                stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                stor12[stor8.length + 1].field_8 = mem[160 len 31]
                                idx = 0
                                while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if stor12[stor8.length + 1].field_0 == stor12[stor8.length + 1].field_1 < 32:
                            revert with 0, 34
                        if not uint255(stor13.length) * 0.5:
                            stor12[stor8.length + 1].field_0 = 0
                            idx = 0
                            while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                stor12[stor8.length + 1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                if not Mask(256, -1, stor13.length):
                                    idx = 0
                                    while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 160
                                    while (uint255(stor13.length) * 0.5) + 160 > idx:
                                        stor12[stor8.length + 1][s].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                    while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                stor12[stor8.length + 1].field_0 = 0
                                stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                stor12[stor8.length + 1].field_8 = mem[160 len 31]
                                idx = 0
                                while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    if 31 >= uint255(stor13.length) * 0.5:
                        mem[160] = 256 * stor13.length.field_8
                        if not ownerOf[stor8.length + 1]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        if stor12[stor8.length + 1].field_0:
                            if stor12[stor8.length + 1].field_0 == uint255(stor12[stor8.length + 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = 0
                                idx = 0
                                while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor13.length) * 0.5:
                                    stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                    if not Mask(256, -1, stor13.length):
                                        idx = 0
                                        while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 160
                                        while (uint255(stor13.length) * 0.5) + 160 > idx:
                                            stor12[stor8.length + 1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                        while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor12[stor8.length + 1].field_0 = 0
                                    stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                    stor12[stor8.length + 1].field_8 = stor13.length.field_8
                                    idx = 0
                                    while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if stor12[stor8.length + 1].field_0 == stor12[stor8.length + 1].field_1 < 32:
                                revert with 0, 34
                            if not uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = 0
                                idx = 0
                                while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor13.length) * 0.5:
                                    stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                    if not Mask(256, -1, stor13.length):
                                        idx = 0
                                        while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 160
                                        while (uint255(stor13.length) * 0.5) + 160 > idx:
                                            stor12[stor8.length + 1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                        while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor12[stor8.length + 1].field_0 = 0
                                    stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                    stor12[stor8.length + 1].field_8 = stor13.length.field_8
                                    idx = 0
                                    while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[160] = uint256(stor13.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor13.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor13[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not ownerOf[stor8.length + 1]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        if stor12[stor8.length + 1].field_0:
                            if stor12[stor8.length + 1].field_0 == uint255(stor12[stor8.length + 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = 0
                                idx = 0
                                while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor13.length) * 0.5:
                                    stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                    if not Mask(256, -1, stor13.length):
                                        idx = 0
                                        while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 160
                                        while (uint255(stor13.length) * 0.5) + 160 > idx:
                                            stor12[stor8.length + 1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                        while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor12[stor8.length + 1].field_0 = 0
                                    stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                    stor12[stor8.length + 1].field_8 = mem[160 len 31]
                                    idx = 0
                                    while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if stor12[stor8.length + 1].field_0 == stor12[stor8.length + 1].field_1 < 32:
                                revert with 0, 34
                            if not uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = 0
                                idx = 0
                                while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor13.length) * 0.5:
                                    stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                    if not Mask(256, -1, stor13.length):
                                        idx = 0
                                        while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 160
                                        while (uint255(stor13.length) * 0.5) + 160 > idx:
                                            stor12[stor8.length + 1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                        while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor12[stor8.length + 1].field_0 = 0
                                    stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                    stor12[stor8.length + 1].field_8 = mem[160 len 31]
                                    idx = 0
                                    while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
            else:
                if bool(stor13.length) == stor13.length.field_1 < 32:
                    revert with 0, 34
                if not stor13.length.field_1:
                    if not ownerOf[stor8.length + 1]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    if stor12[stor8.length + 1].field_0:
                        if stor12[stor8.length + 1].field_0 == uint255(stor12[stor8.length + 1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(stor13.length) * 0.5:
                            stor12[stor8.length + 1].field_0 = 0
                            idx = 0
                            while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                stor12[stor8.length + 1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                if not Mask(256, -1, stor13.length):
                                    idx = 0
                                    while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 160
                                    while (uint255(stor13.length) * 0.5) + 160 > idx:
                                        stor12[stor8.length + 1][s].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                    while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                stor12[stor8.length + 1].field_0 = 0
                                stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                stor12[stor8.length + 1].field_8 = mem[160 len 31]
                                idx = 0
                                while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if stor12[stor8.length + 1].field_0 == stor12[stor8.length + 1].field_1 < 32:
                            revert with 0, 34
                        if not uint255(stor13.length) * 0.5:
                            stor12[stor8.length + 1].field_0 = 0
                            idx = 0
                            while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                stor12[stor8.length + 1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                if not Mask(256, -1, stor13.length):
                                    idx = 0
                                    while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 160
                                    while (uint255(stor13.length) * 0.5) + 160 > idx:
                                        stor12[stor8.length + 1][s].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                    while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                stor12[stor8.length + 1].field_0 = 0
                                stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                stor12[stor8.length + 1].field_8 = mem[160 len 31]
                                idx = 0
                                while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    if 31 >= stor13.length.field_1:
                        mem[160] = 256 * stor13.length.field_8
                        if not ownerOf[stor8.length + 1]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        if stor12[stor8.length + 1].field_0:
                            if stor12[stor8.length + 1].field_0 == uint255(stor12[stor8.length + 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = 0
                                idx = 0
                                while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor13.length) * 0.5:
                                    stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                    if not Mask(256, -1, stor13.length):
                                        idx = 0
                                        while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 160
                                        while (uint255(stor13.length) * 0.5) + 160 > idx:
                                            stor12[stor8.length + 1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                        while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor12[stor8.length + 1].field_0 = 0
                                    stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                    stor12[stor8.length + 1].field_8 = stor13.length.field_8
                                    idx = 0
                                    while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if stor12[stor8.length + 1].field_0 == stor12[stor8.length + 1].field_1 < 32:
                                revert with 0, 34
                            if not uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = 0
                                idx = 0
                                while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor13.length) * 0.5:
                                    stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                    if not Mask(256, -1, stor13.length):
                                        idx = 0
                                        while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 160
                                        while (uint255(stor13.length) * 0.5) + 160 > idx:
                                            stor12[stor8.length + 1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                        while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor12[stor8.length + 1].field_0 = 0
                                    stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                    stor12[stor8.length + 1].field_8 = stor13.length.field_8
                                    idx = 0
                                    while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[160] = uint256(stor13.field_0)
                        idx = 160
                        s = 0
                        while stor13.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor13[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not ownerOf[stor8.length + 1]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        if stor12[stor8.length + 1].field_0:
                            if stor12[stor8.length + 1].field_0 == uint255(stor12[stor8.length + 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = 0
                                idx = 0
                                while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor13.length) * 0.5:
                                    stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                    if not Mask(256, -1, stor13.length):
                                        idx = 0
                                        while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 160
                                        while (uint255(stor13.length) * 0.5) + 160 > idx:
                                            stor12[stor8.length + 1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                        while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor12[stor8.length + 1].field_0 = 0
                                    stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                    stor12[stor8.length + 1].field_8 = mem[160 len 31]
                                    idx = 0
                                    while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if stor12[stor8.length + 1].field_0 == stor12[stor8.length + 1].field_1 < 32:
                                revert with 0, 34
                            if not uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = 0
                                idx = 0
                                while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor13.length) * 0.5:
                                    stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                    if not Mask(256, -1, stor13.length):
                                        idx = 0
                                        while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 160
                                        while (uint255(stor13.length) * 0.5) + 160 > idx:
                                            stor12[stor8.length + 1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                        while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor12[stor8.length + 1].field_0 = 0
                                    stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                    stor12[stor8.length + 1].field_8 = mem[160 len 31]
                                    idx = 0
                                    while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
    else:
        mem[132] = msg.sender
        mem[164] = 0
        mem[196] = tokenByIndex.length + 1
        mem[228] = 128
        mem[260] = 0
        mem[292 len 0] = None
        call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, tokenByIndex.length + 1, 128, 0
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
        if 1 > !tokenByIndex.length:
            revert with 0, 17
        if not bool(stor13.length):
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 0, 34
            if bool(stor13.length):
                if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor13.length):
                    if 31 >= uint255(stor13.length) * 0.5:
                        mem[ceil32(return_data.size) + 160] = 256 * stor13.length.field_8
                    else:
                        mem[ceil32(return_data.size) + 160] = uint256(stor13.field_0)
                        idx = ceil32(return_data.size) + 160
                        s = 0
                        while ceil32(return_data.size) + (uint255(stor13.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor13[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor13.length) == stor13.length.field_1 < 32:
                    revert with 0, 34
                if stor13.length.field_1:
                    if 31 >= stor13.length.field_1:
                        mem[ceil32(return_data.size) + 160] = 256 * stor13.length.field_8
                    else:
                        mem[ceil32(return_data.size) + 160] = uint256(stor13.field_0)
                        idx = ceil32(return_data.size) + 160
                        s = 0
                        while ceil32(return_data.size) + stor13.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor13[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            if not ownerOf[stor8.length + 1]:
                revert with 0, 'ERC721Metadata: URI set of nonexistent token'
            if stor12[stor8.length + 1].field_0:
                if stor12[stor8.length + 1].field_0 == uint255(stor12[stor8.length + 1].field_0) * 0.5 < 32:
                    revert with 0, 34
                if stor13.length.field_1:
                    stor12[stor8.length + 1][].field_0 = Array(len=stor13.length.field_1, data=mem[ceil32(return_data.size) + 160 len stor13.length.field_1])
                else:
                    stor12[stor8.length + 1].field_0 = 0
                    idx = 0
                    while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                        stor12[stor8.length + 1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor12[stor8.length + 1].field_0 == stor12[stor8.length + 1].field_1 < 32:
                    revert with 0, 34
                if stor13.length.field_1:
                    stor12[stor8.length + 1][].field_0 = Array(len=stor13.length.field_1, data=mem[ceil32(return_data.size) + 160 len stor13.length.field_1])
                else:
                    stor12[stor8.length + 1].field_0 = 0
                    idx = 0
                    while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                        stor12[stor8.length + 1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
                revert with 0, 34
            if bool(stor13.length):
                if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor13.length):
                    if not ownerOf[stor8.length + 1]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    if stor12[stor8.length + 1].field_0:
                        if stor12[stor8.length + 1].field_0 == uint255(stor12[stor8.length + 1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(stor13.length) * 0.5:
                            stor12[stor8.length + 1].field_0 = 0
                            idx = 0
                            while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                stor12[stor8.length + 1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                if not Mask(256, -1, stor13.length):
                                    idx = 0
                                    while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = ceil32(return_data.size) + 160
                                    while ceil32(return_data.size) + (uint255(stor13.length) * 0.5) + 160 > idx:
                                        stor12[stor8.length + 1][s].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                    while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                stor12[stor8.length + 1].field_0 = 0
                                stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                stor12[stor8.length + 1].field_8 = mem[ceil32(return_data.size) + 160 len 31]
                                idx = 0
                                while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if stor12[stor8.length + 1].field_0 == stor12[stor8.length + 1].field_1 < 32:
                            revert with 0, 34
                        if not uint255(stor13.length) * 0.5:
                            stor12[stor8.length + 1].field_0 = 0
                            idx = 0
                            while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                stor12[stor8.length + 1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                if not Mask(256, -1, stor13.length):
                                    idx = 0
                                    while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = ceil32(return_data.size) + 160
                                    while ceil32(return_data.size) + (uint255(stor13.length) * 0.5) + 160 > idx:
                                        stor12[stor8.length + 1][s].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                    while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                stor12[stor8.length + 1].field_0 = 0
                                stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                stor12[stor8.length + 1].field_8 = mem[ceil32(return_data.size) + 160 len 31]
                                idx = 0
                                while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    if 31 >= uint255(stor13.length) * 0.5:
                        mem[ceil32(return_data.size) + 160] = 256 * stor13.length.field_8
                        if not ownerOf[stor8.length + 1]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        if stor12[stor8.length + 1].field_0:
                            if stor12[stor8.length + 1].field_0 == uint255(stor12[stor8.length + 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = 0
                                idx = 0
                                while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor13.length) * 0.5:
                                    stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                    if not Mask(256, -1, stor13.length):
                                        idx = 0
                                        while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = ceil32(return_data.size) + 160
                                        while ceil32(return_data.size) + (uint255(stor13.length) * 0.5) + 160 > idx:
                                            stor12[stor8.length + 1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                        while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor12[stor8.length + 1].field_0 = 0
                                    stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                    stor12[stor8.length + 1].field_8 = stor13.length.field_8
                                    idx = 0
                                    while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if stor12[stor8.length + 1].field_0 == stor12[stor8.length + 1].field_1 < 32:
                                revert with 0, 34
                            if not uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = 0
                                idx = 0
                                while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor13.length) * 0.5:
                                    stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                    if not Mask(256, -1, stor13.length):
                                        idx = 0
                                        while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = ceil32(return_data.size) + 160
                                        while ceil32(return_data.size) + (uint255(stor13.length) * 0.5) + 160 > idx:
                                            stor12[stor8.length + 1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                        while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor12[stor8.length + 1].field_0 = 0
                                    stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                    stor12[stor8.length + 1].field_8 = stor13.length.field_8
                                    idx = 0
                                    while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[ceil32(return_data.size) + 160] = uint256(stor13.field_0)
                        idx = ceil32(return_data.size) + 160
                        s = 0
                        while ceil32(return_data.size) + (uint255(stor13.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor13[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not ownerOf[stor8.length + 1]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        if stor12[stor8.length + 1].field_0:
                            if stor12[stor8.length + 1].field_0 == uint255(stor12[stor8.length + 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = 0
                                idx = 0
                                while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor13.length) * 0.5:
                                    stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                    if not Mask(256, -1, stor13.length):
                                        idx = 0
                                        while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = ceil32(return_data.size) + 160
                                        while ceil32(return_data.size) + (uint255(stor13.length) * 0.5) + 160 > idx:
                                            stor12[stor8.length + 1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                        while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor12[stor8.length + 1].field_0 = 0
                                    stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                    stor12[stor8.length + 1].field_8 = mem[ceil32(return_data.size) + 160 len 31]
                                    idx = 0
                                    while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if stor12[stor8.length + 1].field_0 == stor12[stor8.length + 1].field_1 < 32:
                                revert with 0, 34
                            if not uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = 0
                                idx = 0
                                while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor13.length) * 0.5:
                                    stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                    if not Mask(256, -1, stor13.length):
                                        idx = 0
                                        while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = ceil32(return_data.size) + 160
                                        while ceil32(return_data.size) + (uint255(stor13.length) * 0.5) + 160 > idx:
                                            stor12[stor8.length + 1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                        while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor12[stor8.length + 1].field_0 = 0
                                    stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                    stor12[stor8.length + 1].field_8 = mem[ceil32(return_data.size) + 160 len 31]
                                    idx = 0
                                    while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
            else:
                if bool(stor13.length) == stor13.length.field_1 < 32:
                    revert with 0, 34
                if not stor13.length.field_1:
                    if not ownerOf[stor8.length + 1]:
                        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                    if stor12[stor8.length + 1].field_0:
                        if stor12[stor8.length + 1].field_0 == uint255(stor12[stor8.length + 1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(stor13.length) * 0.5:
                            stor12[stor8.length + 1].field_0 = 0
                            idx = 0
                            while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                stor12[stor8.length + 1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                if not Mask(256, -1, stor13.length):
                                    idx = 0
                                    while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = ceil32(return_data.size) + 160
                                    while ceil32(return_data.size) + (uint255(stor13.length) * 0.5) + 160 > idx:
                                        stor12[stor8.length + 1][s].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                    while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                stor12[stor8.length + 1].field_0 = 0
                                stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                stor12[stor8.length + 1].field_8 = mem[ceil32(return_data.size) + 160 len 31]
                                idx = 0
                                while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if stor12[stor8.length + 1].field_0 == stor12[stor8.length + 1].field_1 < 32:
                            revert with 0, 34
                        if not uint255(stor13.length) * 0.5:
                            stor12[stor8.length + 1].field_0 = 0
                            idx = 0
                            while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                stor12[stor8.length + 1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                if not Mask(256, -1, stor13.length):
                                    idx = 0
                                    while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = ceil32(return_data.size) + 160
                                    while ceil32(return_data.size) + (uint255(stor13.length) * 0.5) + 160 > idx:
                                        stor12[stor8.length + 1][s].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                    while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                stor12[stor8.length + 1].field_0 = 0
                                stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                stor12[stor8.length + 1].field_8 = mem[ceil32(return_data.size) + 160 len 31]
                                idx = 0
                                while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    if 31 >= stor13.length.field_1:
                        mem[ceil32(return_data.size) + 160] = 256 * stor13.length.field_8
                        if not ownerOf[stor8.length + 1]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        if stor12[stor8.length + 1].field_0:
                            if stor12[stor8.length + 1].field_0 == uint255(stor12[stor8.length + 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = 0
                                idx = 0
                                while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor13.length) * 0.5:
                                    stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                    if not Mask(256, -1, stor13.length):
                                        idx = 0
                                        while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = ceil32(return_data.size) + 160
                                        while ceil32(return_data.size) + (uint255(stor13.length) * 0.5) + 160 > idx:
                                            stor12[stor8.length + 1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                        while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor12[stor8.length + 1].field_0 = 0
                                    stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                    stor12[stor8.length + 1].field_8 = stor13.length.field_8
                                    idx = 0
                                    while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if stor12[stor8.length + 1].field_0 == stor12[stor8.length + 1].field_1 < 32:
                                revert with 0, 34
                            if not uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = 0
                                idx = 0
                                while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor13.length) * 0.5:
                                    stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                    if not Mask(256, -1, stor13.length):
                                        idx = 0
                                        while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = ceil32(return_data.size) + 160
                                        while ceil32(return_data.size) + (uint255(stor13.length) * 0.5) + 160 > idx:
                                            stor12[stor8.length + 1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                        while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor12[stor8.length + 1].field_0 = 0
                                    stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                    stor12[stor8.length + 1].field_8 = stor13.length.field_8
                                    idx = 0
                                    while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[ceil32(return_data.size) + 160] = uint256(stor13.field_0)
                        idx = ceil32(return_data.size) + 160
                        s = 0
                        while ceil32(return_data.size) + stor13.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor13[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not ownerOf[stor8.length + 1]:
                            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                        if stor12[stor8.length + 1].field_0:
                            if stor12[stor8.length + 1].field_0 == uint255(stor12[stor8.length + 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = 0
                                idx = 0
                                while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor13.length) * 0.5:
                                    stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                    if not Mask(256, -1, stor13.length):
                                        idx = 0
                                        while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = ceil32(return_data.size) + 160
                                        while ceil32(return_data.size) + (uint255(stor13.length) * 0.5) + 160 > idx:
                                            stor12[stor8.length + 1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                        while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor12[stor8.length + 1].field_0 = 0
                                    stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                    stor12[stor8.length + 1].field_8 = mem[ceil32(return_data.size) + 160 len 31]
                                    idx = 0
                                    while (uint255(stor12[stor8.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if stor12[stor8.length + 1].field_0 == stor12[stor8.length + 1].field_1 < 32:
                                revert with 0, 34
                            if not uint255(stor13.length) * 0.5:
                                stor12[stor8.length + 1].field_0 = 0
                                idx = 0
                                while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                    stor12[stor8.length + 1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor13.length) * 0.5:
                                    stor12[stor8.length + 1].field_0 = Mask(254, 1, stor13.length) + 1
                                    if not Mask(256, -1, stor13.length):
                                        idx = 0
                                        while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = ceil32(return_data.size) + 160
                                        while ceil32(return_data.size) + (uint255(stor13.length) * 0.5) + 160 > idx:
                                            stor12[stor8.length + 1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor13.length) * 0.5) + 31) >> 5
                                        while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                            stor12[stor8.length + 1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor12[stor8.length + 1].field_0 = 0
                                    stor12[stor8.length + 1].field_1 = stor13.length.field_1
                                    stor12[stor8.length + 1].field_8 = mem[ceil32(return_data.size) + 160 len 31]
                                    idx = 0
                                    while stor12[stor8.length + 1].field_1 + 31 / 32 > idx:
                                        stor12[stor8.length + 1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
}



}
