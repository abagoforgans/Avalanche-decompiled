contract main {




// =====================  Runtime code  =====================


#
#  - sub_47c4ef25(?)
#  - sub_763b69d2(?)
#  - sub_7665c38c(?)
#  - sub_79867591(?)
#  - initialize(string arg1, string arg2, address arg3, address arg4)
#
uint128 stor101; offset 160
address stor101;
mapping of struct stor102;
array of struct stor151;
array of struct stor152;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor156;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor202;
array of uint256 tokenByIndex;
mapping of uint256 stor204;
address owner;
address orbitAddress;
address sub_cc65fc64Address;
mapping of struct stor354;
array of struct stor356;
uint8 paused;
array of uint256 stor75901123276489147006081427704161463599957449291885703562554030577081909053179;

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

function paused() {
    return bool(paused)
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

function sub_cc65fc64(?) {
    return sub_cc65fc64Address
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor156[address(arg1)][address(arg2)])
}

function orbitAddress() {
    return orbitAddress
}

function _fallback() payable {
    revert
}

function getDefaultRoyalty() {
    return address(stor101.field_0), Mask(96, 0, stor101.field_160)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
}

function sub_ce098c9b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'EuropaBase: Invalid address'
    orbitAddress = address(arg1)
}

function sub_abc0f19b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'EuropaBase: Invalid address'
    sub_cc65fc64Address = address(arg1)
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor156[address(msg.sender)][address(arg1)] = uint8(arg2)
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

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if address(stor102[arg1].field_0):
        if arg2 and Mask(96, 0, stor102[arg1].field_160) > -1 / arg2:
            revert with 0, 17
        return address(stor102[arg1].field_0), arg2 * Mask(96, 0, stor102[arg1].field_160) / 10000
    if arg2 and Mask(96, 0, stor101.field_160) > -1 / arg2:
        revert with 0, 17
    return address(stor101.field_0), arg2 * Mask(96, 0, stor101.field_160) / 10000
}

function setDefaultRoyalty(address arg1, uint96 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == Mask(96, 0, arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if Mask(96, 0, arg2) > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC2981: royalty fee will exceed salePrice'
    if not arg1:
        revert with 0, 'ERC2981: invalid receiver'
    address(stor101.field_0) = arg1
    Mask(96, 0, stor101.field_160) = Mask(96, 0, arg2)
}

function sub_bdf308fe(?) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(96, 0, arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if Mask(96, 0, arg1) >= 10000:
        revert with 0, 'EuropaNFT royalty fee over'
    if Mask(96, 0, arg1) > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC2981: royalty fee will exceed salePrice'
    if not address(stor101.field_0):
        revert with 0, 'ERC2981: invalid receiver'
    Mask(96, 0, stor101.field_160) = Mask(96, 0, arg1)
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
    if '*U Z' == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_67ad98da(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 355
    if stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] != 0:
        return 1
    else:
        return 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor156[stor153[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_daa886b1(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor356.length):
        if bool(stor356.length) == uint255(stor356.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor356[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor356.length = 0
            idx = 0
            while (uint255(stor356.length) * 0.5) + 31 / 32 > idx:
                stor356[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor356.length) == stor356.length.field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor356[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor356.length = 0
            idx = 0
            while stor356.length.field_1 % 128 + 31 / 32 > idx:
                stor356[idx].field_0 = 0
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
            if not stor156[stor153[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor204[arg3] = tokenByIndex.length
        tokenByIndex.length++
        storA7CE[stor203.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor202[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor202[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor154[address(arg1)] - 1]
                stor202[stor201[address(arg1)][stor154[address(arg1)] - 1]] = stor202[arg3]
            stor202[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor154[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor154[address(arg2)]] = arg3
            stor202[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor204[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor204[arg3]] = tokenByIndex[tokenByIndex.length]
        stor204[stor203[stor203.length]] = stor204[arg3]
        stor204[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EuropaNFT: Token transfer while paused'
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
            if not stor156[stor153[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor204[arg3] = tokenByIndex.length
        tokenByIndex.length++
        storA7CE[stor203.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor202[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor202[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor154[address(arg1)] - 1]
                stor202[stor201[address(arg1)][stor154[address(arg1)] - 1]] = stor202[arg3]
            stor202[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor154[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor154[address(arg2)]] = arg3
            stor202[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor204[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor204[arg3]] = tokenByIndex[tokenByIndex.length]
        stor204[stor203[stor203.length]] = stor204[arg3]
        stor204[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if paused:
        revert with 0, 'EuropaNFT: Token transfer while paused'
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
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
            if not stor156[stor153[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor204[arg3] = tokenByIndex.length
        tokenByIndex.length++
        storA7CE[stor203.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor202[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor202[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor154[address(arg1)] - 1]
                stor202[stor201[address(arg1)][stor154[address(arg1)] - 1]] = stor202[arg3]
            stor202[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor154[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor154[address(arg2)]] = arg3
            stor202[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor204[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor204[arg3]] = tokenByIndex[tokenByIndex.length]
        stor204[stor203[stor203.length]] = stor204[arg3]
        stor204[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if paused:
        revert with 0, 'EuropaNFT: Token transfer while paused'
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
        call arg2.0x150b7a02 with:
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

function name() {
    if bool(stor151.length):
        if bool(stor151.length) == uint255(stor151.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor151.length):
            if bool(stor151.length) == uint255(stor151.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor151.length):
                if 31 < uint255(stor151.length) * 0.5:
                    mem[128] = uint256(stor151.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor151.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor151[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor151.length), data=mem[128 len ceil32(uint255(stor151.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor151.length.field_8)
        else:
            if bool(stor151.length) == stor151.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor151.length.field_1 % 128:
                if 31 < stor151.length.field_1 % 128:
                    mem[128] = uint256(stor151.field_0)
                    idx = 128
                    s = 0
                    while stor151.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor151[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor151.length), data=mem[128 len ceil32(uint255(stor151.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor151.length.field_8)
        mem[ceil32(uint255(stor151.length) * 0.5) + 192 len ceil32(uint255(stor151.length) * 0.5)] = mem[128 len ceil32(uint255(stor151.length) * 0.5)]
        if ceil32(uint255(stor151.length) * 0.5) > uint255(stor151.length) * 0.5:
            mem[(uint255(stor151.length) * 0.5) + ceil32(uint255(stor151.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor151.length), data=mem[128 len ceil32(uint255(stor151.length) * 0.5)], mem[(2 * ceil32(uint255(stor151.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor151.length) * 0.5)]), 
    if bool(stor151.length) == stor151.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor151.length):
        if bool(stor151.length) == uint255(stor151.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor151.length):
            if 31 < uint255(stor151.length) * 0.5:
                mem[128] = uint256(stor151.field_0)
                idx = 128
                s = 0
                while (uint255(stor151.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor151[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor151.length % 128, data=mem[128 len ceil32(stor151.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor151.length.field_8)
    else:
        if bool(stor151.length) == stor151.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor151.length.field_1 % 128:
            if 31 < stor151.length.field_1 % 128:
                mem[128] = uint256(stor151.field_0)
                idx = 128
                s = 0
                while stor151.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor151[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor151.length % 128, data=mem[128 len ceil32(stor151.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor151.length.field_8)
    mem[ceil32(stor151.length.field_1 % 128) + 192 len ceil32(stor151.length.field_1 % 128)] = mem[128 len ceil32(stor151.length.field_1 % 128)]
    if ceil32(stor151.length.field_1 % 128) > stor151.length.field_1 % 128:
        mem[stor151.length.field_1 % 128 + ceil32(stor151.length.field_1 % 128) + 192] = 0
    return Array(len=stor151.length % 128, data=mem[128 len ceil32(stor151.length.field_1 % 128)], mem[(2 * ceil32(stor151.length.field_1 % 128)) + 192 len 2 * ceil32(stor151.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor152.length):
        if bool(stor152.length) == uint255(stor152.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor152.length):
            if bool(stor152.length) == uint255(stor152.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor152.length):
                if 31 < uint255(stor152.length) * 0.5:
                    mem[128] = uint256(stor152.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor152.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor152[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor152.length), data=mem[128 len ceil32(uint255(stor152.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor152.length.field_8)
        else:
            if bool(stor152.length) == stor152.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor152.length.field_1 % 128:
                if 31 < stor152.length.field_1 % 128:
                    mem[128] = uint256(stor152.field_0)
                    idx = 128
                    s = 0
                    while stor152.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor152[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor152.length), data=mem[128 len ceil32(uint255(stor152.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor152.length.field_8)
        mem[ceil32(uint255(stor152.length) * 0.5) + 192 len ceil32(uint255(stor152.length) * 0.5)] = mem[128 len ceil32(uint255(stor152.length) * 0.5)]
        if ceil32(uint255(stor152.length) * 0.5) > uint255(stor152.length) * 0.5:
            mem[(uint255(stor152.length) * 0.5) + ceil32(uint255(stor152.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor152.length), data=mem[128 len ceil32(uint255(stor152.length) * 0.5)], mem[(2 * ceil32(uint255(stor152.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor152.length) * 0.5)]), 
    if bool(stor152.length) == stor152.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor152.length):
        if bool(stor152.length) == uint255(stor152.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor152.length):
            if 31 < uint255(stor152.length) * 0.5:
                mem[128] = uint256(stor152.field_0)
                idx = 128
                s = 0
                while (uint255(stor152.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor152[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor152.length % 128, data=mem[128 len ceil32(stor152.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor152.length.field_8)
    else:
        if bool(stor152.length) == stor152.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor152.length.field_1 % 128:
            if 31 < stor152.length.field_1 % 128:
                mem[128] = uint256(stor152.field_0)
                idx = 128
                s = 0
                while stor152.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor152[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor152.length % 128, data=mem[128 len ceil32(stor152.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor152.length.field_8)
    mem[ceil32(stor152.length.field_1 % 128) + 192 len ceil32(stor152.length.field_1 % 128)] = mem[128 len ceil32(stor152.length.field_1 % 128)]
    if ceil32(stor152.length.field_1 % 128) > stor152.length.field_1 % 128:
        mem[stor152.length.field_1 % 128 + ceil32(stor152.length.field_1 % 128) + 192] = 0
    return Array(len=stor152.length % 128, data=mem[128 len ceil32(stor152.length.field_1 % 128)], mem[(2 * ceil32(stor152.length.field_1 % 128)) + 192 len 2 * ceil32(stor152.length.field_1 % 128)]), 
}

function sub_db8116b7(?) {
    if bool(stor356.length):
        if bool(stor356.length) == uint255(stor356.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor356.length):
            if bool(stor356.length) == uint255(stor356.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor356.length):
                if 31 < uint255(stor356.length) * 0.5:
                    mem[128] = uint256(stor356.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor356.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor356[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor356.length), data=mem[128 len ceil32(uint255(stor356.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor356.length.field_8)
        else:
            if bool(stor356.length) == stor356.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor356.length.field_1 % 128:
                if 31 < stor356.length.field_1 % 128:
                    mem[128] = uint256(stor356.field_0)
                    idx = 128
                    s = 0
                    while stor356.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor356[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor356.length), data=mem[128 len ceil32(uint255(stor356.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor356.length.field_8)
        mem[ceil32(uint255(stor356.length) * 0.5) + 192 len ceil32(uint255(stor356.length) * 0.5)] = mem[128 len ceil32(uint255(stor356.length) * 0.5)]
        if ceil32(uint255(stor356.length) * 0.5) > uint255(stor356.length) * 0.5:
            mem[(uint255(stor356.length) * 0.5) + ceil32(uint255(stor356.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor356.length), data=mem[128 len ceil32(uint255(stor356.length) * 0.5)], mem[(2 * ceil32(uint255(stor356.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor356.length) * 0.5)]), 
    if bool(stor356.length) == stor356.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor356.length):
        if bool(stor356.length) == uint255(stor356.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor356.length):
            if 31 < uint255(stor356.length) * 0.5:
                mem[128] = uint256(stor356.field_0)
                idx = 128
                s = 0
                while (uint255(stor356.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor356[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor356.length % 128, data=mem[128 len ceil32(stor356.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor356.length.field_8)
    else:
        if bool(stor356.length) == stor356.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor356.length.field_1 % 128:
            if 31 < stor356.length.field_1 % 128:
                mem[128] = uint256(stor356.field_0)
                idx = 128
                s = 0
                while stor356.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor356[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor356.length % 128, data=mem[128 len ceil32(stor356.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor356.length.field_8)
    mem[ceil32(stor356.length.field_1 % 128) + 192 len ceil32(stor356.length.field_1 % 128)] = mem[128 len ceil32(stor356.length.field_1 % 128)]
    if ceil32(stor356.length.field_1 % 128) > stor356.length.field_1 % 128:
        mem[stor356.length.field_1 % 128 + ceil32(stor356.length.field_1 % 128) + 192] = 0
    return Array(len=stor356.length % 128, data=mem[128 len ceil32(stor356.length.field_1 % 128)], mem[(2 * ceil32(stor356.length.field_1 % 128)) + 192 len 2 * ceil32(stor356.length.field_1 % 128)]), 
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
            if not stor156[stor153[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EuropaNFT: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1]:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[stor153[arg1]] < 1:
            revert with 0, 17
        if balanceOf[stor153[arg1]] - 1 != stor202[arg1]:
            tokenOfOwnerByIndex[stor153[arg1]][stor202[arg1]] = tokenOfOwnerByIndex[stor153[arg1]][stor154[stor153[arg1]] - 1]
            stor202[stor201[stor153[arg1]][stor154[stor153[arg1]] - 1]] = stor202[arg1]
        stor202[arg1] = 0
        tokenOfOwnerByIndex[stor153[arg1]][stor154[stor153[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor204[arg1] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor204[arg1]] = tokenByIndex[tokenByIndex.length]
    stor204[stor203[stor203.length]] = stor204[arg1]
    stor204[arg1] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EuropaNFT: Token transfer while paused'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor153[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor153[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    stor102[arg1].field_0 = 0
    if bool(stor354[arg1].field_0):
        if bool(stor354[arg1].field_0) == uint255(stor354[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        stor354[arg1].field_0 = 0
        if 31 < uint255(stor354[arg1].field_0) * 0.5:
            idx = 0
            while (uint255(stor354[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor354[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor354[arg1].field_0) == stor354[arg1].field_1 % 128 < 32:
            revert with 0, 34
        stor354[arg1].field_0 = 0
        if 31 < stor354[arg1].field_1 % 128:
            idx = 0
            while stor354[arg1].field_1 % 128 + 31 / 32 > idx:
                stor354[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor354[arg1].field_256):
        if bool(stor354[arg1].field_256) == uint255(stor354[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        stor354[arg1].field_256 = 0
        if 31 < uint255(stor354[arg1].field_256) * 0.5:
            idx = 0
            while (uint255(stor354[arg1].field_256) * 0.5) + 31 / 32 > idx:
                stor354[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor354[arg1].field_256) == stor354[arg1].field_257 % 128 < 32:
            revert with 0, 34
        stor354[arg1].field_256 = 0
        if 31 < stor354[arg1].field_257 % 128:
            idx = 0
            while stor354[arg1].field_257 % 128 + 31 / 32 > idx:
                stor354[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    stor354[arg1].field_512 % 281474976710656 = 0
}

function sub_252941cd(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 355
    if ceil32(arg1.length) <= arg1.length:
        _157 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        if not ownerOf[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]]:
            revert with 0, 'EuropaNFT: URI query for nonexistent token'
        if not ownerOf[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        mem[0] = stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
        mem[32] = 354
        if bool(stor354[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_0):
            if bool(stor354[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_0) == uint255(stor354[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_0) * 0.5 < 32:
                revert with 0, 34
            mem[64] = ceil32(ceil32(arg1.length)) + ceil32(uint255(stor354[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_0) * 0.5) + 129
            mem[ceil32(ceil32(arg1.length)) + 97] = uint255(stor354[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_0) * 0.5
            if bool(stor354[stor[_157]].field_0):
                if bool(stor354[stor[_157]].field_0) == uint255(stor354[stor[_157]].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor354[stor[_157]].field_0):
                    return stor[_157], 
                           ownerOf[stor[_157]],
                           Array(len=2 * Mask(256, -1, stor354[stor[_157]].field_0), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor354[stor[_157]].field_0) * 0.5)]),
                           uint16(stor354[stor[_157]].field_512),
                           uint16(stor354[stor[_157]].field_512),
                           uint16(stor354[stor[_157]].field_544)
                if 31 >= uint255(stor354[stor[_157]].field_0) * 0.5:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor354[stor[_157]].field_8)
                    return stor[_157], 
                           ownerOf[stor[_157]],
                           Array(len=2 * Mask(256, -1, stor354[stor[_157]].field_0), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor354[stor[_157]].field_0) * 0.5)]),
                           uint16(stor354[stor[_157]].field_512),
                           uint16(stor354[stor[_157]].field_512),
                           uint16(stor354[stor[_157]].field_544)
                mem[ceil32(ceil32(arg1.length)) + 129] = stor354[stor[_157]].field_0
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + (uint255(stor354[stor[_157]].field_0) * 0.5) + 97 > idx:
                    mem[idx + 32] = stor354[stor[_157]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            else:
                if bool(stor354[stor[_157]].field_0) == stor354[stor[_157]].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor354[stor[_157]].field_1 % 128:
                    return stor[_157], 
                           ownerOf[stor[_157]],
                           Array(len=2 * Mask(256, -1, stor354[stor[_157]].field_0), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor354[stor[_157]].field_0) * 0.5)]),
                           uint16(stor354[stor[_157]].field_512),
                           uint16(stor354[stor[_157]].field_512),
                           uint16(stor354[stor[_157]].field_544)
                if 31 >= stor354[stor[_157]].field_1 % 128:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor354[stor[_157]].field_8)
                    return stor[_157], 
                           ownerOf[stor[_157]],
                           Array(len=2 * Mask(256, -1, stor354[stor[_157]].field_0), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor354[stor[_157]].field_0) * 0.5)]),
                           uint16(stor354[stor[_157]].field_512),
                           uint16(stor354[stor[_157]].field_512),
                           uint16(stor354[stor[_157]].field_544)
                mem[ceil32(ceil32(arg1.length)) + 129] = stor354[stor[_157]].field_0
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + stor354[stor[_157]].field_1 % 128 + 97 > idx:
                    mem[idx + 32] = stor354[stor[_157]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[mem[64]] = stor[_157]
            mem[mem[64] + 32] = ownerOf[stor[_157]]
            mem[mem[64] + 64] = 192
            mem[mem[64] + 192] = uint255(stor354[stor[_157]].field_0) * 0.5
            mem[mem[64] + 224 len ceil32(uint255(stor354[stor[_157]].field_0) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor354[stor[_157]].field_0) * 0.5)]
            if ceil32(uint255(stor354[stor[_157]].field_0) * 0.5) > uint255(stor354[stor[_157]].field_0) * 0.5:
                mem[(uint255(stor354[stor[_157]].field_0) * 0.5) + mem[64] + 224] = 0
            mem[mem[64] + 96] = uint16(stor354[stor[_157]].field_512)
            return stor[_157], 
                   ownerOf[stor[_157]],
                   Array(len=2 * Mask(256, -1, stor354[stor[_157]].field_0), data=mem[mem[64] + 224 len ceil32(uint255(stor354[stor[_157]].field_0) * 0.5)]),
                   uint16(stor354[stor[_157]].field_512),
                   uint16(stor354[stor[_157]].field_512),
                   uint16(stor354[stor[_157]].field_544)
        if bool(stor354[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_0) == stor354[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_1 % 128 < 32:
            revert with 0, 34
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(stor354[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_1 % 128) + 129
        mem[ceil32(ceil32(arg1.length)) + 97] = stor354[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_1 % 128
        if bool(stor354[stor[_157]].field_0):
            if bool(stor354[stor[_157]].field_0) == uint255(stor354[stor[_157]].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor354[stor[_157]].field_0):
                return stor[_157], 
                       ownerOf[stor[_157]],
                       Array(len=stor354[stor[_157]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor354[stor[_157]].field_1 % 128)]),
                       uint16(stor354[stor[_157]].field_512),
                       uint16(stor354[stor[_157]].field_512),
                       uint16(stor354[stor[_157]].field_544)
            if 31 >= uint255(stor354[stor[_157]].field_0) * 0.5:
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor354[stor[_157]].field_8)
                return stor[_157], 
                       ownerOf[stor[_157]],
                       Array(len=stor354[stor[_157]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor354[stor[_157]].field_1 % 128)]),
                       uint16(stor354[stor[_157]].field_512),
                       uint16(stor354[stor[_157]].field_512),
                       uint16(stor354[stor[_157]].field_544)
            mem[ceil32(ceil32(arg1.length)) + 129] = stor354[stor[_157]].field_0
            idx = ceil32(ceil32(arg1.length)) + 129
            s = 0
            while ceil32(ceil32(arg1.length)) + (uint255(stor354[stor[_157]].field_0) * 0.5) + 97 > idx:
                mem[idx + 32] = stor354[stor[_157]][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        else:
            if bool(stor354[stor[_157]].field_0) == stor354[stor[_157]].field_1 % 128 < 32:
                revert with 0, 34
            if not stor354[stor[_157]].field_1 % 128:
                return stor[_157], 
                       ownerOf[stor[_157]],
                       Array(len=stor354[stor[_157]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor354[stor[_157]].field_1 % 128)]),
                       uint16(stor354[stor[_157]].field_512),
                       uint16(stor354[stor[_157]].field_512),
                       uint16(stor354[stor[_157]].field_544)
            if 31 >= stor354[stor[_157]].field_1 % 128:
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor354[stor[_157]].field_8)
                return stor[_157], 
                       ownerOf[stor[_157]],
                       Array(len=stor354[stor[_157]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor354[stor[_157]].field_1 % 128)]),
                       uint16(stor354[stor[_157]].field_512),
                       uint16(stor354[stor[_157]].field_512),
                       uint16(stor354[stor[_157]].field_544)
            mem[ceil32(ceil32(arg1.length)) + 129] = stor354[stor[_157]].field_0
            idx = ceil32(ceil32(arg1.length)) + 129
            s = 0
            while ceil32(ceil32(arg1.length)) + stor354[stor[_157]].field_1 % 128 + 97 > idx:
                mem[idx + 32] = stor354[stor[_157]][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        mem[mem[64]] = stor[_157]
        mem[mem[64] + 32] = ownerOf[stor[_157]]
        mem[mem[64] + 64] = 192
        mem[mem[64] + 192] = stor354[stor[_157]].field_1 % 128
        mem[mem[64] + 224 len ceil32(stor354[stor[_157]].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor354[stor[_157]].field_1 % 128)]
        if ceil32(stor354[stor[_157]].field_1 % 128) > stor354[stor[_157]].field_1 % 128:
            mem[stor354[stor[_157]].field_1 % 128 + mem[64] + 224] = 0
        mem[mem[64] + 96] = uint16(stor354[stor[_157]].field_512)
        return stor[_157], 
               ownerOf[stor[_157]],
               Array(len=stor354[stor[_157]].field_0 % 128, data=mem[mem[64] + 224 len ceil32(stor354[stor[_157]].field_1 % 128)]),
               uint16(stor354[stor[_157]].field_512),
               uint16(stor354[stor[_157]].field_512),
               uint16(stor354[stor[_157]].field_544)
    _160 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
    if not ownerOf[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]]:
        revert with 0, 'EuropaNFT: URI query for nonexistent token'
    if not ownerOf[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    mem[0] = stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
    mem[32] = 354
    if bool(stor354[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_0):
        if bool(stor354[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_0) == uint255(stor354[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_0) * 0.5 < 32:
            revert with 0, 34
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(uint255(stor354[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_0) * 0.5) + 129
        mem[ceil32(ceil32(arg1.length)) + 97] = uint255(stor354[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_0) * 0.5
        if bool(stor354[stor[_160]].field_0):
            if bool(stor354[stor[_160]].field_0) == uint255(stor354[stor[_160]].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor354[stor[_160]].field_0):
                return stor[_160], 
                       ownerOf[stor[_160]],
                       Array(len=2 * Mask(256, -1, stor354[stor[_160]].field_0), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor354[stor[_160]].field_0) * 0.5)]),
                       uint16(stor354[stor[_160]].field_512),
                       uint16(stor354[stor[_160]].field_512),
                       uint16(stor354[stor[_160]].field_544)
            if 31 >= uint255(stor354[stor[_160]].field_0) * 0.5:
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor354[stor[_160]].field_8)
                return stor[_160], 
                       ownerOf[stor[_160]],
                       Array(len=2 * Mask(256, -1, stor354[stor[_160]].field_0), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor354[stor[_160]].field_0) * 0.5)]),
                       uint16(stor354[stor[_160]].field_512),
                       uint16(stor354[stor[_160]].field_512),
                       uint16(stor354[stor[_160]].field_544)
            mem[ceil32(ceil32(arg1.length)) + 129] = stor354[stor[_160]].field_0
            idx = ceil32(ceil32(arg1.length)) + 129
            s = 0
            while ceil32(ceil32(arg1.length)) + (uint255(stor354[stor[_160]].field_0) * 0.5) + 97 > idx:
                mem[idx + 32] = stor354[stor[_160]][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        else:
            if bool(stor354[stor[_160]].field_0) == stor354[stor[_160]].field_1 % 128 < 32:
                revert with 0, 34
            if not stor354[stor[_160]].field_1 % 128:
                return stor[_160], 
                       ownerOf[stor[_160]],
                       Array(len=2 * Mask(256, -1, stor354[stor[_160]].field_0), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor354[stor[_160]].field_0) * 0.5)]),
                       uint16(stor354[stor[_160]].field_512),
                       uint16(stor354[stor[_160]].field_512),
                       uint16(stor354[stor[_160]].field_544)
            if 31 >= stor354[stor[_160]].field_1 % 128:
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor354[stor[_160]].field_8)
                return stor[_160], 
                       ownerOf[stor[_160]],
                       Array(len=2 * Mask(256, -1, stor354[stor[_160]].field_0), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor354[stor[_160]].field_0) * 0.5)]),
                       uint16(stor354[stor[_160]].field_512),
                       uint16(stor354[stor[_160]].field_512),
                       uint16(stor354[stor[_160]].field_544)
            mem[ceil32(ceil32(arg1.length)) + 129] = stor354[stor[_160]].field_0
            idx = ceil32(ceil32(arg1.length)) + 129
            s = 0
            while ceil32(ceil32(arg1.length)) + stor354[stor[_160]].field_1 % 128 + 97 > idx:
                mem[idx + 32] = stor354[stor[_160]][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        mem[mem[64]] = stor[_160]
        mem[mem[64] + 32] = ownerOf[stor[_160]]
        mem[mem[64] + 64] = 192
        mem[mem[64] + 192] = uint255(stor354[stor[_160]].field_0) * 0.5
        mem[mem[64] + 224 len ceil32(uint255(stor354[stor[_160]].field_0) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor354[stor[_160]].field_0) * 0.5)]
        if ceil32(uint255(stor354[stor[_160]].field_0) * 0.5) > uint255(stor354[stor[_160]].field_0) * 0.5:
            mem[(uint255(stor354[stor[_160]].field_0) * 0.5) + mem[64] + 224] = 0
        mem[mem[64] + 96] = uint16(stor354[stor[_160]].field_512)
        return stor[_160], 
               ownerOf[stor[_160]],
               Array(len=2 * Mask(256, -1, stor354[stor[_160]].field_0), data=mem[mem[64] + 224 len ceil32(uint255(stor354[stor[_160]].field_0) * 0.5)]),
               uint16(stor354[stor[_160]].field_512),
               uint16(stor354[stor[_160]].field_512),
               uint16(stor354[stor[_160]].field_544)
    if bool(stor354[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_0) == stor354[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_1 % 128 < 32:
        revert with 0, 34
    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(stor354[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_1 % 128) + 129
    mem[ceil32(ceil32(arg1.length)) + 97] = stor354[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_1 % 128
    if bool(stor354[stor[_160]].field_0):
        if bool(stor354[stor[_160]].field_0) == uint255(stor354[stor[_160]].field_0) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor354[stor[_160]].field_0):
            return stor[_160], 
                   ownerOf[stor[_160]],
                   Array(len=stor354[stor[_160]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor354[stor[_160]].field_1 % 128)]),
                   uint16(stor354[stor[_160]].field_512),
                   uint16(stor354[stor[_160]].field_512),
                   uint16(stor354[stor[_160]].field_544)
        if 31 >= uint255(stor354[stor[_160]].field_0) * 0.5:
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor354[stor[_160]].field_8)
            return stor[_160], 
                   ownerOf[stor[_160]],
                   Array(len=stor354[stor[_160]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor354[stor[_160]].field_1 % 128)]),
                   uint16(stor354[stor[_160]].field_512),
                   uint16(stor354[stor[_160]].field_512),
                   uint16(stor354[stor[_160]].field_544)
        mem[ceil32(ceil32(arg1.length)) + 129] = stor354[stor[_160]].field_0
        idx = ceil32(ceil32(arg1.length)) + 129
        s = 0
        while ceil32(ceil32(arg1.length)) + (uint255(stor354[stor[_160]].field_0) * 0.5) + 97 > idx:
            mem[idx + 32] = stor354[stor[_160]][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    else:
        if bool(stor354[stor[_160]].field_0) == stor354[stor[_160]].field_1 % 128 < 32:
            revert with 0, 34
        if not stor354[stor[_160]].field_1 % 128:
            return stor[_160], 
                   ownerOf[stor[_160]],
                   Array(len=stor354[stor[_160]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor354[stor[_160]].field_1 % 128)]),
                   uint16(stor354[stor[_160]].field_512),
                   uint16(stor354[stor[_160]].field_512),
                   uint16(stor354[stor[_160]].field_544)
        if 31 >= stor354[stor[_160]].field_1 % 128:
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor354[stor[_160]].field_8)
            return stor[_160], 
                   ownerOf[stor[_160]],
                   Array(len=stor354[stor[_160]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor354[stor[_160]].field_1 % 128)]),
                   uint16(stor354[stor[_160]].field_512),
                   uint16(stor354[stor[_160]].field_512),
                   uint16(stor354[stor[_160]].field_544)
        mem[ceil32(ceil32(arg1.length)) + 129] = stor354[stor[_160]].field_0
        idx = ceil32(ceil32(arg1.length)) + 129
        s = 0
        while ceil32(ceil32(arg1.length)) + stor354[stor[_160]].field_1 % 128 + 97 > idx:
            mem[idx + 32] = stor354[stor[_160]][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[mem[64]] = stor[_160]
    mem[mem[64] + 32] = ownerOf[stor[_160]]
    mem[mem[64] + 64] = 192
    mem[mem[64] + 192] = stor354[stor[_160]].field_1 % 128
    mem[mem[64] + 224 len ceil32(stor354[stor[_160]].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor354[stor[_160]].field_1 % 128)]
    if ceil32(stor354[stor[_160]].field_1 % 128) > stor354[stor[_160]].field_1 % 128:
        mem[stor354[stor[_160]].field_1 % 128 + mem[64] + 224] = 0
    mem[mem[64] + 96] = uint16(stor354[stor[_160]].field_512)
    return stor[_160], 
           ownerOf[stor[_160]],
           Array(len=stor354[stor[_160]].field_0 % 128, data=mem[mem[64] + 224 len ceil32(stor354[stor[_160]].field_1 % 128)]),
           uint16(stor354[stor[_160]].field_512),
           uint16(stor354[stor[_160]].field_512),
           uint16(stor354[stor[_160]].field_544)
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EuropaNFT: URI query for nonexistent token'
    mem[32] = 354
    if bool(stor354[arg1].field_0):
        if bool(stor354[arg1].field_0) == uint255(stor354[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        mem[96] = uint255(stor354[arg1].field_0) * 0.5
        if bool(stor354[arg1].field_0):
            if bool(stor354[arg1].field_0) == uint255(stor354[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor354[arg1].field_0):
                if bool(stor356.length):
                    if bool(stor356.length) == uint255(stor356.length) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(stor356.length):
                        mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = Mask(248, 8, stor356.length)
                    else:
                        if bool(stor356.length) != 1:
                            mem[64] = uint255(stor354[arg1].field_0) * 0.5
                            if ceil32(uint255(stor354[arg1].field_0) * 0.5) <= uint255(stor354[arg1].field_0) * 0.5:
                                _1257 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                                if ceil32(_1257) > _1257:
                                    mem[_1257 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                                return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_1257) + 32]
                            _1258 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                            mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                            mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                            if ceil32(_1258) > _1258:
                                mem[_1258 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                            return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_1258) + 32]
                        idx = 0
                        s = 0
                        while idx < uint255(stor356.length) * 0.5:
                            mem[idx + ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = stor356[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 160 len ceil32(uint255(stor354[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor354[arg1].field_0) * 0.5)]
                    mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 160] = 32
                    mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 192] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                    mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                    if ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]) <= mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]:
                        return Array(len=mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128], data=mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]), 
                    mem[mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128] + (uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 224] = 0
                    return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]) + 32], 
                if bool(stor356.length) == stor356.length.field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor356.length):
                    mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = Mask(248, 8, stor356.length)
                else:
                    if bool(stor356.length) != 1:
                        mem[64] = uint255(stor354[arg1].field_0) * 0.5
                        if ceil32(uint255(stor354[arg1].field_0) * 0.5) <= uint255(stor354[arg1].field_0) * 0.5:
                            _1261 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                            mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                            mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                            if ceil32(_1261) > _1261:
                                mem[_1261 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                            return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_1261) + 32]
                        _1262 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                        mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                        mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                        if ceil32(_1262) > _1262:
                            mem[_1262 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                        return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_1262) + 32]
                    idx = 0
                    s = 0
                    while idx < stor356.length.field_1 % 128:
                        mem[idx + ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = stor356[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            else:
                if 31 >= uint255(stor354[arg1].field_0) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor354[arg1].field_8)
                    if bool(stor356.length):
                        if bool(stor356.length) == uint255(stor356.length) * 0.5 < 32:
                            revert with 0, 34
                        if not bool(stor356.length):
                            mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = Mask(248, 8, stor356.length)
                        else:
                            if bool(stor356.length) != 1:
                                mem[64] = uint255(stor354[arg1].field_0) * 0.5
                                if ceil32(uint255(stor354[arg1].field_0) * 0.5) <= uint255(stor354[arg1].field_0) * 0.5:
                                    _1267 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                    mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                    mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                                    if ceil32(_1267) > _1267:
                                        mem[_1267 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                                    return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_1267) + 32]
                                _1268 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                                if ceil32(_1268) > _1268:
                                    mem[_1268 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                                return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_1268) + 32]
                            idx = 0
                            s = 0
                            while idx < uint255(stor356.length) * 0.5:
                                mem[idx + ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = stor356[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 160 len ceil32(uint255(stor354[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor354[arg1].field_0) * 0.5)]
                        mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 160] = 32
                        mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 192] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                        mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                        if ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]) <= mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]:
                            return Array(len=mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128], data=mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]), 
                        mem[mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128] + (uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 224] = 0
                        return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]) + 32], 
                    if bool(stor356.length) == stor356.length.field_1 % 128 < 32:
                        revert with 0, 34
                    if not bool(stor356.length):
                        mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = Mask(248, 8, stor356.length)
                    else:
                        if bool(stor356.length) != 1:
                            mem[64] = uint255(stor354[arg1].field_0) * 0.5
                            if ceil32(uint255(stor354[arg1].field_0) * 0.5) <= uint255(stor354[arg1].field_0) * 0.5:
                                _1271 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                                if ceil32(_1271) > _1271:
                                    mem[_1271 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                                return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_1271) + 32]
                            _1272 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                            mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                            mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                            if ceil32(_1272) > _1272:
                                mem[_1272 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                            return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_1272) + 32]
                        idx = 0
                        s = 0
                        while idx < stor356.length.field_1 % 128:
                            mem[idx + ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = stor356[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    mem[128] = stor354[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor354[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor354[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor356.length):
                        if bool(stor356.length) == uint255(stor356.length) * 0.5 < 32:
                            revert with 0, 34
                        if not bool(stor356.length):
                            mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = Mask(248, 8, stor356.length)
                        else:
                            if bool(stor356.length) != 1:
                                mem[64] = uint255(stor354[arg1].field_0) * 0.5
                                if ceil32(uint255(stor354[arg1].field_0) * 0.5) <= uint255(stor354[arg1].field_0) * 0.5:
                                    _2417 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                    mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                    mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                                    if ceil32(_2417) > _2417:
                                        mem[_2417 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                                    return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_2417) + 32]
                                _2418 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                                if ceil32(_2418) > _2418:
                                    mem[_2418 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                                return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_2418) + 32]
                            idx = 0
                            s = 0
                            while idx < uint255(stor356.length) * 0.5:
                                mem[idx + ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = stor356[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 160 len ceil32(uint255(stor354[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor354[arg1].field_0) * 0.5)]
                        mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 160] = 32
                        mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 192] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                        mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                        if ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]) <= mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]:
                            return Array(len=mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128], data=mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]), 
                        mem[mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128] + (uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 224] = 0
                        return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]) + 32], 
                    if bool(stor356.length) == stor356.length.field_1 % 128 < 32:
                        revert with 0, 34
                    if not bool(stor356.length):
                        mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = Mask(248, 8, stor356.length)
                    else:
                        if bool(stor356.length) != 1:
                            mem[64] = uint255(stor354[arg1].field_0) * 0.5
                            if ceil32(uint255(stor354[arg1].field_0) * 0.5) <= uint255(stor354[arg1].field_0) * 0.5:
                                _2421 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                                if ceil32(_2421) > _2421:
                                    mem[_2421 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                                return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_2421) + 32]
                            _2422 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                            mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                            mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                            if ceil32(_2422) > _2422:
                                mem[_2422 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                            return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_2422) + 32]
                        idx = 0
                        s = 0
                        while idx < stor356.length.field_1 % 128:
                            mem[idx + ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = stor356[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
        else:
            if bool(stor354[arg1].field_0) == stor354[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if not stor354[arg1].field_1 % 128:
                if bool(stor356.length):
                    if bool(stor356.length) == uint255(stor356.length) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(stor356.length):
                        mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = Mask(248, 8, stor356.length)
                    else:
                        if bool(stor356.length) != 1:
                            mem[64] = uint255(stor354[arg1].field_0) * 0.5
                            if ceil32(uint255(stor354[arg1].field_0) * 0.5) <= uint255(stor354[arg1].field_0) * 0.5:
                                _1275 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                                if ceil32(_1275) > _1275:
                                    mem[_1275 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                                return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_1275) + 32]
                            _1276 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                            mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                            mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                            if ceil32(_1276) > _1276:
                                mem[_1276 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                            return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_1276) + 32]
                        idx = 0
                        s = 0
                        while idx < uint255(stor356.length) * 0.5:
                            mem[idx + ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = stor356[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 160 len ceil32(uint255(stor354[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor354[arg1].field_0) * 0.5)]
                    mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 160] = 32
                    mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 192] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                    mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                    if ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]) <= mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]:
                        return Array(len=mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128], data=mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]), 
                    mem[mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128] + (uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 224] = 0
                    return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]) + 32], 
                if bool(stor356.length) == stor356.length.field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor356.length):
                    mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = Mask(248, 8, stor356.length)
                else:
                    if bool(stor356.length) != 1:
                        mem[64] = uint255(stor354[arg1].field_0) * 0.5
                        if ceil32(uint255(stor354[arg1].field_0) * 0.5) <= uint255(stor354[arg1].field_0) * 0.5:
                            _1279 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                            mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                            mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                            if ceil32(_1279) > _1279:
                                mem[_1279 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                            return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_1279) + 32]
                        _1280 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                        mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                        mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                        if ceil32(_1280) > _1280:
                            mem[_1280 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                        return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_1280) + 32]
                    idx = 0
                    s = 0
                    while idx < stor356.length.field_1 % 128:
                        mem[idx + ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = stor356[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            else:
                if 31 >= stor354[arg1].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor354[arg1].field_8)
                    if bool(stor356.length):
                        if bool(stor356.length) == uint255(stor356.length) * 0.5 < 32:
                            revert with 0, 34
                        if not bool(stor356.length):
                            mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = Mask(248, 8, stor356.length)
                        else:
                            if bool(stor356.length) != 1:
                                mem[64] = uint255(stor354[arg1].field_0) * 0.5
                                if ceil32(uint255(stor354[arg1].field_0) * 0.5) <= uint255(stor354[arg1].field_0) * 0.5:
                                    _1285 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                    mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                    mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                                    if ceil32(_1285) > _1285:
                                        mem[_1285 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                                    return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_1285) + 32]
                                _1286 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                                if ceil32(_1286) > _1286:
                                    mem[_1286 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                                return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_1286) + 32]
                            idx = 0
                            s = 0
                            while idx < uint255(stor356.length) * 0.5:
                                mem[idx + ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = stor356[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 160 len ceil32(uint255(stor354[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor354[arg1].field_0) * 0.5)]
                        mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 160] = 32
                        mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 192] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                        mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                        if ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]) <= mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]:
                            return Array(len=mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128], data=mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]), 
                        mem[mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128] + (uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 224] = 0
                        return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]) + 32], 
                    if bool(stor356.length) == stor356.length.field_1 % 128 < 32:
                        revert with 0, 34
                    if not bool(stor356.length):
                        mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = Mask(248, 8, stor356.length)
                    else:
                        if bool(stor356.length) != 1:
                            mem[64] = uint255(stor354[arg1].field_0) * 0.5
                            if ceil32(uint255(stor354[arg1].field_0) * 0.5) <= uint255(stor354[arg1].field_0) * 0.5:
                                _1289 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                                if ceil32(_1289) > _1289:
                                    mem[_1289 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                                return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_1289) + 32]
                            _1290 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                            mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                            mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                            if ceil32(_1290) > _1290:
                                mem[_1290 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                            return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_1290) + 32]
                        idx = 0
                        s = 0
                        while idx < stor356.length.field_1 % 128:
                            mem[idx + ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = stor356[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    mem[128] = stor354[arg1].field_0
                    idx = 128
                    s = 0
                    while stor354[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor354[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor356.length):
                        if bool(stor356.length) == uint255(stor356.length) * 0.5 < 32:
                            revert with 0, 34
                        if not bool(stor356.length):
                            mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = Mask(248, 8, stor356.length)
                        else:
                            if bool(stor356.length) != 1:
                                mem[64] = uint255(stor354[arg1].field_0) * 0.5
                                if ceil32(uint255(stor354[arg1].field_0) * 0.5) <= uint255(stor354[arg1].field_0) * 0.5:
                                    _2433 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                    mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                    mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                                    if ceil32(_2433) > _2433:
                                        mem[_2433 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                                    return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_2433) + 32]
                                _2434 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                                if ceil32(_2434) > _2434:
                                    mem[_2434 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                                return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_2434) + 32]
                            idx = 0
                            s = 0
                            while idx < uint255(stor356.length) * 0.5:
                                mem[idx + ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = stor356[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 160 len ceil32(uint255(stor354[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor354[arg1].field_0) * 0.5)]
                        mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 160] = 32
                        mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 192] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                        mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                        if ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]) <= mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]:
                            return Array(len=mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128], data=mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]), 
                        mem[mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128] + (uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 224] = 0
                        return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + (uint255(stor356.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]) + 32], 
                    if bool(stor356.length) == stor356.length.field_1 % 128 < 32:
                        revert with 0, 34
                    if not bool(stor356.length):
                        mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = Mask(248, 8, stor356.length)
                    else:
                        if bool(stor356.length) != 1:
                            mem[64] = uint255(stor354[arg1].field_0) * 0.5
                            if ceil32(uint255(stor354[arg1].field_0) * 0.5) <= uint255(stor354[arg1].field_0) * 0.5:
                                _2437 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                                mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                                if ceil32(_2437) > _2437:
                                    mem[_2437 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                                return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_2437) + 32]
                            _2438 = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                            mem[(uint255(stor354[arg1].field_0) * 0.5) + 32] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
                            mem[(uint255(stor354[arg1].field_0) * 0.5) + 64 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
                            if ceil32(_2438) > _2438:
                                mem[_2438 + (uint255(stor354[arg1].field_0) * 0.5) + 64] = 0
                            return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + 32 len ceil32(_2438) + 32]
                        idx = 0
                        s = 0
                        while idx < stor356.length.field_1 % 128:
                            mem[idx + ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160] = stor356[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
        mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + stor356.length.field_1 % 128 + 160 len ceil32(uint255(stor354[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor354[arg1].field_0) * 0.5)]
        mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + stor356.length.field_1 % 128 + 160] = 32
        mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + stor356.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]
        mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + stor356.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]
        if ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]) <= mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]:
            return Array(len=mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128], data=mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + stor356.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128])]), 
        mem[mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128] + (uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + stor356.length.field_1 % 128 + 224] = 0
        return 32, mem[(uint255(stor354[arg1].field_0) * 0.5) + ceil32(uint255(stor354[arg1].field_0) * 0.5) + stor356.length.field_1 % 128 + 192 len ceil32(mem[ceil32(uint255(stor354[arg1].field_0) * 0.5) + 128]) + 32], 
    if bool(stor354[arg1].field_0) == stor354[arg1].field_1 % 128 < 32:
        revert with 0, 34
    mem[96] = stor354[arg1].field_1 % 128
    if bool(stor354[arg1].field_0):
        if bool(stor354[arg1].field_0) == uint255(stor354[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor354[arg1].field_0):
            if bool(stor356.length):
                if bool(stor356.length) == uint255(stor356.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor356.length):
                    mem[ceil32(stor354[arg1].field_1 % 128) + 160] = Mask(248, 8, stor356.length)
                else:
                    if bool(stor356.length) != 1:
                        mem[64] = stor354[arg1].field_1 % 128
                        if ceil32(stor354[arg1].field_1 % 128) <= stor354[arg1].field_1 % 128:
                            _1293 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                            mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                            mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                            if ceil32(_1293) > _1293:
                                mem[_1293 + stor354[arg1].field_1 % 128 + 64] = 0
                            return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_1293) + 32]
                        _1294 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                        mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                        mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                        if ceil32(_1294) > _1294:
                            mem[_1294 + stor354[arg1].field_1 % 128 + 64] = 0
                        return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_1294) + 32]
                    idx = 0
                    s = 0
                    while idx < uint255(stor356.length) * 0.5:
                        mem[idx + ceil32(stor354[arg1].field_1 % 128) + 160] = stor356[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 160 len ceil32(stor354[arg1].field_1 % 128)] = mem[128 len ceil32(stor354[arg1].field_1 % 128)]
                mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 160] = 32
                mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 192] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128]) <= mem[ceil32(stor354[arg1].field_1 % 128) + 128]:
                    return Array(len=mem[ceil32(stor354[arg1].field_1 % 128) + 128], data=mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]), 
                mem[mem[ceil32(stor354[arg1].field_1 % 128) + 128] + stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 224] = 0
                return 32, mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 192 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128]) + 32], 
            if bool(stor356.length) == stor356.length.field_1 % 128 < 32:
                revert with 0, 34
            if not bool(stor356.length):
                mem[ceil32(stor354[arg1].field_1 % 128) + 160] = Mask(248, 8, stor356.length)
            else:
                if bool(stor356.length) != 1:
                    mem[64] = stor354[arg1].field_1 % 128
                    if ceil32(stor354[arg1].field_1 % 128) <= stor354[arg1].field_1 % 128:
                        _1297 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                        mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                        mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                        if ceil32(_1297) > _1297:
                            mem[_1297 + stor354[arg1].field_1 % 128 + 64] = 0
                        return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_1297) + 32]
                    _1298 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                    mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                    mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                    if ceil32(_1298) > _1298:
                        mem[_1298 + stor354[arg1].field_1 % 128 + 64] = 0
                    return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_1298) + 32]
                idx = 0
                s = 0
                while idx < stor356.length.field_1 % 128:
                    mem[idx + ceil32(stor354[arg1].field_1 % 128) + 160] = stor356[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
        else:
            if 31 >= uint255(stor354[arg1].field_0) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor354[arg1].field_8)
                if bool(stor356.length):
                    if bool(stor356.length) == uint255(stor356.length) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(stor356.length):
                        mem[ceil32(stor354[arg1].field_1 % 128) + 160] = Mask(248, 8, stor356.length)
                    else:
                        if bool(stor356.length) != 1:
                            mem[64] = stor354[arg1].field_1 % 128
                            if ceil32(stor354[arg1].field_1 % 128) <= stor354[arg1].field_1 % 128:
                                _1303 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                                mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                                mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                                if ceil32(_1303) > _1303:
                                    mem[_1303 + stor354[arg1].field_1 % 128 + 64] = 0
                                return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_1303) + 32]
                            _1304 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                            mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                            mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                            if ceil32(_1304) > _1304:
                                mem[_1304 + stor354[arg1].field_1 % 128 + 64] = 0
                            return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_1304) + 32]
                        idx = 0
                        s = 0
                        while idx < uint255(stor356.length) * 0.5:
                            mem[idx + ceil32(stor354[arg1].field_1 % 128) + 160] = stor356[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 160 len ceil32(stor354[arg1].field_1 % 128)] = mem[128 len ceil32(stor354[arg1].field_1 % 128)]
                    mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 160] = 32
                    mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 192] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                    mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128]) <= mem[ceil32(stor354[arg1].field_1 % 128) + 128]:
                        return Array(len=mem[ceil32(stor354[arg1].field_1 % 128) + 128], data=mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]), 
                    mem[mem[ceil32(stor354[arg1].field_1 % 128) + 128] + stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 224] = 0
                    return 32, mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 192 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128]) + 32], 
                if bool(stor356.length) == stor356.length.field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor356.length):
                    mem[ceil32(stor354[arg1].field_1 % 128) + 160] = Mask(248, 8, stor356.length)
                else:
                    if bool(stor356.length) != 1:
                        mem[64] = stor354[arg1].field_1 % 128
                        if ceil32(stor354[arg1].field_1 % 128) <= stor354[arg1].field_1 % 128:
                            _1307 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                            mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                            mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                            if ceil32(_1307) > _1307:
                                mem[_1307 + stor354[arg1].field_1 % 128 + 64] = 0
                            return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_1307) + 32]
                        _1308 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                        mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                        mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                        if ceil32(_1308) > _1308:
                            mem[_1308 + stor354[arg1].field_1 % 128 + 64] = 0
                        return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_1308) + 32]
                    idx = 0
                    s = 0
                    while idx < stor356.length.field_1 % 128:
                        mem[idx + ceil32(stor354[arg1].field_1 % 128) + 160] = stor356[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            else:
                mem[128] = stor354[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor354[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor354[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor356.length):
                    if bool(stor356.length) == uint255(stor356.length) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(stor356.length):
                        mem[ceil32(stor354[arg1].field_1 % 128) + 160] = Mask(248, 8, stor356.length)
                    else:
                        if bool(stor356.length) != 1:
                            mem[64] = stor354[arg1].field_1 % 128
                            if ceil32(stor354[arg1].field_1 % 128) <= stor354[arg1].field_1 % 128:
                                _2449 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                                mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                                mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                                if ceil32(_2449) > _2449:
                                    mem[_2449 + stor354[arg1].field_1 % 128 + 64] = 0
                                return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_2449) + 32]
                            _2450 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                            mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                            mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                            if ceil32(_2450) > _2450:
                                mem[_2450 + stor354[arg1].field_1 % 128 + 64] = 0
                            return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_2450) + 32]
                        idx = 0
                        s = 0
                        while idx < uint255(stor356.length) * 0.5:
                            mem[idx + ceil32(stor354[arg1].field_1 % 128) + 160] = stor356[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 160 len ceil32(stor354[arg1].field_1 % 128)] = mem[128 len ceil32(stor354[arg1].field_1 % 128)]
                    mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 160] = 32
                    mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 192] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                    mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128]) <= mem[ceil32(stor354[arg1].field_1 % 128) + 128]:
                        return Array(len=mem[ceil32(stor354[arg1].field_1 % 128) + 128], data=mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]), 
                    mem[mem[ceil32(stor354[arg1].field_1 % 128) + 128] + stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 224] = 0
                    return 32, mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 192 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128]) + 32], 
                if bool(stor356.length) == stor356.length.field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor356.length):
                    mem[ceil32(stor354[arg1].field_1 % 128) + 160] = Mask(248, 8, stor356.length)
                else:
                    if bool(stor356.length) != 1:
                        mem[64] = stor354[arg1].field_1 % 128
                        if ceil32(stor354[arg1].field_1 % 128) <= stor354[arg1].field_1 % 128:
                            _2453 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                            mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                            mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                            if ceil32(_2453) > _2453:
                                mem[_2453 + stor354[arg1].field_1 % 128 + 64] = 0
                            return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_2453) + 32]
                        _2454 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                        mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                        mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                        if ceil32(_2454) > _2454:
                            mem[_2454 + stor354[arg1].field_1 % 128 + 64] = 0
                        return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_2454) + 32]
                    idx = 0
                    s = 0
                    while idx < stor356.length.field_1 % 128:
                        mem[idx + ceil32(stor354[arg1].field_1 % 128) + 160] = stor356[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
    else:
        if bool(stor354[arg1].field_0) == stor354[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if not stor354[arg1].field_1 % 128:
            if bool(stor356.length):
                if bool(stor356.length) == uint255(stor356.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor356.length):
                    mem[ceil32(stor354[arg1].field_1 % 128) + 160] = Mask(248, 8, stor356.length)
                else:
                    if bool(stor356.length) != 1:
                        mem[64] = stor354[arg1].field_1 % 128
                        if ceil32(stor354[arg1].field_1 % 128) <= stor354[arg1].field_1 % 128:
                            _1311 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                            mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                            mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                            if ceil32(_1311) > _1311:
                                mem[_1311 + stor354[arg1].field_1 % 128 + 64] = 0
                            return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_1311) + 32]
                        _1312 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                        mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                        mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                        if ceil32(_1312) > _1312:
                            mem[_1312 + stor354[arg1].field_1 % 128 + 64] = 0
                        return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_1312) + 32]
                    idx = 0
                    s = 0
                    while idx < uint255(stor356.length) * 0.5:
                        mem[idx + ceil32(stor354[arg1].field_1 % 128) + 160] = stor356[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 160 len ceil32(stor354[arg1].field_1 % 128)] = mem[128 len ceil32(stor354[arg1].field_1 % 128)]
                mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 160] = 32
                mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 192] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128]) <= mem[ceil32(stor354[arg1].field_1 % 128) + 128]:
                    return Array(len=mem[ceil32(stor354[arg1].field_1 % 128) + 128], data=mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]), 
                mem[mem[ceil32(stor354[arg1].field_1 % 128) + 128] + stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 224] = 0
                return 32, mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 192 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128]) + 32], 
            if bool(stor356.length) == stor356.length.field_1 % 128 < 32:
                revert with 0, 34
            if not bool(stor356.length):
                mem[ceil32(stor354[arg1].field_1 % 128) + 160] = Mask(248, 8, stor356.length)
            else:
                if bool(stor356.length) != 1:
                    mem[64] = stor354[arg1].field_1 % 128
                    if ceil32(stor354[arg1].field_1 % 128) <= stor354[arg1].field_1 % 128:
                        _1315 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                        mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                        mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                        if ceil32(_1315) > _1315:
                            mem[_1315 + stor354[arg1].field_1 % 128 + 64] = 0
                        return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_1315) + 32]
                    _1316 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                    mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                    mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                    if ceil32(_1316) > _1316:
                        mem[_1316 + stor354[arg1].field_1 % 128 + 64] = 0
                    return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_1316) + 32]
                idx = 0
                s = 0
                while idx < stor356.length.field_1 % 128:
                    mem[idx + ceil32(stor354[arg1].field_1 % 128) + 160] = stor356[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
        else:
            if 31 >= stor354[arg1].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor354[arg1].field_8)
                if bool(stor356.length):
                    if bool(stor356.length) == uint255(stor356.length) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(stor356.length):
                        mem[ceil32(stor354[arg1].field_1 % 128) + 160] = Mask(248, 8, stor356.length)
                    else:
                        if bool(stor356.length) != 1:
                            mem[64] = stor354[arg1].field_1 % 128
                            if ceil32(stor354[arg1].field_1 % 128) <= stor354[arg1].field_1 % 128:
                                _1321 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                                mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                                mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                                if ceil32(_1321) > _1321:
                                    mem[_1321 + stor354[arg1].field_1 % 128 + 64] = 0
                                return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_1321) + 32]
                            _1322 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                            mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                            mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                            if ceil32(_1322) > _1322:
                                mem[_1322 + stor354[arg1].field_1 % 128 + 64] = 0
                            return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_1322) + 32]
                        idx = 0
                        s = 0
                        while idx < uint255(stor356.length) * 0.5:
                            mem[idx + ceil32(stor354[arg1].field_1 % 128) + 160] = stor356[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 160 len ceil32(stor354[arg1].field_1 % 128)] = mem[128 len ceil32(stor354[arg1].field_1 % 128)]
                    mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 160] = 32
                    mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 192] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                    mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128]) <= mem[ceil32(stor354[arg1].field_1 % 128) + 128]:
                        return Array(len=mem[ceil32(stor354[arg1].field_1 % 128) + 128], data=mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]), 
                    mem[mem[ceil32(stor354[arg1].field_1 % 128) + 128] + stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 224] = 0
                    return 32, mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 192 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128]) + 32], 
                if bool(stor356.length) == stor356.length.field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor356.length):
                    mem[ceil32(stor354[arg1].field_1 % 128) + 160] = Mask(248, 8, stor356.length)
                else:
                    if bool(stor356.length) != 1:
                        mem[64] = stor354[arg1].field_1 % 128
                        if ceil32(stor354[arg1].field_1 % 128) <= stor354[arg1].field_1 % 128:
                            _1325 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                            mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                            mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                            if ceil32(_1325) > _1325:
                                mem[_1325 + stor354[arg1].field_1 % 128 + 64] = 0
                            return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_1325) + 32]
                        _1326 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                        mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                        mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                        if ceil32(_1326) > _1326:
                            mem[_1326 + stor354[arg1].field_1 % 128 + 64] = 0
                        return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_1326) + 32]
                    idx = 0
                    s = 0
                    while idx < stor356.length.field_1 % 128:
                        mem[idx + ceil32(stor354[arg1].field_1 % 128) + 160] = stor356[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            else:
                mem[128] = stor354[arg1].field_0
                idx = 128
                s = 0
                while stor354[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor354[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor356.length):
                    if bool(stor356.length) == uint255(stor356.length) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(stor356.length):
                        mem[ceil32(stor354[arg1].field_1 % 128) + 160] = Mask(248, 8, stor356.length)
                    else:
                        if bool(stor356.length) != 1:
                            mem[64] = stor354[arg1].field_1 % 128
                            if ceil32(stor354[arg1].field_1 % 128) <= stor354[arg1].field_1 % 128:
                                _2465 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                                mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                                mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                                if ceil32(_2465) > _2465:
                                    mem[_2465 + stor354[arg1].field_1 % 128 + 64] = 0
                                return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_2465) + 32]
                            _2466 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                            mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                            mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                            if ceil32(_2466) > _2466:
                                mem[_2466 + stor354[arg1].field_1 % 128 + 64] = 0
                            return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_2466) + 32]
                        idx = 0
                        s = 0
                        while idx < uint255(stor356.length) * 0.5:
                            mem[idx + ceil32(stor354[arg1].field_1 % 128) + 160] = stor356[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 160 len ceil32(stor354[arg1].field_1 % 128)] = mem[128 len ceil32(stor354[arg1].field_1 % 128)]
                    mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 160] = 32
                    mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 192] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                    mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128]) <= mem[ceil32(stor354[arg1].field_1 % 128) + 128]:
                        return Array(len=mem[ceil32(stor354[arg1].field_1 % 128) + 128], data=mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 224 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]), 
                    mem[mem[ceil32(stor354[arg1].field_1 % 128) + 128] + stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 224] = 0
                    return 32, mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + (uint255(stor356.length) * 0.5) + 192 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128]) + 32], 
                if bool(stor356.length) == stor356.length.field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor356.length):
                    mem[ceil32(stor354[arg1].field_1 % 128) + 160] = Mask(248, 8, stor356.length)
                else:
                    if bool(stor356.length) != 1:
                        mem[64] = stor354[arg1].field_1 % 128
                        if ceil32(stor354[arg1].field_1 % 128) <= stor354[arg1].field_1 % 128:
                            _2469 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                            mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                            mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                            if ceil32(_2469) > _2469:
                                mem[_2469 + stor354[arg1].field_1 % 128 + 64] = 0
                            return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_2469) + 32]
                        _2470 = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                        mem[stor354[arg1].field_1 % 128 + 32] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
                        mem[stor354[arg1].field_1 % 128 + 64 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
                        if ceil32(_2470) > _2470:
                            mem[_2470 + stor354[arg1].field_1 % 128 + 64] = 0
                        return 32, mem[stor354[arg1].field_1 % 128 + 32 len ceil32(_2470) + 32]
                    idx = 0
                    s = 0
                    while idx < stor356.length.field_1 % 128:
                        mem[idx + ceil32(stor354[arg1].field_1 % 128) + 160] = stor356[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
    mem[ceil32(stor354[arg1].field_1 % 128) + stor356.length.field_1 % 128 + 160 len ceil32(stor354[arg1].field_1 % 128)] = mem[128 len ceil32(stor354[arg1].field_1 % 128)]
    mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + stor356.length.field_1 % 128 + 160] = 32
    mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + stor356.length.field_1 % 128 + 192] = mem[ceil32(stor354[arg1].field_1 % 128) + 128]
    mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + stor356.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])] = mem[ceil32(stor354[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]
    if ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128]) <= mem[ceil32(stor354[arg1].field_1 % 128) + 128]:
        return Array(len=mem[ceil32(stor354[arg1].field_1 % 128) + 128], data=mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + stor356.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128])]), 
    mem[mem[ceil32(stor354[arg1].field_1 % 128) + 128] + stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + stor356.length.field_1 % 128 + 224] = 0
    return 32, mem[stor354[arg1].field_1 % 128 + ceil32(stor354[arg1].field_1 % 128) + stor356.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor354[arg1].field_1 % 128) + 128]) + 32], 
}



}
