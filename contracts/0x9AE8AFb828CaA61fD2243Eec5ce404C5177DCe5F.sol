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
uint256 MAX_SUPPLY;
uint256 PRICE;

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

function MAX_SUPPLY() {
    return MAX_SUPPLY
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

function PRICE() {
    return PRICE
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

function mint(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenByIndex.length > MAX_SUPPLY:
        revert with 0, 'Would exceed max supply'
    if msg.value < PRICE:
        revert with 0, 'insufficient funds'
    if tokenByIndex.length > -2:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor8.length + 1]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor8.length + 1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = tokenByIndex.length + 1
    if arg1:
        tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = tokenByIndex.length + 1
        stor7[stor8.length + 1] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[stor8.length + 1] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor8.length + 1]
        stor9[stor8.length + 1] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[stor8.length + 1] = arg1
    emit Transfer(0, arg1, tokenByIndex.length + 1);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0x150b7a02 with:
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
    return (tokenByIndex.length + 1)
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

function BASE_URI() {
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor11.length):
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) > stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
    if ceil32(stor11.length.field_1) > stor11.length.field_1:
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
    return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
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
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
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
    if ext_code.size(arg2) <= 0:
    require ext_code.size(arg2)
    call arg2 with:
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
    require not 0, ext_call.return_data[4 len 28]
    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[128] = Mask(248, 8, stor11.length)
            mem[stor11.length.field_1 + 128] = '/'
            mem[96] = stor11.length.field_1 + 1
            if stor11.length.field_1 + 1 <= 0:
                return ''
            if not arg1:
                mem[stor11.length.field_1 + 129] = 1
                mem[stor11.length.field_1 + 225 len floor32(stor11.length.field_1 + 32)] = Mask(248, 8, stor11.length), mem[160 len floor32(stor11.length.field_1 + 32) - 32]
                mem[(2 * stor11.length.field_1) + 226] = '0'
                mem[(2 * stor11.length.field_1) + 227] = 32
                mem[(2 * stor11.length.field_1) + 259] = mem[stor11.length.field_1 + 193]
                mem[(2 * stor11.length.field_1) + 291 len ceil32(mem[stor11.length.field_1 + 193])] = mem[stor11.length.field_1 + 225 len ceil32(mem[stor11.length.field_1 + 193])]
                if ceil32(mem[stor11.length.field_1 + 193]) <= mem[stor11.length.field_1 + 193]:
                    return Array(len=mem[stor11.length.field_1 + 193], data=mem[(2 * stor11.length.field_1) + 291 len ceil32(mem[stor11.length.field_1 + 193])]), 
                mem[(2 * stor11.length.field_1) + mem[stor11.length.field_1 + 193] + 291] = 0
                return 32, mem[(2 * stor11.length.field_1) + 259 len ceil32(mem[stor11.length.field_1 + 193]) + 32]
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
            mem[stor11.length.field_1 + 129] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[stor11.length.field_1 + 129]:
                        revert with 'NH{q', 50
                    mem[t + stor11.length.field_1 + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[stor11.length.field_1 + ceil32(s) + 193 len floor32(stor11.length.field_1 + 32)] = Mask(248, 8, stor11.length), mem[160 len floor32(stor11.length.field_1 + 32) - 32]
                if floor32(stor11.length.field_1 + 32) <= stor11.length.field_1 + 1:
                    mem[(2 * stor11.length.field_1) + ceil32(s) + 194 len ceil32(mem[stor11.length.field_1 + 129])] = mem[stor11.length.field_1 + 161 len ceil32(mem[stor11.length.field_1 + 129])]
                    mem[64] = (2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 194
                    mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 194] = 32
                    if ceil32(mem[stor11.length.field_1 + 129]) <= mem[stor11.length.field_1 + 129]:
                        _1845 = mem[stor11.length.field_1 + ceil32(s) + 161]
                        mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226] = mem[stor11.length.field_1 + ceil32(s) + 161]
                        mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 258 len ceil32(_1845)] = mem[stor11.length.field_1 + ceil32(s) + 193 len ceil32(_1845)]
                        if ceil32(_1845) > _1845:
                            mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + _1845 + 258] = 0
                        return 32, mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226 len ceil32(_1845) + 32]
                    _1861 = mem[stor11.length.field_1 + ceil32(s) + 161]
                    mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226] = mem[stor11.length.field_1 + ceil32(s) + 161]
                    mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 258 len ceil32(_1861)] = mem[stor11.length.field_1 + ceil32(s) + 193 len ceil32(_1861)]
                    if ceil32(_1861) > _1861:
                        mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + _1861 + 258] = 0
                    return 32, mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226 len ceil32(_1861) + 32]
                mem[(2 * stor11.length.field_1) + ceil32(s) + 194] = 0
                mem[(2 * stor11.length.field_1) + ceil32(s) + 194 len ceil32(mem[stor11.length.field_1 + 129])] = mem[stor11.length.field_1 + 161 len ceil32(mem[stor11.length.field_1 + 129])]
                mem[64] = (2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 194
                mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 194] = 32
                if ceil32(mem[stor11.length.field_1 + 129]) <= mem[stor11.length.field_1 + 129]:
                    _1846 = mem[stor11.length.field_1 + ceil32(s) + 161]
                    mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226] = mem[stor11.length.field_1 + ceil32(s) + 161]
                    mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 258 len ceil32(_1846)] = mem[stor11.length.field_1 + ceil32(s) + 193 len ceil32(_1846)]
                    if ceil32(_1846) > _1846:
                        mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + _1846 + 258] = 0
                    return 32, mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226 len ceil32(_1846) + 32]
                _1862 = mem[stor11.length.field_1 + ceil32(s) + 161]
                mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226] = mem[stor11.length.field_1 + ceil32(s) + 161]
                mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 258 len ceil32(_1862)] = mem[stor11.length.field_1 + ceil32(s) + 193 len ceil32(_1862)]
                if ceil32(_1862) > _1862:
                    mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + _1862 + 258] = 0
                return 32, mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226 len ceil32(_1862) + 32]
            mem[stor11.length.field_1 + 161 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[stor11.length.field_1 + 129]:
                    revert with 'NH{q', 50
                mem[t + stor11.length.field_1 + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[stor11.length.field_1 + ceil32(s) + 193 len floor32(stor11.length.field_1 + 32)] = Mask(248, 8, stor11.length), mem[160 len floor32(stor11.length.field_1 + 32) - 32]
            if floor32(stor11.length.field_1 + 32) <= stor11.length.field_1 + 1:
                mem[(2 * stor11.length.field_1) + ceil32(s) + 194 len ceil32(mem[stor11.length.field_1 + 129])] = mem[stor11.length.field_1 + 161 len ceil32(mem[stor11.length.field_1 + 129])]
                mem[64] = (2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 194
                mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 194] = 32
                if ceil32(mem[stor11.length.field_1 + 129]) <= mem[stor11.length.field_1 + 129]:
                    _1847 = mem[stor11.length.field_1 + ceil32(s) + 161]
                    mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226] = mem[stor11.length.field_1 + ceil32(s) + 161]
                    mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 258 len ceil32(_1847)] = mem[stor11.length.field_1 + ceil32(s) + 193 len ceil32(_1847)]
                    if ceil32(_1847) > _1847:
                        mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + _1847 + 258] = 0
                    return 32, mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226 len ceil32(_1847) + 32]
                _1863 = mem[stor11.length.field_1 + ceil32(s) + 161]
                mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226] = mem[stor11.length.field_1 + ceil32(s) + 161]
                mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 258 len ceil32(_1863)] = mem[stor11.length.field_1 + ceil32(s) + 193 len ceil32(_1863)]
                if ceil32(_1863) > _1863:
                    mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + _1863 + 258] = 0
                return 32, mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226 len ceil32(_1863) + 32]
            mem[(2 * stor11.length.field_1) + ceil32(s) + 194] = 0
            mem[(2 * stor11.length.field_1) + ceil32(s) + 194 len ceil32(mem[stor11.length.field_1 + 129])] = mem[stor11.length.field_1 + 161 len ceil32(mem[stor11.length.field_1 + 129])]
            mem[64] = (2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 194
            mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 194] = 32
            if ceil32(mem[stor11.length.field_1 + 129]) <= mem[stor11.length.field_1 + 129]:
                _1848 = mem[stor11.length.field_1 + ceil32(s) + 161]
                mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226] = mem[stor11.length.field_1 + ceil32(s) + 161]
                mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 258 len ceil32(_1848)] = mem[stor11.length.field_1 + ceil32(s) + 193 len ceil32(_1848)]
                if ceil32(_1848) > _1848:
                    mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + _1848 + 258] = 0
                return 32, mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226 len ceil32(_1848) + 32]
            _1864 = mem[stor11.length.field_1 + ceil32(s) + 161]
            mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226] = mem[stor11.length.field_1 + ceil32(s) + 161]
            mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 258 len ceil32(_1864)] = mem[stor11.length.field_1 + ceil32(s) + 193 len ceil32(_1864)]
            if ceil32(_1864) > _1864:
                mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + _1864 + 258] = 0
            return 32, mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226 len ceil32(_1864) + 32]
        if bool(stor11.length) != 1:
            return memory
              from ''
               len -'' + 97
        mem[0] = 11
        idx = 0
        s = 0
        while idx < stor11.length.field_1:
            mem[idx + 128] = stor11[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[stor11.length.field_1 + 128] = '/'
        mem[96] = stor11.length.field_1 + 1
        if stor11.length.field_1 + 1 <= 0:
            return ''
        if not arg1:
            mem[stor11.length.field_1 + 129] = 1
            mem[stor11.length.field_1 + 225 len floor32(stor11.length.field_1 + 32)] = mem[128 len floor32(stor11.length.field_1 + 32)]
            mem[(2 * stor11.length.field_1) + 226] = '0'
            mem[(2 * stor11.length.field_1) + 227] = 32
            mem[(2 * stor11.length.field_1) + 259] = mem[stor11.length.field_1 + 193]
            mem[(2 * stor11.length.field_1) + 291 len ceil32(mem[stor11.length.field_1 + 193])] = mem[stor11.length.field_1 + 225 len ceil32(mem[stor11.length.field_1 + 193])]
            if ceil32(mem[stor11.length.field_1 + 193]) <= mem[stor11.length.field_1 + 193]:
                return Array(len=mem[stor11.length.field_1 + 193], data=mem[(2 * stor11.length.field_1) + 291 len ceil32(mem[stor11.length.field_1 + 193])]), 
            mem[(2 * stor11.length.field_1) + mem[stor11.length.field_1 + 193] + 291] = 0
            return 32, mem[(2 * stor11.length.field_1) + 259 len ceil32(mem[stor11.length.field_1 + 193]) + 32]
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
        mem[stor11.length.field_1 + 129] = s
        if s:
            mem[stor11.length.field_1 + 161 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[stor11.length.field_1 + 129]:
                revert with 'NH{q', 50
            mem[t + stor11.length.field_1 + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[stor11.length.field_1 + ceil32(s) + 193 len floor32(stor11.length.field_1 + 32)] = mem[128 len floor32(stor11.length.field_1 + 32)]
        if floor32(stor11.length.field_1 + 32) > stor11.length.field_1 + 1:
            mem[(2 * stor11.length.field_1) + ceil32(s) + 194] = 0
        mem[(2 * stor11.length.field_1) + ceil32(s) + 194 len ceil32(mem[stor11.length.field_1 + 129])] = mem[stor11.length.field_1 + 161 len ceil32(mem[stor11.length.field_1 + 129])]
        mem[64] = (2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 194
        mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 194] = 32
        mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226] = mem[stor11.length.field_1 + ceil32(s) + 161]
        mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 258 len ceil32(mem[stor11.length.field_1 + ceil32(s) + 161])] = mem[stor11.length.field_1 + ceil32(s) + 193 len ceil32(mem[stor11.length.field_1 + ceil32(s) + 161])]
        if ceil32(mem[stor11.length.field_1 + ceil32(s) + 161]) > mem[stor11.length.field_1 + ceil32(s) + 161]:
            mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + mem[stor11.length.field_1 + ceil32(s) + 161] + 258] = 0
        return 32, mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226 len ceil32(mem[stor11.length.field_1 + ceil32(s) + 161]) + 32], 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor11.length):
        mem[128] = Mask(248, 8, stor11.length)
        mem[stor11.length.field_1 + 128] = '/'
        mem[96] = stor11.length.field_1 + 1
        if stor11.length.field_1 + 1 <= 0:
            return ''
        if not arg1:
            mem[stor11.length.field_1 + 129] = 1
            mem[stor11.length.field_1 + 225 len floor32(stor11.length.field_1 + 32)] = Mask(248, 8, stor11.length), mem[160 len floor32(stor11.length.field_1 + 32) - 32]
            mem[(2 * stor11.length.field_1) + 226] = '0'
            mem[(2 * stor11.length.field_1) + 227] = 32
            mem[(2 * stor11.length.field_1) + 259] = mem[stor11.length.field_1 + 193]
            mem[(2 * stor11.length.field_1) + 291 len ceil32(mem[stor11.length.field_1 + 193])] = mem[stor11.length.field_1 + 225 len ceil32(mem[stor11.length.field_1 + 193])]
            if ceil32(mem[stor11.length.field_1 + 193]) > mem[stor11.length.field_1 + 193]:
                mem[(2 * stor11.length.field_1) + mem[stor11.length.field_1 + 193] + 291] = 0
            return Array(len=mem[stor11.length.field_1 + 193], data=mem[(2 * stor11.length.field_1) + 291 len ceil32(mem[stor11.length.field_1 + 193])]), 
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
        mem[stor11.length.field_1 + 129] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[stor11.length.field_1 + 129]:
                    revert with 'NH{q', 50
                mem[t + stor11.length.field_1 + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[stor11.length.field_1 + ceil32(s) + 193 len floor32(stor11.length.field_1 + 32)] = Mask(248, 8, stor11.length), mem[160 len floor32(stor11.length.field_1 + 32) - 32]
            if floor32(stor11.length.field_1 + 32) <= stor11.length.field_1 + 1:
                mem[(2 * stor11.length.field_1) + ceil32(s) + 194 len ceil32(mem[stor11.length.field_1 + 129])] = mem[stor11.length.field_1 + 161 len ceil32(mem[stor11.length.field_1 + 129])]
                mem[64] = (2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 194
                mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 194] = 32
                if ceil32(mem[stor11.length.field_1 + 129]) <= mem[stor11.length.field_1 + 129]:
                    _1853 = mem[stor11.length.field_1 + ceil32(s) + 161]
                    mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226] = mem[stor11.length.field_1 + ceil32(s) + 161]
                    mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 258 len ceil32(_1853)] = mem[stor11.length.field_1 + ceil32(s) + 193 len ceil32(_1853)]
                    if ceil32(_1853) > _1853:
                        mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + _1853 + 258] = 0
                    return 32, mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226 len ceil32(_1853) + 32]
                _1869 = mem[stor11.length.field_1 + ceil32(s) + 161]
                mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226] = mem[stor11.length.field_1 + ceil32(s) + 161]
                mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 258 len ceil32(_1869)] = mem[stor11.length.field_1 + ceil32(s) + 193 len ceil32(_1869)]
                if ceil32(_1869) > _1869:
                    mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + _1869 + 258] = 0
                return 32, mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226 len ceil32(_1869) + 32]
            mem[(2 * stor11.length.field_1) + ceil32(s) + 194] = 0
            mem[(2 * stor11.length.field_1) + ceil32(s) + 194 len ceil32(mem[stor11.length.field_1 + 129])] = mem[stor11.length.field_1 + 161 len ceil32(mem[stor11.length.field_1 + 129])]
            mem[64] = (2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 194
            mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 194] = 32
            if ceil32(mem[stor11.length.field_1 + 129]) <= mem[stor11.length.field_1 + 129]:
                _1854 = mem[stor11.length.field_1 + ceil32(s) + 161]
                mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226] = mem[stor11.length.field_1 + ceil32(s) + 161]
                mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 258 len ceil32(_1854)] = mem[stor11.length.field_1 + ceil32(s) + 193 len ceil32(_1854)]
                if ceil32(_1854) > _1854:
                    mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + _1854 + 258] = 0
                return 32, mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226 len ceil32(_1854) + 32]
            _1870 = mem[stor11.length.field_1 + ceil32(s) + 161]
            mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226] = mem[stor11.length.field_1 + ceil32(s) + 161]
            mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 258 len ceil32(_1870)] = mem[stor11.length.field_1 + ceil32(s) + 193 len ceil32(_1870)]
            if ceil32(_1870) > _1870:
                mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + _1870 + 258] = 0
            return 32, mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226 len ceil32(_1870) + 32]
        mem[stor11.length.field_1 + 161 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[stor11.length.field_1 + 129]:
                revert with 'NH{q', 50
            mem[t + stor11.length.field_1 + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[stor11.length.field_1 + ceil32(s) + 193 len floor32(stor11.length.field_1 + 32)] = Mask(248, 8, stor11.length), mem[160 len floor32(stor11.length.field_1 + 32) - 32]
        if floor32(stor11.length.field_1 + 32) <= stor11.length.field_1 + 1:
            mem[(2 * stor11.length.field_1) + ceil32(s) + 194 len ceil32(mem[stor11.length.field_1 + 129])] = mem[stor11.length.field_1 + 161 len ceil32(mem[stor11.length.field_1 + 129])]
            mem[64] = (2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 194
            mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 194] = 32
            if ceil32(mem[stor11.length.field_1 + 129]) <= mem[stor11.length.field_1 + 129]:
                _1855 = mem[stor11.length.field_1 + ceil32(s) + 161]
                mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226] = mem[stor11.length.field_1 + ceil32(s) + 161]
                mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 258 len ceil32(_1855)] = mem[stor11.length.field_1 + ceil32(s) + 193 len ceil32(_1855)]
                if ceil32(_1855) > _1855:
                    mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + _1855 + 258] = 0
                return 32, mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226 len ceil32(_1855) + 32]
            _1871 = mem[stor11.length.field_1 + ceil32(s) + 161]
            mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226] = mem[stor11.length.field_1 + ceil32(s) + 161]
            mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 258 len ceil32(_1871)] = mem[stor11.length.field_1 + ceil32(s) + 193 len ceil32(_1871)]
            if ceil32(_1871) > _1871:
                mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + _1871 + 258] = 0
            return 32, mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226 len ceil32(_1871) + 32]
        mem[(2 * stor11.length.field_1) + ceil32(s) + 194] = 0
        mem[(2 * stor11.length.field_1) + ceil32(s) + 194 len ceil32(mem[stor11.length.field_1 + 129])] = mem[stor11.length.field_1 + 161 len ceil32(mem[stor11.length.field_1 + 129])]
        mem[64] = (2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 194
        mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 194] = 32
        if ceil32(mem[stor11.length.field_1 + 129]) <= mem[stor11.length.field_1 + 129]:
            _1856 = mem[stor11.length.field_1 + ceil32(s) + 161]
            mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226] = mem[stor11.length.field_1 + ceil32(s) + 161]
            mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 258 len ceil32(_1856)] = mem[stor11.length.field_1 + ceil32(s) + 193 len ceil32(_1856)]
            if ceil32(_1856) > _1856:
                mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + _1856 + 258] = 0
            return 32, mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226 len ceil32(_1856) + 32]
        _1872 = mem[stor11.length.field_1 + ceil32(s) + 161]
        mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226] = mem[stor11.length.field_1 + ceil32(s) + 161]
        mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 258 len ceil32(_1872)] = mem[stor11.length.field_1 + ceil32(s) + 193 len ceil32(_1872)]
        if ceil32(_1872) > _1872:
            mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + _1872 + 258] = 0
        return 32, mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226 len ceil32(_1872) + 32]
    if bool(stor11.length) != 1:
        return memory
          from ''
           len -'' + 97
    mem[0] = 11
    idx = 0
    s = 0
    while idx < stor11.length.field_1:
        mem[idx + 128] = stor11[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor11.length.field_1 + 128] = '/'
    mem[96] = stor11.length.field_1 + 1
    if stor11.length.field_1 + 1 <= 0:
        return ''
    if not arg1:
        mem[stor11.length.field_1 + 129] = 1
        mem[stor11.length.field_1 + 225 len floor32(stor11.length.field_1 + 32)] = mem[128 len floor32(stor11.length.field_1 + 32)]
        mem[(2 * stor11.length.field_1) + 226] = '0'
        mem[(2 * stor11.length.field_1) + 227] = 32
        mem[(2 * stor11.length.field_1) + 259] = mem[stor11.length.field_1 + 193]
        mem[(2 * stor11.length.field_1) + 291 len ceil32(mem[stor11.length.field_1 + 193])] = mem[stor11.length.field_1 + 225 len ceil32(mem[stor11.length.field_1 + 193])]
        if ceil32(mem[stor11.length.field_1 + 193]) > mem[stor11.length.field_1 + 193]:
            mem[(2 * stor11.length.field_1) + mem[stor11.length.field_1 + 193] + 291] = 0
        return Array(len=mem[stor11.length.field_1 + 193], data=mem[(2 * stor11.length.field_1) + 291 len ceil32(mem[stor11.length.field_1 + 193])]), 
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
    mem[stor11.length.field_1 + 129] = s
    if s:
        mem[stor11.length.field_1 + 161 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[stor11.length.field_1 + 129]:
            revert with 'NH{q', 50
        mem[t + stor11.length.field_1 + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[stor11.length.field_1 + ceil32(s) + 193 len floor32(stor11.length.field_1 + 32)] = mem[128 len floor32(stor11.length.field_1 + 32)]
    if floor32(stor11.length.field_1 + 32) > stor11.length.field_1 + 1:
        mem[(2 * stor11.length.field_1) + ceil32(s) + 194] = 0
    mem[(2 * stor11.length.field_1) + ceil32(s) + 194 len ceil32(mem[stor11.length.field_1 + 129])] = mem[stor11.length.field_1 + 161 len ceil32(mem[stor11.length.field_1 + 129])]
    mem[64] = (2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 194
    mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 194] = 32
    mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226] = mem[stor11.length.field_1 + ceil32(s) + 161]
    mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 258 len ceil32(mem[stor11.length.field_1 + ceil32(s) + 161])] = mem[stor11.length.field_1 + ceil32(s) + 193 len ceil32(mem[stor11.length.field_1 + ceil32(s) + 161])]
    if ceil32(mem[stor11.length.field_1 + ceil32(s) + 161]) > mem[stor11.length.field_1 + ceil32(s) + 161]:
        mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + mem[stor11.length.field_1 + ceil32(s) + 161] + 258] = 0
    return 32, mem[(2 * stor11.length.field_1) + ceil32(s) + mem[stor11.length.field_1 + 129] + 226 len ceil32(mem[stor11.length.field_1 + ceil32(s) + 161]) + 32], 
}



}
