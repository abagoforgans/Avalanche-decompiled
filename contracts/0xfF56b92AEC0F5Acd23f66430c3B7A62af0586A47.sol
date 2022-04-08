contract main {




// =====================  Runtime code  =====================


#
#  - getMassClassString(uint256 arg1)
#  - getMassString(uint256 arg1)
#  - getWeaponSlots(uint256 arg1)
#  - getMass(uint256 arg1)
#  - getWeaponSlotsText(uint256 arg1)
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
uint256 stor10;
address owner;
uint256 stor12;
uint256 stor13;
uint256 stor14;
array of struct stor15;
array of struct stor16;
array of struct stor17;
array of struct stor18;
array of struct stor19;
array of struct stor20;

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

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
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

function getMassClass(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        if sha3(Mask(88, 168, 'MASS_CLASS', '0', 0) >> 168) % 100 < 35:
            return 0
        if sha3(Mask(88, 168, 'MASS_CLASS', '0', 0) >> 168) % 100 < 70:
            return 1
        if sha3(Mask(88, 168, 'MASS_CLASS', '0', 0) >> 168) % 100 >= 95:
            return 3
    else:
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
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _225 = mem[64]
            mem[mem[64] + 32] = 'MASS_CLASS'
            _239 = mem[96]
            mem[mem[64] + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _383 = mem[64]
                mem[mem[64]] = mem[96] + 10
                mem[64] = mem[64] + _239 + 42
                _391 = mem[_383]
                mem[_225 + _239 + 74 len ceil32(mem[_383])] = mem[_383 + 32 len ceil32(mem[_383])]
                if ceil32(_391) > _391:
                    mem[_225 + _239 + _391 + 74] = 0
                mem[64] = _225 + _239 + _391 + 74
                if sha3(mem[_225 + _239 + 74 len _391]) % 100 < 35:
                    return 0
                if sha3(mem[_225 + _239 + 74 len _391]) % 100 < 70:
                    return 1
                if sha3(mem[_225 + _239 + 74 len _391]) % 100 >= 95:
                    return 3
            else:
                mem[mem[64] + mem[96] + 42] = 0
                _386 = mem[64]
                mem[mem[64]] = _225 + _239 + -mem[64] + 10
                mem[64] = _225 + _239 + 42
                _393 = mem[_386]
                mem[_225 + _239 + 74 len ceil32(mem[_386])] = mem[_386 + 32 len ceil32(mem[_386])]
                if ceil32(_393) > _393:
                    mem[_225 + _239 + _393 + 74] = 0
                mem[64] = _225 + _239 + _393 + 74
                if sha3(mem[_225 + _239 + 74 len _393]) % 100 < 35:
                    return 0
                if sha3(mem[_225 + _239 + 74 len _393]) % 100 < 70:
                    return 1
                if sha3(mem[_225 + _239 + 74 len _393]) % 100 >= 95:
                    return 3
        else:
            mem[128 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _226 = mem[64]
            mem[mem[64] + 32] = 'MASS_CLASS'
            _240 = mem[96]
            mem[mem[64] + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _384 = mem[64]
                mem[mem[64]] = mem[96] + 10
                mem[64] = mem[64] + _240 + 42
                _392 = mem[_384]
                mem[_226 + _240 + 74 len ceil32(mem[_384])] = mem[_384 + 32 len ceil32(mem[_384])]
                if ceil32(_392) > _392:
                    mem[_226 + _240 + _392 + 74] = 0
                mem[64] = _226 + _240 + _392 + 74
                if sha3(mem[_226 + _240 + 74 len _392]) % 100 < 35:
                    return 0
                if sha3(mem[_226 + _240 + 74 len _392]) % 100 < 70:
                    return 1
                if sha3(mem[_226 + _240 + 74 len _392]) % 100 >= 95:
                    return 3
            else:
                mem[mem[64] + mem[96] + 42] = 0
                _388 = mem[64]
                mem[mem[64]] = _226 + _240 + -mem[64] + 10
                mem[64] = _226 + _240 + 42
                _394 = mem[_388]
                mem[_226 + _240 + 74 len ceil32(mem[_388])] = mem[_388 + 32 len ceil32(mem[_388])]
                if ceil32(_394) > _394:
                    mem[_226 + _240 + _394 + 74] = 0
                mem[64] = _226 + _240 + _394 + 74
                if sha3(mem[_226 + _240 + 74 len _394]) % 100 < 35:
                    return 0
                if sha3(mem[_226 + _240 + 74 len _394]) % 100 < 70:
                    return 1
                if sha3(mem[_226 + _240 + 74 len _394]) % 100 >= 95:
                    return 3
    return 2
}

function ownerClaim(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor14 > -arg1 - 1:
        revert with 'NH{q', 17
    if stor14 + arg1 >= 401:
        revert with 0, 'Max supply exceeded'
    idx = 0
    while idx < arg1:
        stor14++
        if stor14 > -7601:
            revert with 'NH{q', 17
        _95 = mem[64]
        mem[64] = mem[64] + 32
        mem[_95] = 0
        if not owner:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor14 + 7600]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor14 + 7600] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor14 + 7600
        if owner:
            tokenOfOwnerByIndex[stor11][stor3[stor11]] = stor14 + 7600
            stor7[stor14 + 7600] = balanceOf[stor11]
            if balanceOf[stor11] > -2:
                revert with 'NH{q', 17
            balanceOf[stor11]++
            mem[0] = stor14 + 7600
            mem[32] = 2
            ownerOf[stor14 + 7600] = owner
            emit Transfer(0, owner, stor14 + 7600);
            if ext_code.size(owner) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor14 + 7600
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_95 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(owner)
                call owner.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor14 + 7600, 128, 0
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
                _189 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_189] == Mask(32, 224, mem[_189])
                if Mask(32, 224, mem[_189]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[stor14 + 7600] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[stor14 + 7600]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor14 + 7600]
            stor9[stor14 + 7600] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[stor11] > -2:
                revert with 'NH{q', 17
            balanceOf[stor11]++
            mem[0] = stor14 + 7600
            mem[32] = 2
            ownerOf[stor14 + 7600] = owner
            emit Transfer(0, owner, stor14 + 7600);
            if ext_code.size(owner) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor14 + 7600
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_95 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(owner)
                call owner.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor14 + 7600, 128, 0
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
                _190 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_190] == Mask(32, 224, mem[_190])
                if Mask(32, 224, mem[_190]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor10 = 1
}

function claim(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if arg1 > 20:
        revert with 0, 'Can only mint up to 20'
    if stor13 > -arg1 - 1:
        revert with 'NH{q', 17
    if stor13 + arg1 >= 7601:
        revert with 0, 'Max supply exceeded'
    if stor12 and arg1 > -1 / stor12:
        revert with 'NH{q', 17
    if stor12 * arg1 > msg.value:
        revert with 0, 'AVAX value sent is too low'
    idx = 0
    while idx < arg1:
        stor13++
        _97 = mem[64]
        mem[64] = mem[64] + 32
        mem[_97] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor13]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor13] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor13
        if msg.sender:
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor13
            stor7[stor13] = balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor13
            mem[32] = 2
            ownerOf[stor13] = msg.sender
            emit Transfer(0, msg.sender, stor13);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor13
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_97 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
                _191 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_191] == Mask(32, 224, mem[_191])
                if Mask(32, 224, mem[_191]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[stor13] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[stor13]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor13]
            stor9[stor13] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor13
            mem[32] = 2
            ownerOf[stor13] = msg.sender
            emit Transfer(0, msg.sender, stor13);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor13
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_97 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
                _192 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_192] == Mask(32, 224, mem[_192])
                if Mask(32, 224, mem[_192]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor10 = 1
}

function getModSlots(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 8
    mem[128] = 'MODSLOTS'
    if not arg1:
        if sha3(Mask(72, 184, 'MODSLOTS', '0', 0) >> 184) % 3 > -2:
            revert with 'NH{q', 17
        return ((sha3(Mask(72, 184, 'MODSLOTS', '0', 0) >> 184) % 3) + 1)
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
    mem[160] = s
    mem[64] = ceil32(s) + 192
    if not s:
        t = s
        idx = arg1
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
        _258 = mem[64]
        _262 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _460 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(_460) <= _460:
                _612 = mem[64]
                mem[mem[64]] = _258 + _262 + _460 - mem[64]
                mem[64] = _258 + _262 + _460 + 32
                _628 = mem[_612]
                mem[_258 + _262 + _460 + 64 len ceil32(mem[_612])] = mem[_612 + 32 len ceil32(mem[_612])]
                mem[64] = _258 + _262 + _460 + _628 + 64
                if sha3(mem[_258 + _262 + _460 + 64 len _628]) % 3 > -2:
                    revert with 'NH{q', 17
                mem[_258 + _262 + _460 + _628 + 64] = (sha3(mem[_258 + _262 + _460 + 64 len _628]) % 3) + 1
                return memory
                  from _258 + _262 + _460 + _628 + 64
                   len 32
            mem[_258 + _262 + _460 + 32] = 0
            _617 = mem[64]
            mem[mem[64]] = _258 + _262 + _460 - mem[64]
            mem[64] = _258 + _262 + _460 + 32
            _632 = mem[_617]
            mem[_258 + _262 + _460 + 64 len ceil32(mem[_617])] = mem[_617 + 32 len ceil32(mem[_617])]
            mem[64] = _258 + _262 + _460 + _632 + 64
            if sha3(mem[_258 + _262 + _460 + 64 len _632]) % 3 > -2:
                revert with 'NH{q', 17
            mem[_258 + _262 + _460 + _632 + 64] = (sha3(mem[_258 + _262 + _460 + 64 len _632]) % 3) + 1
            return memory
              from _258 + _262 + _460 + _632 + 64
               len 32
        mem[mem[64] + mem[96] + 32] = 0
        _474 = mem[160]
        mem[_258 + _262 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(_474) <= _474:
            _613 = mem[64]
            mem[mem[64]] = _258 + _262 + _474 - mem[64]
            mem[64] = _258 + _262 + _474 + 32
            _629 = mem[_613]
            mem[_258 + _262 + _474 + 64 len ceil32(mem[_613])] = mem[_613 + 32 len ceil32(mem[_613])]
            mem[64] = _258 + _262 + _474 + _629 + 64
            if sha3(mem[_258 + _262 + _474 + 64 len _629]) % 3 > -2:
                revert with 'NH{q', 17
            mem[_258 + _262 + _474 + _629 + 64] = (sha3(mem[_258 + _262 + _474 + 64 len _629]) % 3) + 1
            return memory
              from _258 + _262 + _474 + _629 + 64
               len 32
        mem[_258 + _262 + _474 + 32] = 0
        _619 = mem[64]
        mem[mem[64]] = _258 + _262 + _474 - mem[64]
        mem[64] = _258 + _262 + _474 + 32
        _633 = mem[_619]
        mem[_258 + _262 + _474 + 64 len ceil32(mem[_619])] = mem[_619 + 32 len ceil32(mem[_619])]
        mem[64] = _258 + _262 + _474 + _633 + 64
        if sha3(mem[_258 + _262 + _474 + 64 len _633]) % 3 > -2:
            revert with 'NH{q', 17
        mem[_258 + _262 + _474 + _633 + 64] = (sha3(mem[_258 + _262 + _474 + 64 len _633]) % 3) + 1
        return memory
          from _258 + _262 + _474 + _633 + 64
           len 32
    mem[192 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
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
    _259 = mem[64]
    _263 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _461 = mem[160]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(_461) <= _461:
            _614 = mem[64]
            mem[mem[64]] = _259 + _263 + _461 - mem[64]
            mem[64] = _259 + _263 + _461 + 32
            _630 = mem[_614]
            mem[_259 + _263 + _461 + 64 len ceil32(mem[_614])] = mem[_614 + 32 len ceil32(mem[_614])]
            mem[64] = _259 + _263 + _461 + _630 + 64
            if sha3(mem[_259 + _263 + _461 + 64 len _630]) % 3 > -2:
                revert with 'NH{q', 17
            mem[_259 + _263 + _461 + _630 + 64] = (sha3(mem[_259 + _263 + _461 + 64 len _630]) % 3) + 1
            return memory
              from _259 + _263 + _461 + _630 + 64
               len 32
        mem[_259 + _263 + _461 + 32] = 0
        _621 = mem[64]
        mem[mem[64]] = _259 + _263 + _461 - mem[64]
        mem[64] = _259 + _263 + _461 + 32
        _634 = mem[_621]
        mem[_259 + _263 + _461 + 64 len ceil32(mem[_621])] = mem[_621 + 32 len ceil32(mem[_621])]
        mem[64] = _259 + _263 + _461 + _634 + 64
        if sha3(mem[_259 + _263 + _461 + 64 len _634]) % 3 > -2:
            revert with 'NH{q', 17
        mem[_259 + _263 + _461 + _634 + 64] = (sha3(mem[_259 + _263 + _461 + 64 len _634]) % 3) + 1
        return memory
          from _259 + _263 + _461 + _634 + 64
           len 32
    mem[mem[64] + mem[96] + 32] = 0
    _475 = mem[160]
    mem[_259 + _263 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
    if ceil32(_475) <= _475:
        _615 = mem[64]
        mem[mem[64]] = _259 + _263 + _475 - mem[64]
        mem[64] = _259 + _263 + _475 + 32
        _631 = mem[_615]
        mem[_259 + _263 + _475 + 64 len ceil32(mem[_615])] = mem[_615 + 32 len ceil32(mem[_615])]
        mem[64] = _259 + _263 + _475 + _631 + 64
        if sha3(mem[_259 + _263 + _475 + 64 len _631]) % 3 > -2:
            revert with 'NH{q', 17
        mem[_259 + _263 + _475 + _631 + 64] = (sha3(mem[_259 + _263 + _475 + 64 len _631]) % 3) + 1
        return memory
          from _259 + _263 + _475 + _631 + 64
           len 32
    mem[_259 + _263 + _475 + 32] = 0
    _623 = mem[64]
    mem[mem[64]] = _259 + _263 + _475 - mem[64]
    mem[64] = _259 + _263 + _475 + 32
    _635 = mem[_623]
    mem[_259 + _263 + _475 + 64 len ceil32(mem[_623])] = mem[_623 + 32 len ceil32(mem[_623])]
    mem[64] = _259 + _263 + _475 + _635 + 64
    if sha3(mem[_259 + _263 + _475 + 64 len _635]) % 3 > -2:
        revert with 'NH{q', 17
    mem[_259 + _263 + _475 + _635 + 64] = (sha3(mem[_259 + _263 + _475 + 64 len _635]) % 3) + 1
    return memory
      from _259 + _263 + _475 + _635 + 64
       len 32
}

function getBody(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 4
    mem[128] = 'BODY'
    mem[64] = (32 * stor15.length) + 192
    mem[160] = stor15.length
    s = 192
    idx = 0
    while idx < stor15.length:
        mem[0] = 15
        if stor15[idx].field_0:
            if stor15[idx].field_0 == stor15[idx].field_1 < 32:
                revert with 'NH{q', 34
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(stor15[idx].field_1) + 32
            mem[_124] = stor15[idx].field_1
            if stor15[idx].field_0:
                if stor15[idx].field_0 == stor15[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor15[idx].field_1:
                    if 31 >= stor15[idx].field_1:
                        mem[_124 + 32] = 256 * stor15[idx].field_8
                    else:
                        mem[0] = sha3(15) + idx
                        mem[_124 + 32] = stor15[idx].field_0
                        t = _124 + 32
                        u = sha3(mem[0])
                        while _124 + stor15[idx].field_1 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if stor15[idx].field_0 == stor15[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor15[idx].field_1:
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor15[idx].field_1:
                mem[_124 + 32] = 256 * stor15[idx].field_8
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(15) + idx
            mem[_124 + 32] = stor15[idx].field_0
            t = _124 + 32
            u = sha3(mem[0])
            while _124 + stor15[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _124
            t = t + 32
            u = u + 1
            continue 
        if stor15[idx].field_0 == stor15[idx].field_1 < 32:
            revert with 'NH{q', 34
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(stor15[idx].field_1) + 32
        mem[_126] = stor15[idx].field_1
        if stor15[idx].field_0:
            if stor15[idx].field_0 == stor15[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor15[idx].field_1:
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor15[idx].field_1:
                mem[_126 + 32] = 256 * stor15[idx].field_8
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(15) + idx
            mem[_126 + 32] = stor15[idx].field_0
            t = _126 + 32
            u = sha3(mem[0])
            while _126 + stor15[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _126
            t = t + 32
            u = u + 1
            continue 
        if stor15[idx].field_0 == stor15[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor15[idx].field_1:
            if 31 >= stor15[idx].field_1:
                mem[_126 + 32] = 256 * stor15[idx].field_8
            else:
                mem[0] = sha3(15) + idx
                mem[_126 + 32] = stor15[idx].field_0
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + stor15[idx].field_1 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _126
        s = s + 32
        idx = idx + 1
        continue 
    if not arg1:
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 1
        mem[_123 + 32] = '0'
        _125 = mem[64]
        _127 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            mem[mem[64] + mem[96] + 32] = '0'
            mem[_125 + _127 + 33] = 0
            _584 = mem[64]
            mem[mem[64]] = _125 + _127 + -mem[64] + 1
            mem[64] = _125 + _127 + 33
            _591 = mem[_584]
            mem[_125 + _127 + 65 len ceil32(mem[_584])] = mem[_584 + 32 len ceil32(mem[_584])]
            if ceil32(_591) <= _591:
                mem[_125 + _127 + 33] = _591
                mem[64] = _125 + _127 + _591 + 65
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _957 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
                mem[_125 + _127 + _591 + 65] = 32
                _992 = mem[_957]
                mem[_125 + _127 + _591 + 97] = mem[_957]
                mem[_125 + _127 + _591 + 129 len ceil32(_992)] = mem[_957 + 32 len ceil32(_992)]
                if ceil32(_992) > _992:
                    mem[_125 + _127 + _591 + _992 + 129] = 0
                return 32, mem[_125 + _127 + _591 + 97 len ceil32(_992) + 32]
            mem[_125 + _127 + _591 + 65] = 0
            mem[_125 + _127 + 33] = _591
            mem[64] = _125 + _127 + _591 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _964 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
            mem[_125 + _127 + _591 + 65] = 32
            _998 = mem[_964]
            mem[_125 + _127 + _591 + 97] = mem[_964]
            mem[_125 + _127 + _591 + 129 len ceil32(_998)] = mem[_964 + 32 len ceil32(_998)]
            if ceil32(_998) > _998:
                mem[_125 + _127 + _591 + _998 + 129] = 0
            return 32, mem[_125 + _127 + _591 + 97 len ceil32(_998) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        mem[_125 + _127 + 32] = '0'
        mem[_125 + _127 + 33] = 0
        _586 = mem[64]
        mem[mem[64]] = _125 + _127 + -mem[64] + 1
        mem[64] = _125 + _127 + 33
        _592 = mem[_586]
        mem[_125 + _127 + 65 len ceil32(mem[_586])] = mem[_586 + 32 len ceil32(mem[_586])]
        if ceil32(_592) <= _592:
            mem[_125 + _127 + 33] = _592
            mem[64] = _125 + _127 + _592 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _961 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
            mem[_125 + _127 + _592 + 65] = 32
            _994 = mem[_961]
            mem[_125 + _127 + _592 + 97] = mem[_961]
            mem[_125 + _127 + _592 + 129 len ceil32(_994)] = mem[_961 + 32 len ceil32(_994)]
            if ceil32(_994) > _994:
                mem[_125 + _127 + _592 + _994 + 129] = 0
            return 32, mem[_125 + _127 + _592 + 97 len ceil32(_994) + 32]
        mem[_125 + _127 + _592 + 65] = 0
        mem[_125 + _127 + 33] = _592
        mem[64] = _125 + _127 + _592 + 65
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _966 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
        mem[_125 + _127 + _592 + 65] = 32
        _1000 = mem[_966]
        mem[_125 + _127 + _592 + 97] = mem[_966]
        mem[_125 + _127 + _592 + 129 len ceil32(_1000)] = mem[_966 + 32 len ceil32(_1000)]
        if ceil32(_1000) > _1000:
            mem[_125 + _127 + _592 + _1000 + 129] = 0
        return 32, mem[_125 + _127 + _592 + 97 len ceil32(_1000) + 32]
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
    _242 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_242]:
                revert with 'NH{q', 50
            mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _577 = mem[64]
        _581 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _923 = mem[_242]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
            if ceil32(_923) <= _923:
                _1227 = mem[64]
                mem[mem[64]] = _577 + _581 + _923 - mem[64]
                mem[64] = _577 + _581 + _923 + 32
                _1259 = mem[_1227]
                mem[_577 + _581 + _923 + 64 len ceil32(mem[_1227])] = mem[_1227 + 32 len ceil32(mem[_1227])]
                if ceil32(_1259) <= _1259:
                    mem[_577 + _581 + _923 + 32] = _1259
                    mem[64] = _577 + _581 + _923 + _1259 + 64
                    if not mem[160]:
                        revert with 'NH{q', 18
                    if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                        revert with 'NH{q', 50
                    _1531 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                    mem[_577 + _581 + _923 + _1259 + 64] = 32
                    _1571 = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 96] = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1571)] = mem[_1531 + 32 len ceil32(_1571)]
                    if ceil32(_1571) > _1571:
                        mem[_577 + _581 + _923 + _1259 + _1571 + 128] = 0
                    return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1571) + 32]
                mem[_577 + _581 + _923 + _1259 + 64] = 0
                mem[_577 + _581 + _923 + 32] = _1259
                mem[64] = _577 + _581 + _923 + _1259 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1547 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1259 + 64] = 32
                _1579 = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 96] = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1579)] = mem[_1547 + 32 len ceil32(_1579)]
                if ceil32(_1579) > _1579:
                    mem[_577 + _581 + _923 + _1259 + _1579 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1579) + 32]
            mem[_577 + _581 + _923 + 32] = 0
            _1232 = mem[64]
            mem[mem[64]] = _577 + _581 + _923 - mem[64]
            mem[64] = _577 + _581 + _923 + 32
            _1263 = mem[_1232]
            mem[_577 + _581 + _923 + 64 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
            if ceil32(_1263) <= _1263:
                mem[_577 + _581 + _923 + 32] = _1263
                mem[64] = _577 + _581 + _923 + _1263 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1533 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1263 + 64] = 32
                _1572 = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 96] = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1572)] = mem[_1533 + 32 len ceil32(_1572)]
                if ceil32(_1572) > _1572:
                    mem[_577 + _581 + _923 + _1263 + _1572 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1572) + 32]
            mem[_577 + _581 + _923 + _1263 + 64] = 0
            mem[_577 + _581 + _923 + 32] = _1263
            mem[64] = _577 + _581 + _923 + _1263 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1548 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
            mem[_577 + _581 + _923 + _1263 + 64] = 32
            _1580 = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 96] = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1580)] = mem[_1548 + 32 len ceil32(_1580)]
            if ceil32(_1580) > _1580:
                mem[_577 + _581 + _923 + _1263 + _1580 + 128] = 0
            return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1580) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _941 = mem[_242]
        mem[_577 + _581 + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_941) <= _941:
            _1228 = mem[64]
            mem[mem[64]] = _577 + _581 + _941 - mem[64]
            mem[64] = _577 + _581 + _941 + 32
            _1260 = mem[_1228]
            mem[_577 + _581 + _941 + 64 len ceil32(mem[_1228])] = mem[_1228 + 32 len ceil32(mem[_1228])]
            if ceil32(_1260) <= _1260:
                mem[_577 + _581 + _941 + 32] = _1260
                mem[64] = _577 + _581 + _941 + _1260 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1535 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
                mem[_577 + _581 + _941 + _1260 + 64] = 32
                _1573 = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 96] = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1573)] = mem[_1535 + 32 len ceil32(_1573)]
                if ceil32(_1573) > _1573:
                    mem[_577 + _581 + _941 + _1260 + _1573 + 128] = 0
                return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1573) + 32]
            mem[_577 + _581 + _941 + _1260 + 64] = 0
            mem[_577 + _581 + _941 + 32] = _1260
            mem[64] = _577 + _581 + _941 + _1260 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1549 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1260 + 64] = 32
            _1581 = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 96] = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1581)] = mem[_1549 + 32 len ceil32(_1581)]
            if ceil32(_1581) > _1581:
                mem[_577 + _581 + _941 + _1260 + _1581 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1581) + 32]
        mem[_577 + _581 + _941 + 32] = 0
        _1234 = mem[64]
        mem[mem[64]] = _577 + _581 + _941 - mem[64]
        mem[64] = _577 + _581 + _941 + 32
        _1264 = mem[_1234]
        mem[_577 + _581 + _941 + 64 len ceil32(mem[_1234])] = mem[_1234 + 32 len ceil32(mem[_1234])]
        if ceil32(_1264) <= _1264:
            mem[_577 + _581 + _941 + 32] = _1264
            mem[64] = _577 + _581 + _941 + _1264 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1537 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1264 + 64] = 32
            _1574 = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 96] = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1574)] = mem[_1537 + 32 len ceil32(_1574)]
            if ceil32(_1574) > _1574:
                mem[_577 + _581 + _941 + _1264 + _1574 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1574) + 32]
        mem[_577 + _581 + _941 + _1264 + 64] = 0
        mem[_577 + _581 + _941 + 32] = _1264
        mem[64] = _577 + _581 + _941 + _1264 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1550 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
        mem[_577 + _581 + _941 + _1264 + 64] = 32
        _1582 = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 96] = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1582)] = mem[_1550 + 32 len ceil32(_1582)]
        if ceil32(_1582) > _1582:
            mem[_577 + _581 + _941 + _1264 + _1582 + 128] = 0
        return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1582) + 32]
    mem[_242 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_242]:
            revert with 'NH{q', 50
        mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _578 = mem[64]
    _582 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _924 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_924) <= _924:
            _1229 = mem[64]
            mem[mem[64]] = _578 + _582 + _924 - mem[64]
            mem[64] = _578 + _582 + _924 + 32
            _1261 = mem[_1229]
            mem[_578 + _582 + _924 + 64 len ceil32(mem[_1229])] = mem[_1229 + 32 len ceil32(mem[_1229])]
            if ceil32(_1261) <= _1261:
                mem[_578 + _582 + _924 + 32] = _1261
                mem[64] = _578 + _582 + _924 + _1261 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1539 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
                mem[_578 + _582 + _924 + _1261 + 64] = 32
                _1575 = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 96] = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1575)] = mem[_1539 + 32 len ceil32(_1575)]
                if ceil32(_1575) > _1575:
                    mem[_578 + _582 + _924 + _1261 + _1575 + 128] = 0
                return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1575) + 32]
            mem[_578 + _582 + _924 + _1261 + 64] = 0
            mem[_578 + _582 + _924 + 32] = _1261
            mem[64] = _578 + _582 + _924 + _1261 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1551 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1261 + 64] = 32
            _1583 = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 96] = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1583)] = mem[_1551 + 32 len ceil32(_1583)]
            if ceil32(_1583) > _1583:
                mem[_578 + _582 + _924 + _1261 + _1583 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1583) + 32]
        mem[_578 + _582 + _924 + 32] = 0
        _1236 = mem[64]
        mem[mem[64]] = _578 + _582 + _924 - mem[64]
        mem[64] = _578 + _582 + _924 + 32
        _1265 = mem[_1236]
        mem[_578 + _582 + _924 + 64 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
        if ceil32(_1265) <= _1265:
            mem[_578 + _582 + _924 + 32] = _1265
            mem[64] = _578 + _582 + _924 + _1265 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1541 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1265 + 64] = 32
            _1576 = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 96] = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1576)] = mem[_1541 + 32 len ceil32(_1576)]
            if ceil32(_1576) > _1576:
                mem[_578 + _582 + _924 + _1265 + _1576 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1576) + 32]
        mem[_578 + _582 + _924 + _1265 + 64] = 0
        mem[_578 + _582 + _924 + 32] = _1265
        mem[64] = _578 + _582 + _924 + _1265 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1552 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
        mem[_578 + _582 + _924 + _1265 + 64] = 32
        _1584 = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 96] = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1584)] = mem[_1552 + 32 len ceil32(_1584)]
        if ceil32(_1584) > _1584:
            mem[_578 + _582 + _924 + _1265 + _1584 + 128] = 0
        return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1584) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _942 = mem[_242]
    mem[_578 + _582 + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
    if ceil32(_942) <= _942:
        _1230 = mem[64]
        mem[mem[64]] = _578 + _582 + _942 - mem[64]
        mem[64] = _578 + _582 + _942 + 32
        _1262 = mem[_1230]
        mem[_578 + _582 + _942 + 64 len ceil32(mem[_1230])] = mem[_1230 + 32 len ceil32(mem[_1230])]
        if ceil32(_1262) <= _1262:
            mem[_578 + _582 + _942 + 32] = _1262
            mem[64] = _578 + _582 + _942 + _1262 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1543 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
            mem[_578 + _582 + _942 + _1262 + 64] = 32
            _1577 = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 96] = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1577)] = mem[_1543 + 32 len ceil32(_1577)]
            if ceil32(_1577) > _1577:
                mem[_578 + _582 + _942 + _1262 + _1577 + 128] = 0
            return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1577) + 32]
        mem[_578 + _582 + _942 + _1262 + 64] = 0
        mem[_578 + _582 + _942 + 32] = _1262
        mem[64] = _578 + _582 + _942 + _1262 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1553 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1262 + 64] = 32
        _1585 = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 96] = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1585)] = mem[_1553 + 32 len ceil32(_1585)]
        if ceil32(_1585) > _1585:
            mem[_578 + _582 + _942 + _1262 + _1585 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1585) + 32]
    mem[_578 + _582 + _942 + 32] = 0
    _1238 = mem[64]
    mem[mem[64]] = _578 + _582 + _942 - mem[64]
    mem[64] = _578 + _582 + _942 + 32
    _1266 = mem[_1238]
    mem[_578 + _582 + _942 + 64 len ceil32(mem[_1238])] = mem[_1238 + 32 len ceil32(mem[_1238])]
    if ceil32(_1266) <= _1266:
        mem[_578 + _582 + _942 + 32] = _1266
        mem[64] = _578 + _582 + _942 + _1266 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1545 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1266 + 64] = 32
        _1578 = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 96] = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1578)] = mem[_1545 + 32 len ceil32(_1578)]
        if ceil32(_1578) > _1578:
            mem[_578 + _582 + _942 + _1266 + _1578 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1578) + 32]
    mem[_578 + _582 + _942 + _1266 + 64] = 0
    mem[_578 + _582 + _942 + 32] = _1266
    mem[64] = _578 + _582 + _942 + _1266 + 64
    if not mem[160]:
        revert with 'NH{q', 18
    if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
        revert with 'NH{q', 50
    _1554 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
    mem[_578 + _582 + _942 + _1266 + 64] = 32
    _1586 = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 96] = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1586)] = mem[_1554 + 32 len ceil32(_1586)]
    if ceil32(_1586) > _1586:
        mem[_578 + _582 + _942 + _1266 + _1586 + 128] = 0
    return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1586) + 32]
}

function getColor(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 5
    mem[128] = 'COLOR'
    mem[64] = (32 * stor18.length) + 192
    mem[160] = stor18.length
    s = 192
    idx = 0
    while idx < stor18.length:
        mem[0] = 18
        if stor18[idx].field_0:
            if stor18[idx].field_0 == stor18[idx].field_1 < 32:
                revert with 'NH{q', 34
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(stor18[idx].field_1) + 32
            mem[_124] = stor18[idx].field_1
            if stor18[idx].field_0:
                if stor18[idx].field_0 == stor18[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor18[idx].field_1:
                    if 31 >= stor18[idx].field_1:
                        mem[_124 + 32] = 256 * stor18[idx].field_8
                    else:
                        mem[0] = sha3(18) + idx
                        mem[_124 + 32] = stor18[idx].field_0
                        t = _124 + 32
                        u = sha3(mem[0])
                        while _124 + stor18[idx].field_1 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if stor18[idx].field_0 == stor18[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor18[idx].field_1:
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor18[idx].field_1:
                mem[_124 + 32] = 256 * stor18[idx].field_8
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(18) + idx
            mem[_124 + 32] = stor18[idx].field_0
            t = _124 + 32
            u = sha3(mem[0])
            while _124 + stor18[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _124
            t = t + 32
            u = u + 1
            continue 
        if stor18[idx].field_0 == stor18[idx].field_1 < 32:
            revert with 'NH{q', 34
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(stor18[idx].field_1) + 32
        mem[_126] = stor18[idx].field_1
        if stor18[idx].field_0:
            if stor18[idx].field_0 == stor18[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor18[idx].field_1:
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor18[idx].field_1:
                mem[_126 + 32] = 256 * stor18[idx].field_8
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(18) + idx
            mem[_126 + 32] = stor18[idx].field_0
            t = _126 + 32
            u = sha3(mem[0])
            while _126 + stor18[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _126
            t = t + 32
            u = u + 1
            continue 
        if stor18[idx].field_0 == stor18[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor18[idx].field_1:
            if 31 >= stor18[idx].field_1:
                mem[_126 + 32] = 256 * stor18[idx].field_8
            else:
                mem[0] = sha3(18) + idx
                mem[_126 + 32] = stor18[idx].field_0
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + stor18[idx].field_1 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _126
        s = s + 32
        idx = idx + 1
        continue 
    if not arg1:
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 1
        mem[_123 + 32] = '0'
        _125 = mem[64]
        _127 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            mem[mem[64] + mem[96] + 32] = '0'
            mem[_125 + _127 + 33] = 0
            _584 = mem[64]
            mem[mem[64]] = _125 + _127 + -mem[64] + 1
            mem[64] = _125 + _127 + 33
            _591 = mem[_584]
            mem[_125 + _127 + 65 len ceil32(mem[_584])] = mem[_584 + 32 len ceil32(mem[_584])]
            if ceil32(_591) <= _591:
                mem[_125 + _127 + 33] = _591
                mem[64] = _125 + _127 + _591 + 65
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _957 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
                mem[_125 + _127 + _591 + 65] = 32
                _992 = mem[_957]
                mem[_125 + _127 + _591 + 97] = mem[_957]
                mem[_125 + _127 + _591 + 129 len ceil32(_992)] = mem[_957 + 32 len ceil32(_992)]
                if ceil32(_992) > _992:
                    mem[_125 + _127 + _591 + _992 + 129] = 0
                return 32, mem[_125 + _127 + _591 + 97 len ceil32(_992) + 32]
            mem[_125 + _127 + _591 + 65] = 0
            mem[_125 + _127 + 33] = _591
            mem[64] = _125 + _127 + _591 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _964 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
            mem[_125 + _127 + _591 + 65] = 32
            _998 = mem[_964]
            mem[_125 + _127 + _591 + 97] = mem[_964]
            mem[_125 + _127 + _591 + 129 len ceil32(_998)] = mem[_964 + 32 len ceil32(_998)]
            if ceil32(_998) > _998:
                mem[_125 + _127 + _591 + _998 + 129] = 0
            return 32, mem[_125 + _127 + _591 + 97 len ceil32(_998) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        mem[_125 + _127 + 32] = '0'
        mem[_125 + _127 + 33] = 0
        _586 = mem[64]
        mem[mem[64]] = _125 + _127 + -mem[64] + 1
        mem[64] = _125 + _127 + 33
        _592 = mem[_586]
        mem[_125 + _127 + 65 len ceil32(mem[_586])] = mem[_586 + 32 len ceil32(mem[_586])]
        if ceil32(_592) <= _592:
            mem[_125 + _127 + 33] = _592
            mem[64] = _125 + _127 + _592 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _961 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
            mem[_125 + _127 + _592 + 65] = 32
            _994 = mem[_961]
            mem[_125 + _127 + _592 + 97] = mem[_961]
            mem[_125 + _127 + _592 + 129 len ceil32(_994)] = mem[_961 + 32 len ceil32(_994)]
            if ceil32(_994) > _994:
                mem[_125 + _127 + _592 + _994 + 129] = 0
            return 32, mem[_125 + _127 + _592 + 97 len ceil32(_994) + 32]
        mem[_125 + _127 + _592 + 65] = 0
        mem[_125 + _127 + 33] = _592
        mem[64] = _125 + _127 + _592 + 65
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _966 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
        mem[_125 + _127 + _592 + 65] = 32
        _1000 = mem[_966]
        mem[_125 + _127 + _592 + 97] = mem[_966]
        mem[_125 + _127 + _592 + 129 len ceil32(_1000)] = mem[_966 + 32 len ceil32(_1000)]
        if ceil32(_1000) > _1000:
            mem[_125 + _127 + _592 + _1000 + 129] = 0
        return 32, mem[_125 + _127 + _592 + 97 len ceil32(_1000) + 32]
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
    _242 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_242]:
                revert with 'NH{q', 50
            mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _577 = mem[64]
        _581 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _923 = mem[_242]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
            if ceil32(_923) <= _923:
                _1227 = mem[64]
                mem[mem[64]] = _577 + _581 + _923 - mem[64]
                mem[64] = _577 + _581 + _923 + 32
                _1259 = mem[_1227]
                mem[_577 + _581 + _923 + 64 len ceil32(mem[_1227])] = mem[_1227 + 32 len ceil32(mem[_1227])]
                if ceil32(_1259) <= _1259:
                    mem[_577 + _581 + _923 + 32] = _1259
                    mem[64] = _577 + _581 + _923 + _1259 + 64
                    if not mem[160]:
                        revert with 'NH{q', 18
                    if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                        revert with 'NH{q', 50
                    _1531 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                    mem[_577 + _581 + _923 + _1259 + 64] = 32
                    _1571 = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 96] = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1571)] = mem[_1531 + 32 len ceil32(_1571)]
                    if ceil32(_1571) > _1571:
                        mem[_577 + _581 + _923 + _1259 + _1571 + 128] = 0
                    return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1571) + 32]
                mem[_577 + _581 + _923 + _1259 + 64] = 0
                mem[_577 + _581 + _923 + 32] = _1259
                mem[64] = _577 + _581 + _923 + _1259 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1547 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1259 + 64] = 32
                _1579 = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 96] = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1579)] = mem[_1547 + 32 len ceil32(_1579)]
                if ceil32(_1579) > _1579:
                    mem[_577 + _581 + _923 + _1259 + _1579 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1579) + 32]
            mem[_577 + _581 + _923 + 32] = 0
            _1232 = mem[64]
            mem[mem[64]] = _577 + _581 + _923 - mem[64]
            mem[64] = _577 + _581 + _923 + 32
            _1263 = mem[_1232]
            mem[_577 + _581 + _923 + 64 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
            if ceil32(_1263) <= _1263:
                mem[_577 + _581 + _923 + 32] = _1263
                mem[64] = _577 + _581 + _923 + _1263 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1533 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1263 + 64] = 32
                _1572 = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 96] = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1572)] = mem[_1533 + 32 len ceil32(_1572)]
                if ceil32(_1572) > _1572:
                    mem[_577 + _581 + _923 + _1263 + _1572 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1572) + 32]
            mem[_577 + _581 + _923 + _1263 + 64] = 0
            mem[_577 + _581 + _923 + 32] = _1263
            mem[64] = _577 + _581 + _923 + _1263 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1548 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
            mem[_577 + _581 + _923 + _1263 + 64] = 32
            _1580 = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 96] = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1580)] = mem[_1548 + 32 len ceil32(_1580)]
            if ceil32(_1580) > _1580:
                mem[_577 + _581 + _923 + _1263 + _1580 + 128] = 0
            return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1580) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _941 = mem[_242]
        mem[_577 + _581 + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_941) <= _941:
            _1228 = mem[64]
            mem[mem[64]] = _577 + _581 + _941 - mem[64]
            mem[64] = _577 + _581 + _941 + 32
            _1260 = mem[_1228]
            mem[_577 + _581 + _941 + 64 len ceil32(mem[_1228])] = mem[_1228 + 32 len ceil32(mem[_1228])]
            if ceil32(_1260) <= _1260:
                mem[_577 + _581 + _941 + 32] = _1260
                mem[64] = _577 + _581 + _941 + _1260 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1535 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
                mem[_577 + _581 + _941 + _1260 + 64] = 32
                _1573 = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 96] = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1573)] = mem[_1535 + 32 len ceil32(_1573)]
                if ceil32(_1573) > _1573:
                    mem[_577 + _581 + _941 + _1260 + _1573 + 128] = 0
                return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1573) + 32]
            mem[_577 + _581 + _941 + _1260 + 64] = 0
            mem[_577 + _581 + _941 + 32] = _1260
            mem[64] = _577 + _581 + _941 + _1260 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1549 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1260 + 64] = 32
            _1581 = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 96] = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1581)] = mem[_1549 + 32 len ceil32(_1581)]
            if ceil32(_1581) > _1581:
                mem[_577 + _581 + _941 + _1260 + _1581 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1581) + 32]
        mem[_577 + _581 + _941 + 32] = 0
        _1234 = mem[64]
        mem[mem[64]] = _577 + _581 + _941 - mem[64]
        mem[64] = _577 + _581 + _941 + 32
        _1264 = mem[_1234]
        mem[_577 + _581 + _941 + 64 len ceil32(mem[_1234])] = mem[_1234 + 32 len ceil32(mem[_1234])]
        if ceil32(_1264) <= _1264:
            mem[_577 + _581 + _941 + 32] = _1264
            mem[64] = _577 + _581 + _941 + _1264 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1537 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1264 + 64] = 32
            _1574 = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 96] = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1574)] = mem[_1537 + 32 len ceil32(_1574)]
            if ceil32(_1574) > _1574:
                mem[_577 + _581 + _941 + _1264 + _1574 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1574) + 32]
        mem[_577 + _581 + _941 + _1264 + 64] = 0
        mem[_577 + _581 + _941 + 32] = _1264
        mem[64] = _577 + _581 + _941 + _1264 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1550 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
        mem[_577 + _581 + _941 + _1264 + 64] = 32
        _1582 = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 96] = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1582)] = mem[_1550 + 32 len ceil32(_1582)]
        if ceil32(_1582) > _1582:
            mem[_577 + _581 + _941 + _1264 + _1582 + 128] = 0
        return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1582) + 32]
    mem[_242 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_242]:
            revert with 'NH{q', 50
        mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _578 = mem[64]
    _582 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _924 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_924) <= _924:
            _1229 = mem[64]
            mem[mem[64]] = _578 + _582 + _924 - mem[64]
            mem[64] = _578 + _582 + _924 + 32
            _1261 = mem[_1229]
            mem[_578 + _582 + _924 + 64 len ceil32(mem[_1229])] = mem[_1229 + 32 len ceil32(mem[_1229])]
            if ceil32(_1261) <= _1261:
                mem[_578 + _582 + _924 + 32] = _1261
                mem[64] = _578 + _582 + _924 + _1261 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1539 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
                mem[_578 + _582 + _924 + _1261 + 64] = 32
                _1575 = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 96] = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1575)] = mem[_1539 + 32 len ceil32(_1575)]
                if ceil32(_1575) > _1575:
                    mem[_578 + _582 + _924 + _1261 + _1575 + 128] = 0
                return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1575) + 32]
            mem[_578 + _582 + _924 + _1261 + 64] = 0
            mem[_578 + _582 + _924 + 32] = _1261
            mem[64] = _578 + _582 + _924 + _1261 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1551 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1261 + 64] = 32
            _1583 = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 96] = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1583)] = mem[_1551 + 32 len ceil32(_1583)]
            if ceil32(_1583) > _1583:
                mem[_578 + _582 + _924 + _1261 + _1583 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1583) + 32]
        mem[_578 + _582 + _924 + 32] = 0
        _1236 = mem[64]
        mem[mem[64]] = _578 + _582 + _924 - mem[64]
        mem[64] = _578 + _582 + _924 + 32
        _1265 = mem[_1236]
        mem[_578 + _582 + _924 + 64 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
        if ceil32(_1265) <= _1265:
            mem[_578 + _582 + _924 + 32] = _1265
            mem[64] = _578 + _582 + _924 + _1265 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1541 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1265 + 64] = 32
            _1576 = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 96] = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1576)] = mem[_1541 + 32 len ceil32(_1576)]
            if ceil32(_1576) > _1576:
                mem[_578 + _582 + _924 + _1265 + _1576 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1576) + 32]
        mem[_578 + _582 + _924 + _1265 + 64] = 0
        mem[_578 + _582 + _924 + 32] = _1265
        mem[64] = _578 + _582 + _924 + _1265 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1552 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
        mem[_578 + _582 + _924 + _1265 + 64] = 32
        _1584 = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 96] = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1584)] = mem[_1552 + 32 len ceil32(_1584)]
        if ceil32(_1584) > _1584:
            mem[_578 + _582 + _924 + _1265 + _1584 + 128] = 0
        return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1584) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _942 = mem[_242]
    mem[_578 + _582 + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
    if ceil32(_942) <= _942:
        _1230 = mem[64]
        mem[mem[64]] = _578 + _582 + _942 - mem[64]
        mem[64] = _578 + _582 + _942 + 32
        _1262 = mem[_1230]
        mem[_578 + _582 + _942 + 64 len ceil32(mem[_1230])] = mem[_1230 + 32 len ceil32(mem[_1230])]
        if ceil32(_1262) <= _1262:
            mem[_578 + _582 + _942 + 32] = _1262
            mem[64] = _578 + _582 + _942 + _1262 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1543 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
            mem[_578 + _582 + _942 + _1262 + 64] = 32
            _1577 = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 96] = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1577)] = mem[_1543 + 32 len ceil32(_1577)]
            if ceil32(_1577) > _1577:
                mem[_578 + _582 + _942 + _1262 + _1577 + 128] = 0
            return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1577) + 32]
        mem[_578 + _582 + _942 + _1262 + 64] = 0
        mem[_578 + _582 + _942 + 32] = _1262
        mem[64] = _578 + _582 + _942 + _1262 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1553 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1262 + 64] = 32
        _1585 = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 96] = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1585)] = mem[_1553 + 32 len ceil32(_1585)]
        if ceil32(_1585) > _1585:
            mem[_578 + _582 + _942 + _1262 + _1585 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1585) + 32]
    mem[_578 + _582 + _942 + 32] = 0
    _1238 = mem[64]
    mem[mem[64]] = _578 + _582 + _942 - mem[64]
    mem[64] = _578 + _582 + _942 + 32
    _1266 = mem[_1238]
    mem[_578 + _582 + _942 + 64 len ceil32(mem[_1238])] = mem[_1238 + 32 len ceil32(mem[_1238])]
    if ceil32(_1266) <= _1266:
        mem[_578 + _582 + _942 + 32] = _1266
        mem[64] = _578 + _582 + _942 + _1266 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1545 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1266 + 64] = 32
        _1578 = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 96] = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1578)] = mem[_1545 + 32 len ceil32(_1578)]
        if ceil32(_1578) > _1578:
            mem[_578 + _582 + _942 + _1266 + _1578 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1578) + 32]
    mem[_578 + _582 + _942 + _1266 + 64] = 0
    mem[_578 + _582 + _942 + 32] = _1266
    mem[64] = _578 + _582 + _942 + _1266 + 64
    if not mem[160]:
        revert with 'NH{q', 18
    if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
        revert with 'NH{q', 50
    _1554 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
    mem[_578 + _582 + _942 + _1266 + 64] = 32
    _1586 = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 96] = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1586)] = mem[_1554 + 32 len ceil32(_1586)]
    if ceil32(_1586) > _1586:
        mem[_578 + _582 + _942 + _1266 + _1586 + 128] = 0
    return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1586) + 32]
}

function getPilot(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 5
    mem[128] = 'PILOT'
    mem[64] = (32 * stor17.length) + 192
    mem[160] = stor17.length
    s = 192
    idx = 0
    while idx < stor17.length:
        mem[0] = 17
        if stor17[idx].field_0:
            if stor17[idx].field_0 == stor17[idx].field_1 < 32:
                revert with 'NH{q', 34
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(stor17[idx].field_1) + 32
            mem[_124] = stor17[idx].field_1
            if stor17[idx].field_0:
                if stor17[idx].field_0 == stor17[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor17[idx].field_1:
                    if 31 >= stor17[idx].field_1:
                        mem[_124 + 32] = 256 * stor17[idx].field_8
                    else:
                        mem[0] = sha3(17) + idx
                        mem[_124 + 32] = stor17[idx].field_0
                        t = _124 + 32
                        u = sha3(mem[0])
                        while _124 + stor17[idx].field_1 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if stor17[idx].field_0 == stor17[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor17[idx].field_1:
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor17[idx].field_1:
                mem[_124 + 32] = 256 * stor17[idx].field_8
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(17) + idx
            mem[_124 + 32] = stor17[idx].field_0
            t = _124 + 32
            u = sha3(mem[0])
            while _124 + stor17[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _124
            t = t + 32
            u = u + 1
            continue 
        if stor17[idx].field_0 == stor17[idx].field_1 < 32:
            revert with 'NH{q', 34
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(stor17[idx].field_1) + 32
        mem[_126] = stor17[idx].field_1
        if stor17[idx].field_0:
            if stor17[idx].field_0 == stor17[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor17[idx].field_1:
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor17[idx].field_1:
                mem[_126 + 32] = 256 * stor17[idx].field_8
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(17) + idx
            mem[_126 + 32] = stor17[idx].field_0
            t = _126 + 32
            u = sha3(mem[0])
            while _126 + stor17[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _126
            t = t + 32
            u = u + 1
            continue 
        if stor17[idx].field_0 == stor17[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor17[idx].field_1:
            if 31 >= stor17[idx].field_1:
                mem[_126 + 32] = 256 * stor17[idx].field_8
            else:
                mem[0] = sha3(17) + idx
                mem[_126 + 32] = stor17[idx].field_0
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + stor17[idx].field_1 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _126
        s = s + 32
        idx = idx + 1
        continue 
    if not arg1:
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 1
        mem[_123 + 32] = '0'
        _125 = mem[64]
        _127 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            mem[mem[64] + mem[96] + 32] = '0'
            mem[_125 + _127 + 33] = 0
            _584 = mem[64]
            mem[mem[64]] = _125 + _127 + -mem[64] + 1
            mem[64] = _125 + _127 + 33
            _591 = mem[_584]
            mem[_125 + _127 + 65 len ceil32(mem[_584])] = mem[_584 + 32 len ceil32(mem[_584])]
            if ceil32(_591) <= _591:
                mem[_125 + _127 + 33] = _591
                mem[64] = _125 + _127 + _591 + 65
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _957 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
                mem[_125 + _127 + _591 + 65] = 32
                _992 = mem[_957]
                mem[_125 + _127 + _591 + 97] = mem[_957]
                mem[_125 + _127 + _591 + 129 len ceil32(_992)] = mem[_957 + 32 len ceil32(_992)]
                if ceil32(_992) > _992:
                    mem[_125 + _127 + _591 + _992 + 129] = 0
                return 32, mem[_125 + _127 + _591 + 97 len ceil32(_992) + 32]
            mem[_125 + _127 + _591 + 65] = 0
            mem[_125 + _127 + 33] = _591
            mem[64] = _125 + _127 + _591 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _964 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
            mem[_125 + _127 + _591 + 65] = 32
            _998 = mem[_964]
            mem[_125 + _127 + _591 + 97] = mem[_964]
            mem[_125 + _127 + _591 + 129 len ceil32(_998)] = mem[_964 + 32 len ceil32(_998)]
            if ceil32(_998) > _998:
                mem[_125 + _127 + _591 + _998 + 129] = 0
            return 32, mem[_125 + _127 + _591 + 97 len ceil32(_998) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        mem[_125 + _127 + 32] = '0'
        mem[_125 + _127 + 33] = 0
        _586 = mem[64]
        mem[mem[64]] = _125 + _127 + -mem[64] + 1
        mem[64] = _125 + _127 + 33
        _592 = mem[_586]
        mem[_125 + _127 + 65 len ceil32(mem[_586])] = mem[_586 + 32 len ceil32(mem[_586])]
        if ceil32(_592) <= _592:
            mem[_125 + _127 + 33] = _592
            mem[64] = _125 + _127 + _592 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _961 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
            mem[_125 + _127 + _592 + 65] = 32
            _994 = mem[_961]
            mem[_125 + _127 + _592 + 97] = mem[_961]
            mem[_125 + _127 + _592 + 129 len ceil32(_994)] = mem[_961 + 32 len ceil32(_994)]
            if ceil32(_994) > _994:
                mem[_125 + _127 + _592 + _994 + 129] = 0
            return 32, mem[_125 + _127 + _592 + 97 len ceil32(_994) + 32]
        mem[_125 + _127 + _592 + 65] = 0
        mem[_125 + _127 + 33] = _592
        mem[64] = _125 + _127 + _592 + 65
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _966 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
        mem[_125 + _127 + _592 + 65] = 32
        _1000 = mem[_966]
        mem[_125 + _127 + _592 + 97] = mem[_966]
        mem[_125 + _127 + _592 + 129 len ceil32(_1000)] = mem[_966 + 32 len ceil32(_1000)]
        if ceil32(_1000) > _1000:
            mem[_125 + _127 + _592 + _1000 + 129] = 0
        return 32, mem[_125 + _127 + _592 + 97 len ceil32(_1000) + 32]
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
    _242 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_242]:
                revert with 'NH{q', 50
            mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _577 = mem[64]
        _581 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _923 = mem[_242]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
            if ceil32(_923) <= _923:
                _1227 = mem[64]
                mem[mem[64]] = _577 + _581 + _923 - mem[64]
                mem[64] = _577 + _581 + _923 + 32
                _1259 = mem[_1227]
                mem[_577 + _581 + _923 + 64 len ceil32(mem[_1227])] = mem[_1227 + 32 len ceil32(mem[_1227])]
                if ceil32(_1259) <= _1259:
                    mem[_577 + _581 + _923 + 32] = _1259
                    mem[64] = _577 + _581 + _923 + _1259 + 64
                    if not mem[160]:
                        revert with 'NH{q', 18
                    if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                        revert with 'NH{q', 50
                    _1531 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                    mem[_577 + _581 + _923 + _1259 + 64] = 32
                    _1571 = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 96] = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1571)] = mem[_1531 + 32 len ceil32(_1571)]
                    if ceil32(_1571) > _1571:
                        mem[_577 + _581 + _923 + _1259 + _1571 + 128] = 0
                    return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1571) + 32]
                mem[_577 + _581 + _923 + _1259 + 64] = 0
                mem[_577 + _581 + _923 + 32] = _1259
                mem[64] = _577 + _581 + _923 + _1259 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1547 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1259 + 64] = 32
                _1579 = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 96] = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1579)] = mem[_1547 + 32 len ceil32(_1579)]
                if ceil32(_1579) > _1579:
                    mem[_577 + _581 + _923 + _1259 + _1579 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1579) + 32]
            mem[_577 + _581 + _923 + 32] = 0
            _1232 = mem[64]
            mem[mem[64]] = _577 + _581 + _923 - mem[64]
            mem[64] = _577 + _581 + _923 + 32
            _1263 = mem[_1232]
            mem[_577 + _581 + _923 + 64 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
            if ceil32(_1263) <= _1263:
                mem[_577 + _581 + _923 + 32] = _1263
                mem[64] = _577 + _581 + _923 + _1263 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1533 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1263 + 64] = 32
                _1572 = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 96] = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1572)] = mem[_1533 + 32 len ceil32(_1572)]
                if ceil32(_1572) > _1572:
                    mem[_577 + _581 + _923 + _1263 + _1572 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1572) + 32]
            mem[_577 + _581 + _923 + _1263 + 64] = 0
            mem[_577 + _581 + _923 + 32] = _1263
            mem[64] = _577 + _581 + _923 + _1263 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1548 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
            mem[_577 + _581 + _923 + _1263 + 64] = 32
            _1580 = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 96] = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1580)] = mem[_1548 + 32 len ceil32(_1580)]
            if ceil32(_1580) > _1580:
                mem[_577 + _581 + _923 + _1263 + _1580 + 128] = 0
            return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1580) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _941 = mem[_242]
        mem[_577 + _581 + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_941) <= _941:
            _1228 = mem[64]
            mem[mem[64]] = _577 + _581 + _941 - mem[64]
            mem[64] = _577 + _581 + _941 + 32
            _1260 = mem[_1228]
            mem[_577 + _581 + _941 + 64 len ceil32(mem[_1228])] = mem[_1228 + 32 len ceil32(mem[_1228])]
            if ceil32(_1260) <= _1260:
                mem[_577 + _581 + _941 + 32] = _1260
                mem[64] = _577 + _581 + _941 + _1260 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1535 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
                mem[_577 + _581 + _941 + _1260 + 64] = 32
                _1573 = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 96] = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1573)] = mem[_1535 + 32 len ceil32(_1573)]
                if ceil32(_1573) > _1573:
                    mem[_577 + _581 + _941 + _1260 + _1573 + 128] = 0
                return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1573) + 32]
            mem[_577 + _581 + _941 + _1260 + 64] = 0
            mem[_577 + _581 + _941 + 32] = _1260
            mem[64] = _577 + _581 + _941 + _1260 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1549 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1260 + 64] = 32
            _1581 = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 96] = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1581)] = mem[_1549 + 32 len ceil32(_1581)]
            if ceil32(_1581) > _1581:
                mem[_577 + _581 + _941 + _1260 + _1581 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1581) + 32]
        mem[_577 + _581 + _941 + 32] = 0
        _1234 = mem[64]
        mem[mem[64]] = _577 + _581 + _941 - mem[64]
        mem[64] = _577 + _581 + _941 + 32
        _1264 = mem[_1234]
        mem[_577 + _581 + _941 + 64 len ceil32(mem[_1234])] = mem[_1234 + 32 len ceil32(mem[_1234])]
        if ceil32(_1264) <= _1264:
            mem[_577 + _581 + _941 + 32] = _1264
            mem[64] = _577 + _581 + _941 + _1264 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1537 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1264 + 64] = 32
            _1574 = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 96] = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1574)] = mem[_1537 + 32 len ceil32(_1574)]
            if ceil32(_1574) > _1574:
                mem[_577 + _581 + _941 + _1264 + _1574 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1574) + 32]
        mem[_577 + _581 + _941 + _1264 + 64] = 0
        mem[_577 + _581 + _941 + 32] = _1264
        mem[64] = _577 + _581 + _941 + _1264 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1550 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
        mem[_577 + _581 + _941 + _1264 + 64] = 32
        _1582 = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 96] = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1582)] = mem[_1550 + 32 len ceil32(_1582)]
        if ceil32(_1582) > _1582:
            mem[_577 + _581 + _941 + _1264 + _1582 + 128] = 0
        return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1582) + 32]
    mem[_242 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_242]:
            revert with 'NH{q', 50
        mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _578 = mem[64]
    _582 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _924 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_924) <= _924:
            _1229 = mem[64]
            mem[mem[64]] = _578 + _582 + _924 - mem[64]
            mem[64] = _578 + _582 + _924 + 32
            _1261 = mem[_1229]
            mem[_578 + _582 + _924 + 64 len ceil32(mem[_1229])] = mem[_1229 + 32 len ceil32(mem[_1229])]
            if ceil32(_1261) <= _1261:
                mem[_578 + _582 + _924 + 32] = _1261
                mem[64] = _578 + _582 + _924 + _1261 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1539 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
                mem[_578 + _582 + _924 + _1261 + 64] = 32
                _1575 = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 96] = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1575)] = mem[_1539 + 32 len ceil32(_1575)]
                if ceil32(_1575) > _1575:
                    mem[_578 + _582 + _924 + _1261 + _1575 + 128] = 0
                return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1575) + 32]
            mem[_578 + _582 + _924 + _1261 + 64] = 0
            mem[_578 + _582 + _924 + 32] = _1261
            mem[64] = _578 + _582 + _924 + _1261 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1551 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1261 + 64] = 32
            _1583 = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 96] = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1583)] = mem[_1551 + 32 len ceil32(_1583)]
            if ceil32(_1583) > _1583:
                mem[_578 + _582 + _924 + _1261 + _1583 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1583) + 32]
        mem[_578 + _582 + _924 + 32] = 0
        _1236 = mem[64]
        mem[mem[64]] = _578 + _582 + _924 - mem[64]
        mem[64] = _578 + _582 + _924 + 32
        _1265 = mem[_1236]
        mem[_578 + _582 + _924 + 64 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
        if ceil32(_1265) <= _1265:
            mem[_578 + _582 + _924 + 32] = _1265
            mem[64] = _578 + _582 + _924 + _1265 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1541 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1265 + 64] = 32
            _1576 = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 96] = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1576)] = mem[_1541 + 32 len ceil32(_1576)]
            if ceil32(_1576) > _1576:
                mem[_578 + _582 + _924 + _1265 + _1576 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1576) + 32]
        mem[_578 + _582 + _924 + _1265 + 64] = 0
        mem[_578 + _582 + _924 + 32] = _1265
        mem[64] = _578 + _582 + _924 + _1265 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1552 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
        mem[_578 + _582 + _924 + _1265 + 64] = 32
        _1584 = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 96] = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1584)] = mem[_1552 + 32 len ceil32(_1584)]
        if ceil32(_1584) > _1584:
            mem[_578 + _582 + _924 + _1265 + _1584 + 128] = 0
        return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1584) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _942 = mem[_242]
    mem[_578 + _582 + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
    if ceil32(_942) <= _942:
        _1230 = mem[64]
        mem[mem[64]] = _578 + _582 + _942 - mem[64]
        mem[64] = _578 + _582 + _942 + 32
        _1262 = mem[_1230]
        mem[_578 + _582 + _942 + 64 len ceil32(mem[_1230])] = mem[_1230 + 32 len ceil32(mem[_1230])]
        if ceil32(_1262) <= _1262:
            mem[_578 + _582 + _942 + 32] = _1262
            mem[64] = _578 + _582 + _942 + _1262 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1543 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
            mem[_578 + _582 + _942 + _1262 + 64] = 32
            _1577 = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 96] = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1577)] = mem[_1543 + 32 len ceil32(_1577)]
            if ceil32(_1577) > _1577:
                mem[_578 + _582 + _942 + _1262 + _1577 + 128] = 0
            return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1577) + 32]
        mem[_578 + _582 + _942 + _1262 + 64] = 0
        mem[_578 + _582 + _942 + 32] = _1262
        mem[64] = _578 + _582 + _942 + _1262 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1553 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1262 + 64] = 32
        _1585 = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 96] = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1585)] = mem[_1553 + 32 len ceil32(_1585)]
        if ceil32(_1585) > _1585:
            mem[_578 + _582 + _942 + _1262 + _1585 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1585) + 32]
    mem[_578 + _582 + _942 + 32] = 0
    _1238 = mem[64]
    mem[mem[64]] = _578 + _582 + _942 - mem[64]
    mem[64] = _578 + _582 + _942 + 32
    _1266 = mem[_1238]
    mem[_578 + _582 + _942 + 64 len ceil32(mem[_1238])] = mem[_1238 + 32 len ceil32(mem[_1238])]
    if ceil32(_1266) <= _1266:
        mem[_578 + _582 + _942 + 32] = _1266
        mem[64] = _578 + _582 + _942 + _1266 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1545 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1266 + 64] = 32
        _1578 = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 96] = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1578)] = mem[_1545 + 32 len ceil32(_1578)]
        if ceil32(_1578) > _1578:
            mem[_578 + _582 + _942 + _1266 + _1578 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1578) + 32]
    mem[_578 + _582 + _942 + _1266 + 64] = 0
    mem[_578 + _582 + _942 + 32] = _1266
    mem[64] = _578 + _582 + _942 + _1266 + 64
    if not mem[160]:
        revert with 'NH{q', 18
    if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
        revert with 'NH{q', 50
    _1554 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
    mem[_578 + _582 + _942 + _1266 + 64] = 32
    _1586 = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 96] = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1586)] = mem[_1554 + 32 len ceil32(_1586)]
    if ceil32(_1586) > _1586:
        mem[_578 + _582 + _942 + _1266 + _1586 + 128] = 0
    return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1586) + 32]
}

function getColorCode(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 5
    mem[128] = 'COLOR'
    mem[64] = (32 * stor19.length) + 192
    mem[160] = stor19.length
    s = 192
    idx = 0
    while idx < stor19.length:
        mem[0] = 19
        if stor19[idx].field_0:
            if stor19[idx].field_0 == stor19[idx].field_1 < 32:
                revert with 'NH{q', 34
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(stor19[idx].field_1) + 32
            mem[_124] = stor19[idx].field_1
            if stor19[idx].field_0:
                if stor19[idx].field_0 == stor19[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor19[idx].field_1:
                    if 31 >= stor19[idx].field_1:
                        mem[_124 + 32] = 256 * stor19[idx].field_8
                    else:
                        mem[0] = sha3(19) + idx
                        mem[_124 + 32] = stor19[idx].field_0
                        t = _124 + 32
                        u = sha3(mem[0])
                        while _124 + stor19[idx].field_1 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if stor19[idx].field_0 == stor19[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor19[idx].field_1:
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor19[idx].field_1:
                mem[_124 + 32] = 256 * stor19[idx].field_8
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(19) + idx
            mem[_124 + 32] = stor19[idx].field_0
            t = _124 + 32
            u = sha3(mem[0])
            while _124 + stor19[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _124
            t = t + 32
            u = u + 1
            continue 
        if stor19[idx].field_0 == stor19[idx].field_1 < 32:
            revert with 'NH{q', 34
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(stor19[idx].field_1) + 32
        mem[_126] = stor19[idx].field_1
        if stor19[idx].field_0:
            if stor19[idx].field_0 == stor19[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor19[idx].field_1:
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor19[idx].field_1:
                mem[_126 + 32] = 256 * stor19[idx].field_8
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(19) + idx
            mem[_126 + 32] = stor19[idx].field_0
            t = _126 + 32
            u = sha3(mem[0])
            while _126 + stor19[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _126
            t = t + 32
            u = u + 1
            continue 
        if stor19[idx].field_0 == stor19[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor19[idx].field_1:
            if 31 >= stor19[idx].field_1:
                mem[_126 + 32] = 256 * stor19[idx].field_8
            else:
                mem[0] = sha3(19) + idx
                mem[_126 + 32] = stor19[idx].field_0
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + stor19[idx].field_1 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _126
        s = s + 32
        idx = idx + 1
        continue 
    if not arg1:
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 1
        mem[_123 + 32] = '0'
        _125 = mem[64]
        _127 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            mem[mem[64] + mem[96] + 32] = '0'
            mem[_125 + _127 + 33] = 0
            _584 = mem[64]
            mem[mem[64]] = _125 + _127 + -mem[64] + 1
            mem[64] = _125 + _127 + 33
            _591 = mem[_584]
            mem[_125 + _127 + 65 len ceil32(mem[_584])] = mem[_584 + 32 len ceil32(mem[_584])]
            if ceil32(_591) <= _591:
                mem[_125 + _127 + 33] = _591
                mem[64] = _125 + _127 + _591 + 65
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _957 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
                mem[_125 + _127 + _591 + 65] = 32
                _992 = mem[_957]
                mem[_125 + _127 + _591 + 97] = mem[_957]
                mem[_125 + _127 + _591 + 129 len ceil32(_992)] = mem[_957 + 32 len ceil32(_992)]
                if ceil32(_992) > _992:
                    mem[_125 + _127 + _591 + _992 + 129] = 0
                return 32, mem[_125 + _127 + _591 + 97 len ceil32(_992) + 32]
            mem[_125 + _127 + _591 + 65] = 0
            mem[_125 + _127 + 33] = _591
            mem[64] = _125 + _127 + _591 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _964 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
            mem[_125 + _127 + _591 + 65] = 32
            _998 = mem[_964]
            mem[_125 + _127 + _591 + 97] = mem[_964]
            mem[_125 + _127 + _591 + 129 len ceil32(_998)] = mem[_964 + 32 len ceil32(_998)]
            if ceil32(_998) > _998:
                mem[_125 + _127 + _591 + _998 + 129] = 0
            return 32, mem[_125 + _127 + _591 + 97 len ceil32(_998) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        mem[_125 + _127 + 32] = '0'
        mem[_125 + _127 + 33] = 0
        _586 = mem[64]
        mem[mem[64]] = _125 + _127 + -mem[64] + 1
        mem[64] = _125 + _127 + 33
        _592 = mem[_586]
        mem[_125 + _127 + 65 len ceil32(mem[_586])] = mem[_586 + 32 len ceil32(mem[_586])]
        if ceil32(_592) <= _592:
            mem[_125 + _127 + 33] = _592
            mem[64] = _125 + _127 + _592 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _961 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
            mem[_125 + _127 + _592 + 65] = 32
            _994 = mem[_961]
            mem[_125 + _127 + _592 + 97] = mem[_961]
            mem[_125 + _127 + _592 + 129 len ceil32(_994)] = mem[_961 + 32 len ceil32(_994)]
            if ceil32(_994) > _994:
                mem[_125 + _127 + _592 + _994 + 129] = 0
            return 32, mem[_125 + _127 + _592 + 97 len ceil32(_994) + 32]
        mem[_125 + _127 + _592 + 65] = 0
        mem[_125 + _127 + 33] = _592
        mem[64] = _125 + _127 + _592 + 65
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _966 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
        mem[_125 + _127 + _592 + 65] = 32
        _1000 = mem[_966]
        mem[_125 + _127 + _592 + 97] = mem[_966]
        mem[_125 + _127 + _592 + 129 len ceil32(_1000)] = mem[_966 + 32 len ceil32(_1000)]
        if ceil32(_1000) > _1000:
            mem[_125 + _127 + _592 + _1000 + 129] = 0
        return 32, mem[_125 + _127 + _592 + 97 len ceil32(_1000) + 32]
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
    _242 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_242]:
                revert with 'NH{q', 50
            mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _577 = mem[64]
        _581 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _923 = mem[_242]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
            if ceil32(_923) <= _923:
                _1227 = mem[64]
                mem[mem[64]] = _577 + _581 + _923 - mem[64]
                mem[64] = _577 + _581 + _923 + 32
                _1259 = mem[_1227]
                mem[_577 + _581 + _923 + 64 len ceil32(mem[_1227])] = mem[_1227 + 32 len ceil32(mem[_1227])]
                if ceil32(_1259) <= _1259:
                    mem[_577 + _581 + _923 + 32] = _1259
                    mem[64] = _577 + _581 + _923 + _1259 + 64
                    if not mem[160]:
                        revert with 'NH{q', 18
                    if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                        revert with 'NH{q', 50
                    _1531 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                    mem[_577 + _581 + _923 + _1259 + 64] = 32
                    _1571 = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 96] = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1571)] = mem[_1531 + 32 len ceil32(_1571)]
                    if ceil32(_1571) > _1571:
                        mem[_577 + _581 + _923 + _1259 + _1571 + 128] = 0
                    return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1571) + 32]
                mem[_577 + _581 + _923 + _1259 + 64] = 0
                mem[_577 + _581 + _923 + 32] = _1259
                mem[64] = _577 + _581 + _923 + _1259 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1547 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1259 + 64] = 32
                _1579 = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 96] = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1579)] = mem[_1547 + 32 len ceil32(_1579)]
                if ceil32(_1579) > _1579:
                    mem[_577 + _581 + _923 + _1259 + _1579 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1579) + 32]
            mem[_577 + _581 + _923 + 32] = 0
            _1232 = mem[64]
            mem[mem[64]] = _577 + _581 + _923 - mem[64]
            mem[64] = _577 + _581 + _923 + 32
            _1263 = mem[_1232]
            mem[_577 + _581 + _923 + 64 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
            if ceil32(_1263) <= _1263:
                mem[_577 + _581 + _923 + 32] = _1263
                mem[64] = _577 + _581 + _923 + _1263 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1533 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1263 + 64] = 32
                _1572 = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 96] = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1572)] = mem[_1533 + 32 len ceil32(_1572)]
                if ceil32(_1572) > _1572:
                    mem[_577 + _581 + _923 + _1263 + _1572 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1572) + 32]
            mem[_577 + _581 + _923 + _1263 + 64] = 0
            mem[_577 + _581 + _923 + 32] = _1263
            mem[64] = _577 + _581 + _923 + _1263 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1548 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
            mem[_577 + _581 + _923 + _1263 + 64] = 32
            _1580 = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 96] = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1580)] = mem[_1548 + 32 len ceil32(_1580)]
            if ceil32(_1580) > _1580:
                mem[_577 + _581 + _923 + _1263 + _1580 + 128] = 0
            return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1580) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _941 = mem[_242]
        mem[_577 + _581 + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_941) <= _941:
            _1228 = mem[64]
            mem[mem[64]] = _577 + _581 + _941 - mem[64]
            mem[64] = _577 + _581 + _941 + 32
            _1260 = mem[_1228]
            mem[_577 + _581 + _941 + 64 len ceil32(mem[_1228])] = mem[_1228 + 32 len ceil32(mem[_1228])]
            if ceil32(_1260) <= _1260:
                mem[_577 + _581 + _941 + 32] = _1260
                mem[64] = _577 + _581 + _941 + _1260 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1535 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
                mem[_577 + _581 + _941 + _1260 + 64] = 32
                _1573 = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 96] = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1573)] = mem[_1535 + 32 len ceil32(_1573)]
                if ceil32(_1573) > _1573:
                    mem[_577 + _581 + _941 + _1260 + _1573 + 128] = 0
                return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1573) + 32]
            mem[_577 + _581 + _941 + _1260 + 64] = 0
            mem[_577 + _581 + _941 + 32] = _1260
            mem[64] = _577 + _581 + _941 + _1260 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1549 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1260 + 64] = 32
            _1581 = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 96] = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1581)] = mem[_1549 + 32 len ceil32(_1581)]
            if ceil32(_1581) > _1581:
                mem[_577 + _581 + _941 + _1260 + _1581 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1581) + 32]
        mem[_577 + _581 + _941 + 32] = 0
        _1234 = mem[64]
        mem[mem[64]] = _577 + _581 + _941 - mem[64]
        mem[64] = _577 + _581 + _941 + 32
        _1264 = mem[_1234]
        mem[_577 + _581 + _941 + 64 len ceil32(mem[_1234])] = mem[_1234 + 32 len ceil32(mem[_1234])]
        if ceil32(_1264) <= _1264:
            mem[_577 + _581 + _941 + 32] = _1264
            mem[64] = _577 + _581 + _941 + _1264 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1537 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1264 + 64] = 32
            _1574 = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 96] = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1574)] = mem[_1537 + 32 len ceil32(_1574)]
            if ceil32(_1574) > _1574:
                mem[_577 + _581 + _941 + _1264 + _1574 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1574) + 32]
        mem[_577 + _581 + _941 + _1264 + 64] = 0
        mem[_577 + _581 + _941 + 32] = _1264
        mem[64] = _577 + _581 + _941 + _1264 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1550 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
        mem[_577 + _581 + _941 + _1264 + 64] = 32
        _1582 = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 96] = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1582)] = mem[_1550 + 32 len ceil32(_1582)]
        if ceil32(_1582) > _1582:
            mem[_577 + _581 + _941 + _1264 + _1582 + 128] = 0
        return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1582) + 32]
    mem[_242 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_242]:
            revert with 'NH{q', 50
        mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _578 = mem[64]
    _582 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _924 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_924) <= _924:
            _1229 = mem[64]
            mem[mem[64]] = _578 + _582 + _924 - mem[64]
            mem[64] = _578 + _582 + _924 + 32
            _1261 = mem[_1229]
            mem[_578 + _582 + _924 + 64 len ceil32(mem[_1229])] = mem[_1229 + 32 len ceil32(mem[_1229])]
            if ceil32(_1261) <= _1261:
                mem[_578 + _582 + _924 + 32] = _1261
                mem[64] = _578 + _582 + _924 + _1261 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1539 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
                mem[_578 + _582 + _924 + _1261 + 64] = 32
                _1575 = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 96] = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1575)] = mem[_1539 + 32 len ceil32(_1575)]
                if ceil32(_1575) > _1575:
                    mem[_578 + _582 + _924 + _1261 + _1575 + 128] = 0
                return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1575) + 32]
            mem[_578 + _582 + _924 + _1261 + 64] = 0
            mem[_578 + _582 + _924 + 32] = _1261
            mem[64] = _578 + _582 + _924 + _1261 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1551 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1261 + 64] = 32
            _1583 = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 96] = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1583)] = mem[_1551 + 32 len ceil32(_1583)]
            if ceil32(_1583) > _1583:
                mem[_578 + _582 + _924 + _1261 + _1583 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1583) + 32]
        mem[_578 + _582 + _924 + 32] = 0
        _1236 = mem[64]
        mem[mem[64]] = _578 + _582 + _924 - mem[64]
        mem[64] = _578 + _582 + _924 + 32
        _1265 = mem[_1236]
        mem[_578 + _582 + _924 + 64 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
        if ceil32(_1265) <= _1265:
            mem[_578 + _582 + _924 + 32] = _1265
            mem[64] = _578 + _582 + _924 + _1265 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1541 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1265 + 64] = 32
            _1576 = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 96] = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1576)] = mem[_1541 + 32 len ceil32(_1576)]
            if ceil32(_1576) > _1576:
                mem[_578 + _582 + _924 + _1265 + _1576 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1576) + 32]
        mem[_578 + _582 + _924 + _1265 + 64] = 0
        mem[_578 + _582 + _924 + 32] = _1265
        mem[64] = _578 + _582 + _924 + _1265 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1552 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
        mem[_578 + _582 + _924 + _1265 + 64] = 32
        _1584 = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 96] = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1584)] = mem[_1552 + 32 len ceil32(_1584)]
        if ceil32(_1584) > _1584:
            mem[_578 + _582 + _924 + _1265 + _1584 + 128] = 0
        return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1584) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _942 = mem[_242]
    mem[_578 + _582 + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
    if ceil32(_942) <= _942:
        _1230 = mem[64]
        mem[mem[64]] = _578 + _582 + _942 - mem[64]
        mem[64] = _578 + _582 + _942 + 32
        _1262 = mem[_1230]
        mem[_578 + _582 + _942 + 64 len ceil32(mem[_1230])] = mem[_1230 + 32 len ceil32(mem[_1230])]
        if ceil32(_1262) <= _1262:
            mem[_578 + _582 + _942 + 32] = _1262
            mem[64] = _578 + _582 + _942 + _1262 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1543 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
            mem[_578 + _582 + _942 + _1262 + 64] = 32
            _1577 = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 96] = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1577)] = mem[_1543 + 32 len ceil32(_1577)]
            if ceil32(_1577) > _1577:
                mem[_578 + _582 + _942 + _1262 + _1577 + 128] = 0
            return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1577) + 32]
        mem[_578 + _582 + _942 + _1262 + 64] = 0
        mem[_578 + _582 + _942 + 32] = _1262
        mem[64] = _578 + _582 + _942 + _1262 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1553 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1262 + 64] = 32
        _1585 = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 96] = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1585)] = mem[_1553 + 32 len ceil32(_1585)]
        if ceil32(_1585) > _1585:
            mem[_578 + _582 + _942 + _1262 + _1585 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1585) + 32]
    mem[_578 + _582 + _942 + 32] = 0
    _1238 = mem[64]
    mem[mem[64]] = _578 + _582 + _942 - mem[64]
    mem[64] = _578 + _582 + _942 + 32
    _1266 = mem[_1238]
    mem[_578 + _582 + _942 + 64 len ceil32(mem[_1238])] = mem[_1238 + 32 len ceil32(mem[_1238])]
    if ceil32(_1266) <= _1266:
        mem[_578 + _582 + _942 + 32] = _1266
        mem[64] = _578 + _582 + _942 + _1266 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1545 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1266 + 64] = 32
        _1578 = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 96] = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1578)] = mem[_1545 + 32 len ceil32(_1578)]
        if ceil32(_1578) > _1578:
            mem[_578 + _582 + _942 + _1266 + _1578 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1578) + 32]
    mem[_578 + _582 + _942 + _1266 + 64] = 0
    mem[_578 + _582 + _942 + 32] = _1266
    mem[64] = _578 + _582 + _942 + _1266 + 64
    if not mem[160]:
        revert with 'NH{q', 18
    if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
        revert with 'NH{q', 50
    _1554 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
    mem[_578 + _582 + _942 + _1266 + 64] = 32
    _1586 = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 96] = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1586)] = mem[_1554 + 32 len ceil32(_1586)]
    if ceil32(_1586) > _1586:
        mem[_578 + _582 + _942 + _1266 + _1586 + 128] = 0
    return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1586) + 32]
}

function getMaterial(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 8
    mem[128] = 'MATERIAL'
    mem[64] = (32 * stor16.length) + 192
    mem[160] = stor16.length
    s = 192
    idx = 0
    while idx < stor16.length:
        mem[0] = 16
        if stor16[idx].field_0:
            if stor16[idx].field_0 == stor16[idx].field_1 < 32:
                revert with 'NH{q', 34
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(stor16[idx].field_1) + 32
            mem[_124] = stor16[idx].field_1
            if stor16[idx].field_0:
                if stor16[idx].field_0 == stor16[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor16[idx].field_1:
                    if 31 >= stor16[idx].field_1:
                        mem[_124 + 32] = 256 * stor16[idx].field_8
                    else:
                        mem[0] = sha3(16) + idx
                        mem[_124 + 32] = stor16[idx].field_0
                        t = _124 + 32
                        u = sha3(mem[0])
                        while _124 + stor16[idx].field_1 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if stor16[idx].field_0 == stor16[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor16[idx].field_1:
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor16[idx].field_1:
                mem[_124 + 32] = 256 * stor16[idx].field_8
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(16) + idx
            mem[_124 + 32] = stor16[idx].field_0
            t = _124 + 32
            u = sha3(mem[0])
            while _124 + stor16[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _124
            t = t + 32
            u = u + 1
            continue 
        if stor16[idx].field_0 == stor16[idx].field_1 < 32:
            revert with 'NH{q', 34
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(stor16[idx].field_1) + 32
        mem[_126] = stor16[idx].field_1
        if stor16[idx].field_0:
            if stor16[idx].field_0 == stor16[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor16[idx].field_1:
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor16[idx].field_1:
                mem[_126 + 32] = 256 * stor16[idx].field_8
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(16) + idx
            mem[_126 + 32] = stor16[idx].field_0
            t = _126 + 32
            u = sha3(mem[0])
            while _126 + stor16[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _126
            t = t + 32
            u = u + 1
            continue 
        if stor16[idx].field_0 == stor16[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor16[idx].field_1:
            if 31 >= stor16[idx].field_1:
                mem[_126 + 32] = 256 * stor16[idx].field_8
            else:
                mem[0] = sha3(16) + idx
                mem[_126 + 32] = stor16[idx].field_0
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + stor16[idx].field_1 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _126
        s = s + 32
        idx = idx + 1
        continue 
    if not arg1:
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 1
        mem[_123 + 32] = '0'
        _125 = mem[64]
        _127 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            mem[mem[64] + mem[96] + 32] = '0'
            mem[_125 + _127 + 33] = 0
            _584 = mem[64]
            mem[mem[64]] = _125 + _127 + -mem[64] + 1
            mem[64] = _125 + _127 + 33
            _591 = mem[_584]
            mem[_125 + _127 + 65 len ceil32(mem[_584])] = mem[_584 + 32 len ceil32(mem[_584])]
            if ceil32(_591) <= _591:
                mem[_125 + _127 + 33] = _591
                mem[64] = _125 + _127 + _591 + 65
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _957 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
                mem[_125 + _127 + _591 + 65] = 32
                _992 = mem[_957]
                mem[_125 + _127 + _591 + 97] = mem[_957]
                mem[_125 + _127 + _591 + 129 len ceil32(_992)] = mem[_957 + 32 len ceil32(_992)]
                if ceil32(_992) > _992:
                    mem[_125 + _127 + _591 + _992 + 129] = 0
                return 32, mem[_125 + _127 + _591 + 97 len ceil32(_992) + 32]
            mem[_125 + _127 + _591 + 65] = 0
            mem[_125 + _127 + 33] = _591
            mem[64] = _125 + _127 + _591 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _964 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
            mem[_125 + _127 + _591 + 65] = 32
            _998 = mem[_964]
            mem[_125 + _127 + _591 + 97] = mem[_964]
            mem[_125 + _127 + _591 + 129 len ceil32(_998)] = mem[_964 + 32 len ceil32(_998)]
            if ceil32(_998) > _998:
                mem[_125 + _127 + _591 + _998 + 129] = 0
            return 32, mem[_125 + _127 + _591 + 97 len ceil32(_998) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        mem[_125 + _127 + 32] = '0'
        mem[_125 + _127 + 33] = 0
        _586 = mem[64]
        mem[mem[64]] = _125 + _127 + -mem[64] + 1
        mem[64] = _125 + _127 + 33
        _592 = mem[_586]
        mem[_125 + _127 + 65 len ceil32(mem[_586])] = mem[_586 + 32 len ceil32(mem[_586])]
        if ceil32(_592) <= _592:
            mem[_125 + _127 + 33] = _592
            mem[64] = _125 + _127 + _592 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _961 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
            mem[_125 + _127 + _592 + 65] = 32
            _994 = mem[_961]
            mem[_125 + _127 + _592 + 97] = mem[_961]
            mem[_125 + _127 + _592 + 129 len ceil32(_994)] = mem[_961 + 32 len ceil32(_994)]
            if ceil32(_994) > _994:
                mem[_125 + _127 + _592 + _994 + 129] = 0
            return 32, mem[_125 + _127 + _592 + 97 len ceil32(_994) + 32]
        mem[_125 + _127 + _592 + 65] = 0
        mem[_125 + _127 + 33] = _592
        mem[64] = _125 + _127 + _592 + 65
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _966 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
        mem[_125 + _127 + _592 + 65] = 32
        _1000 = mem[_966]
        mem[_125 + _127 + _592 + 97] = mem[_966]
        mem[_125 + _127 + _592 + 129 len ceil32(_1000)] = mem[_966 + 32 len ceil32(_1000)]
        if ceil32(_1000) > _1000:
            mem[_125 + _127 + _592 + _1000 + 129] = 0
        return 32, mem[_125 + _127 + _592 + 97 len ceil32(_1000) + 32]
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
    _242 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_242]:
                revert with 'NH{q', 50
            mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _577 = mem[64]
        _581 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _923 = mem[_242]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
            if ceil32(_923) <= _923:
                _1227 = mem[64]
                mem[mem[64]] = _577 + _581 + _923 - mem[64]
                mem[64] = _577 + _581 + _923 + 32
                _1259 = mem[_1227]
                mem[_577 + _581 + _923 + 64 len ceil32(mem[_1227])] = mem[_1227 + 32 len ceil32(mem[_1227])]
                if ceil32(_1259) <= _1259:
                    mem[_577 + _581 + _923 + 32] = _1259
                    mem[64] = _577 + _581 + _923 + _1259 + 64
                    if not mem[160]:
                        revert with 'NH{q', 18
                    if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                        revert with 'NH{q', 50
                    _1531 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                    mem[_577 + _581 + _923 + _1259 + 64] = 32
                    _1571 = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 96] = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1571)] = mem[_1531 + 32 len ceil32(_1571)]
                    if ceil32(_1571) > _1571:
                        mem[_577 + _581 + _923 + _1259 + _1571 + 128] = 0
                    return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1571) + 32]
                mem[_577 + _581 + _923 + _1259 + 64] = 0
                mem[_577 + _581 + _923 + 32] = _1259
                mem[64] = _577 + _581 + _923 + _1259 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1547 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1259 + 64] = 32
                _1579 = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 96] = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1579)] = mem[_1547 + 32 len ceil32(_1579)]
                if ceil32(_1579) > _1579:
                    mem[_577 + _581 + _923 + _1259 + _1579 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1579) + 32]
            mem[_577 + _581 + _923 + 32] = 0
            _1232 = mem[64]
            mem[mem[64]] = _577 + _581 + _923 - mem[64]
            mem[64] = _577 + _581 + _923 + 32
            _1263 = mem[_1232]
            mem[_577 + _581 + _923 + 64 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
            if ceil32(_1263) <= _1263:
                mem[_577 + _581 + _923 + 32] = _1263
                mem[64] = _577 + _581 + _923 + _1263 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1533 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1263 + 64] = 32
                _1572 = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 96] = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1572)] = mem[_1533 + 32 len ceil32(_1572)]
                if ceil32(_1572) > _1572:
                    mem[_577 + _581 + _923 + _1263 + _1572 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1572) + 32]
            mem[_577 + _581 + _923 + _1263 + 64] = 0
            mem[_577 + _581 + _923 + 32] = _1263
            mem[64] = _577 + _581 + _923 + _1263 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1548 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
            mem[_577 + _581 + _923 + _1263 + 64] = 32
            _1580 = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 96] = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1580)] = mem[_1548 + 32 len ceil32(_1580)]
            if ceil32(_1580) > _1580:
                mem[_577 + _581 + _923 + _1263 + _1580 + 128] = 0
            return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1580) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _941 = mem[_242]
        mem[_577 + _581 + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_941) <= _941:
            _1228 = mem[64]
            mem[mem[64]] = _577 + _581 + _941 - mem[64]
            mem[64] = _577 + _581 + _941 + 32
            _1260 = mem[_1228]
            mem[_577 + _581 + _941 + 64 len ceil32(mem[_1228])] = mem[_1228 + 32 len ceil32(mem[_1228])]
            if ceil32(_1260) <= _1260:
                mem[_577 + _581 + _941 + 32] = _1260
                mem[64] = _577 + _581 + _941 + _1260 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1535 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
                mem[_577 + _581 + _941 + _1260 + 64] = 32
                _1573 = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 96] = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1573)] = mem[_1535 + 32 len ceil32(_1573)]
                if ceil32(_1573) > _1573:
                    mem[_577 + _581 + _941 + _1260 + _1573 + 128] = 0
                return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1573) + 32]
            mem[_577 + _581 + _941 + _1260 + 64] = 0
            mem[_577 + _581 + _941 + 32] = _1260
            mem[64] = _577 + _581 + _941 + _1260 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1549 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1260 + 64] = 32
            _1581 = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 96] = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1581)] = mem[_1549 + 32 len ceil32(_1581)]
            if ceil32(_1581) > _1581:
                mem[_577 + _581 + _941 + _1260 + _1581 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1581) + 32]
        mem[_577 + _581 + _941 + 32] = 0
        _1234 = mem[64]
        mem[mem[64]] = _577 + _581 + _941 - mem[64]
        mem[64] = _577 + _581 + _941 + 32
        _1264 = mem[_1234]
        mem[_577 + _581 + _941 + 64 len ceil32(mem[_1234])] = mem[_1234 + 32 len ceil32(mem[_1234])]
        if ceil32(_1264) <= _1264:
            mem[_577 + _581 + _941 + 32] = _1264
            mem[64] = _577 + _581 + _941 + _1264 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1537 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1264 + 64] = 32
            _1574 = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 96] = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1574)] = mem[_1537 + 32 len ceil32(_1574)]
            if ceil32(_1574) > _1574:
                mem[_577 + _581 + _941 + _1264 + _1574 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1574) + 32]
        mem[_577 + _581 + _941 + _1264 + 64] = 0
        mem[_577 + _581 + _941 + 32] = _1264
        mem[64] = _577 + _581 + _941 + _1264 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1550 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
        mem[_577 + _581 + _941 + _1264 + 64] = 32
        _1582 = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 96] = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1582)] = mem[_1550 + 32 len ceil32(_1582)]
        if ceil32(_1582) > _1582:
            mem[_577 + _581 + _941 + _1264 + _1582 + 128] = 0
        return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1582) + 32]
    mem[_242 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_242]:
            revert with 'NH{q', 50
        mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _578 = mem[64]
    _582 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _924 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_924) <= _924:
            _1229 = mem[64]
            mem[mem[64]] = _578 + _582 + _924 - mem[64]
            mem[64] = _578 + _582 + _924 + 32
            _1261 = mem[_1229]
            mem[_578 + _582 + _924 + 64 len ceil32(mem[_1229])] = mem[_1229 + 32 len ceil32(mem[_1229])]
            if ceil32(_1261) <= _1261:
                mem[_578 + _582 + _924 + 32] = _1261
                mem[64] = _578 + _582 + _924 + _1261 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1539 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
                mem[_578 + _582 + _924 + _1261 + 64] = 32
                _1575 = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 96] = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1575)] = mem[_1539 + 32 len ceil32(_1575)]
                if ceil32(_1575) > _1575:
                    mem[_578 + _582 + _924 + _1261 + _1575 + 128] = 0
                return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1575) + 32]
            mem[_578 + _582 + _924 + _1261 + 64] = 0
            mem[_578 + _582 + _924 + 32] = _1261
            mem[64] = _578 + _582 + _924 + _1261 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1551 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1261 + 64] = 32
            _1583 = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 96] = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1583)] = mem[_1551 + 32 len ceil32(_1583)]
            if ceil32(_1583) > _1583:
                mem[_578 + _582 + _924 + _1261 + _1583 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1583) + 32]
        mem[_578 + _582 + _924 + 32] = 0
        _1236 = mem[64]
        mem[mem[64]] = _578 + _582 + _924 - mem[64]
        mem[64] = _578 + _582 + _924 + 32
        _1265 = mem[_1236]
        mem[_578 + _582 + _924 + 64 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
        if ceil32(_1265) <= _1265:
            mem[_578 + _582 + _924 + 32] = _1265
            mem[64] = _578 + _582 + _924 + _1265 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1541 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1265 + 64] = 32
            _1576 = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 96] = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1576)] = mem[_1541 + 32 len ceil32(_1576)]
            if ceil32(_1576) > _1576:
                mem[_578 + _582 + _924 + _1265 + _1576 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1576) + 32]
        mem[_578 + _582 + _924 + _1265 + 64] = 0
        mem[_578 + _582 + _924 + 32] = _1265
        mem[64] = _578 + _582 + _924 + _1265 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1552 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
        mem[_578 + _582 + _924 + _1265 + 64] = 32
        _1584 = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 96] = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1584)] = mem[_1552 + 32 len ceil32(_1584)]
        if ceil32(_1584) > _1584:
            mem[_578 + _582 + _924 + _1265 + _1584 + 128] = 0
        return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1584) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _942 = mem[_242]
    mem[_578 + _582 + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
    if ceil32(_942) <= _942:
        _1230 = mem[64]
        mem[mem[64]] = _578 + _582 + _942 - mem[64]
        mem[64] = _578 + _582 + _942 + 32
        _1262 = mem[_1230]
        mem[_578 + _582 + _942 + 64 len ceil32(mem[_1230])] = mem[_1230 + 32 len ceil32(mem[_1230])]
        if ceil32(_1262) <= _1262:
            mem[_578 + _582 + _942 + 32] = _1262
            mem[64] = _578 + _582 + _942 + _1262 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1543 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
            mem[_578 + _582 + _942 + _1262 + 64] = 32
            _1577 = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 96] = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1577)] = mem[_1543 + 32 len ceil32(_1577)]
            if ceil32(_1577) > _1577:
                mem[_578 + _582 + _942 + _1262 + _1577 + 128] = 0
            return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1577) + 32]
        mem[_578 + _582 + _942 + _1262 + 64] = 0
        mem[_578 + _582 + _942 + 32] = _1262
        mem[64] = _578 + _582 + _942 + _1262 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1553 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1262 + 64] = 32
        _1585 = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 96] = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1585)] = mem[_1553 + 32 len ceil32(_1585)]
        if ceil32(_1585) > _1585:
            mem[_578 + _582 + _942 + _1262 + _1585 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1585) + 32]
    mem[_578 + _582 + _942 + 32] = 0
    _1238 = mem[64]
    mem[mem[64]] = _578 + _582 + _942 - mem[64]
    mem[64] = _578 + _582 + _942 + 32
    _1266 = mem[_1238]
    mem[_578 + _582 + _942 + 64 len ceil32(mem[_1238])] = mem[_1238 + 32 len ceil32(mem[_1238])]
    if ceil32(_1266) <= _1266:
        mem[_578 + _582 + _942 + 32] = _1266
        mem[64] = _578 + _582 + _942 + _1266 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1545 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1266 + 64] = 32
        _1578 = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 96] = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1578)] = mem[_1545 + 32 len ceil32(_1578)]
        if ceil32(_1578) > _1578:
            mem[_578 + _582 + _942 + _1266 + _1578 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1578) + 32]
    mem[_578 + _582 + _942 + _1266 + 64] = 0
    mem[_578 + _582 + _942 + 32] = _1266
    mem[64] = _578 + _582 + _942 + _1266 + 64
    if not mem[160]:
        revert with 'NH{q', 18
    if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
        revert with 'NH{q', 50
    _1554 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
    mem[_578 + _582 + _942 + _1266 + 64] = 32
    _1586 = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 96] = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1586)] = mem[_1554 + 32 len ceil32(_1586)]
    if ceil32(_1586) > _1586:
        mem[_578 + _582 + _942 + _1266 + _1586 + 128] = 0
    return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1586) + 32]
}

function getPowerSource(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 12
    mem[128] = 'POWER_SOURCE'
    mem[64] = (32 * stor20.length) + 192
    mem[160] = stor20.length
    s = 192
    idx = 0
    while idx < stor20.length:
        mem[0] = 20
        if stor20[idx].field_0:
            if stor20[idx].field_0 == stor20[idx].field_1 < 32:
                revert with 'NH{q', 34
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(stor20[idx].field_1) + 32
            mem[_124] = stor20[idx].field_1
            if stor20[idx].field_0:
                if stor20[idx].field_0 == stor20[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor20[idx].field_1:
                    if 31 >= stor20[idx].field_1:
                        mem[_124 + 32] = 256 * stor20[idx].field_8
                    else:
                        mem[0] = sha3(20) + idx
                        mem[_124 + 32] = stor20[idx].field_0
                        t = _124 + 32
                        u = sha3(mem[0])
                        while _124 + stor20[idx].field_1 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if stor20[idx].field_0 == stor20[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor20[idx].field_1:
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor20[idx].field_1:
                mem[_124 + 32] = 256 * stor20[idx].field_8
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(20) + idx
            mem[_124 + 32] = stor20[idx].field_0
            t = _124 + 32
            u = sha3(mem[0])
            while _124 + stor20[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _124
            t = t + 32
            u = u + 1
            continue 
        if stor20[idx].field_0 == stor20[idx].field_1 < 32:
            revert with 'NH{q', 34
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(stor20[idx].field_1) + 32
        mem[_126] = stor20[idx].field_1
        if stor20[idx].field_0:
            if stor20[idx].field_0 == stor20[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor20[idx].field_1:
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor20[idx].field_1:
                mem[_126 + 32] = 256 * stor20[idx].field_8
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(20) + idx
            mem[_126 + 32] = stor20[idx].field_0
            t = _126 + 32
            u = sha3(mem[0])
            while _126 + stor20[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _126
            t = t + 32
            u = u + 1
            continue 
        if stor20[idx].field_0 == stor20[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor20[idx].field_1:
            if 31 >= stor20[idx].field_1:
                mem[_126 + 32] = 256 * stor20[idx].field_8
            else:
                mem[0] = sha3(20) + idx
                mem[_126 + 32] = stor20[idx].field_0
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + stor20[idx].field_1 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _126
        s = s + 32
        idx = idx + 1
        continue 
    if not arg1:
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 1
        mem[_123 + 32] = '0'
        _125 = mem[64]
        _127 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            mem[mem[64] + mem[96] + 32] = '0'
            mem[_125 + _127 + 33] = 0
            _584 = mem[64]
            mem[mem[64]] = _125 + _127 + -mem[64] + 1
            mem[64] = _125 + _127 + 33
            _591 = mem[_584]
            mem[_125 + _127 + 65 len ceil32(mem[_584])] = mem[_584 + 32 len ceil32(mem[_584])]
            if ceil32(_591) <= _591:
                mem[_125 + _127 + 33] = _591
                mem[64] = _125 + _127 + _591 + 65
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _957 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
                mem[_125 + _127 + _591 + 65] = 32
                _992 = mem[_957]
                mem[_125 + _127 + _591 + 97] = mem[_957]
                mem[_125 + _127 + _591 + 129 len ceil32(_992)] = mem[_957 + 32 len ceil32(_992)]
                if ceil32(_992) > _992:
                    mem[_125 + _127 + _591 + _992 + 129] = 0
                return 32, mem[_125 + _127 + _591 + 97 len ceil32(_992) + 32]
            mem[_125 + _127 + _591 + 65] = 0
            mem[_125 + _127 + 33] = _591
            mem[64] = _125 + _127 + _591 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _591]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _964 = mem[(32 * sha3(mem[_125 + _127 + 65 len _591]) % mem[160]) + 192]
            mem[_125 + _127 + _591 + 65] = 32
            _998 = mem[_964]
            mem[_125 + _127 + _591 + 97] = mem[_964]
            mem[_125 + _127 + _591 + 129 len ceil32(_998)] = mem[_964 + 32 len ceil32(_998)]
            if ceil32(_998) > _998:
                mem[_125 + _127 + _591 + _998 + 129] = 0
            return 32, mem[_125 + _127 + _591 + 97 len ceil32(_998) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        mem[_125 + _127 + 32] = '0'
        mem[_125 + _127 + 33] = 0
        _586 = mem[64]
        mem[mem[64]] = _125 + _127 + -mem[64] + 1
        mem[64] = _125 + _127 + 33
        _592 = mem[_586]
        mem[_125 + _127 + 65 len ceil32(mem[_586])] = mem[_586 + 32 len ceil32(mem[_586])]
        if ceil32(_592) <= _592:
            mem[_125 + _127 + 33] = _592
            mem[64] = _125 + _127 + _592 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _961 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
            mem[_125 + _127 + _592 + 65] = 32
            _994 = mem[_961]
            mem[_125 + _127 + _592 + 97] = mem[_961]
            mem[_125 + _127 + _592 + 129 len ceil32(_994)] = mem[_961 + 32 len ceil32(_994)]
            if ceil32(_994) > _994:
                mem[_125 + _127 + _592 + _994 + 129] = 0
            return 32, mem[_125 + _127 + _592 + 97 len ceil32(_994) + 32]
        mem[_125 + _127 + _592 + 65] = 0
        mem[_125 + _127 + 33] = _592
        mem[64] = _125 + _127 + _592 + 65
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_125 + _127 + 65 len _592]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _966 = mem[(32 * sha3(mem[_125 + _127 + 65 len _592]) % mem[160]) + 192]
        mem[_125 + _127 + _592 + 65] = 32
        _1000 = mem[_966]
        mem[_125 + _127 + _592 + 97] = mem[_966]
        mem[_125 + _127 + _592 + 129 len ceil32(_1000)] = mem[_966 + 32 len ceil32(_1000)]
        if ceil32(_1000) > _1000:
            mem[_125 + _127 + _592 + _1000 + 129] = 0
        return 32, mem[_125 + _127 + _592 + 97 len ceil32(_1000) + 32]
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
    _242 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_242]:
                revert with 'NH{q', 50
            mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _577 = mem[64]
        _581 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _923 = mem[_242]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
            if ceil32(_923) <= _923:
                _1227 = mem[64]
                mem[mem[64]] = _577 + _581 + _923 - mem[64]
                mem[64] = _577 + _581 + _923 + 32
                _1259 = mem[_1227]
                mem[_577 + _581 + _923 + 64 len ceil32(mem[_1227])] = mem[_1227 + 32 len ceil32(mem[_1227])]
                if ceil32(_1259) <= _1259:
                    mem[_577 + _581 + _923 + 32] = _1259
                    mem[64] = _577 + _581 + _923 + _1259 + 64
                    if not mem[160]:
                        revert with 'NH{q', 18
                    if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                        revert with 'NH{q', 50
                    _1531 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                    mem[_577 + _581 + _923 + _1259 + 64] = 32
                    _1571 = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 96] = mem[_1531]
                    mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1571)] = mem[_1531 + 32 len ceil32(_1571)]
                    if ceil32(_1571) > _1571:
                        mem[_577 + _581 + _923 + _1259 + _1571 + 128] = 0
                    return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1571) + 32]
                mem[_577 + _581 + _923 + _1259 + 64] = 0
                mem[_577 + _581 + _923 + 32] = _1259
                mem[64] = _577 + _581 + _923 + _1259 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1547 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1259]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1259 + 64] = 32
                _1579 = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 96] = mem[_1547]
                mem[_577 + _581 + _923 + _1259 + 128 len ceil32(_1579)] = mem[_1547 + 32 len ceil32(_1579)]
                if ceil32(_1579) > _1579:
                    mem[_577 + _581 + _923 + _1259 + _1579 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1259 + 96 len ceil32(_1579) + 32]
            mem[_577 + _581 + _923 + 32] = 0
            _1232 = mem[64]
            mem[mem[64]] = _577 + _581 + _923 - mem[64]
            mem[64] = _577 + _581 + _923 + 32
            _1263 = mem[_1232]
            mem[_577 + _581 + _923 + 64 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
            if ceil32(_1263) <= _1263:
                mem[_577 + _581 + _923 + 32] = _1263
                mem[64] = _577 + _581 + _923 + _1263 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1533 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
                mem[_577 + _581 + _923 + _1263 + 64] = 32
                _1572 = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 96] = mem[_1533]
                mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1572)] = mem[_1533 + 32 len ceil32(_1572)]
                if ceil32(_1572) > _1572:
                    mem[_577 + _581 + _923 + _1263 + _1572 + 128] = 0
                return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1572) + 32]
            mem[_577 + _581 + _923 + _1263 + 64] = 0
            mem[_577 + _581 + _923 + 32] = _1263
            mem[64] = _577 + _581 + _923 + _1263 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1548 = mem[(32 * sha3(mem[_577 + _581 + _923 + 64 len _1263]) % mem[160]) + 192]
            mem[_577 + _581 + _923 + _1263 + 64] = 32
            _1580 = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 96] = mem[_1548]
            mem[_577 + _581 + _923 + _1263 + 128 len ceil32(_1580)] = mem[_1548 + 32 len ceil32(_1580)]
            if ceil32(_1580) > _1580:
                mem[_577 + _581 + _923 + _1263 + _1580 + 128] = 0
            return 32, mem[_577 + _581 + _923 + _1263 + 96 len ceil32(_1580) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _941 = mem[_242]
        mem[_577 + _581 + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_941) <= _941:
            _1228 = mem[64]
            mem[mem[64]] = _577 + _581 + _941 - mem[64]
            mem[64] = _577 + _581 + _941 + 32
            _1260 = mem[_1228]
            mem[_577 + _581 + _941 + 64 len ceil32(mem[_1228])] = mem[_1228 + 32 len ceil32(mem[_1228])]
            if ceil32(_1260) <= _1260:
                mem[_577 + _581 + _941 + 32] = _1260
                mem[64] = _577 + _581 + _941 + _1260 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1535 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
                mem[_577 + _581 + _941 + _1260 + 64] = 32
                _1573 = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 96] = mem[_1535]
                mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1573)] = mem[_1535 + 32 len ceil32(_1573)]
                if ceil32(_1573) > _1573:
                    mem[_577 + _581 + _941 + _1260 + _1573 + 128] = 0
                return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1573) + 32]
            mem[_577 + _581 + _941 + _1260 + 64] = 0
            mem[_577 + _581 + _941 + 32] = _1260
            mem[64] = _577 + _581 + _941 + _1260 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1549 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1260]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1260 + 64] = 32
            _1581 = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 96] = mem[_1549]
            mem[_577 + _581 + _941 + _1260 + 128 len ceil32(_1581)] = mem[_1549 + 32 len ceil32(_1581)]
            if ceil32(_1581) > _1581:
                mem[_577 + _581 + _941 + _1260 + _1581 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1260 + 96 len ceil32(_1581) + 32]
        mem[_577 + _581 + _941 + 32] = 0
        _1234 = mem[64]
        mem[mem[64]] = _577 + _581 + _941 - mem[64]
        mem[64] = _577 + _581 + _941 + 32
        _1264 = mem[_1234]
        mem[_577 + _581 + _941 + 64 len ceil32(mem[_1234])] = mem[_1234 + 32 len ceil32(mem[_1234])]
        if ceil32(_1264) <= _1264:
            mem[_577 + _581 + _941 + 32] = _1264
            mem[64] = _577 + _581 + _941 + _1264 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1537 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
            mem[_577 + _581 + _941 + _1264 + 64] = 32
            _1574 = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 96] = mem[_1537]
            mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1574)] = mem[_1537 + 32 len ceil32(_1574)]
            if ceil32(_1574) > _1574:
                mem[_577 + _581 + _941 + _1264 + _1574 + 128] = 0
            return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1574) + 32]
        mem[_577 + _581 + _941 + _1264 + 64] = 0
        mem[_577 + _581 + _941 + 32] = _1264
        mem[64] = _577 + _581 + _941 + _1264 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1550 = mem[(32 * sha3(mem[_577 + _581 + _941 + 64 len _1264]) % mem[160]) + 192]
        mem[_577 + _581 + _941 + _1264 + 64] = 32
        _1582 = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 96] = mem[_1550]
        mem[_577 + _581 + _941 + _1264 + 128 len ceil32(_1582)] = mem[_1550 + 32 len ceil32(_1582)]
        if ceil32(_1582) > _1582:
            mem[_577 + _581 + _941 + _1264 + _1582 + 128] = 0
        return 32, mem[_577 + _581 + _941 + _1264 + 96 len ceil32(_1582) + 32]
    mem[_242 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_242]:
            revert with 'NH{q', 50
        mem[t + _242 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _578 = mem[64]
    _582 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _924 = mem[_242]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
        if ceil32(_924) <= _924:
            _1229 = mem[64]
            mem[mem[64]] = _578 + _582 + _924 - mem[64]
            mem[64] = _578 + _582 + _924 + 32
            _1261 = mem[_1229]
            mem[_578 + _582 + _924 + 64 len ceil32(mem[_1229])] = mem[_1229 + 32 len ceil32(mem[_1229])]
            if ceil32(_1261) <= _1261:
                mem[_578 + _582 + _924 + 32] = _1261
                mem[64] = _578 + _582 + _924 + _1261 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _1539 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
                mem[_578 + _582 + _924 + _1261 + 64] = 32
                _1575 = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 96] = mem[_1539]
                mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1575)] = mem[_1539 + 32 len ceil32(_1575)]
                if ceil32(_1575) > _1575:
                    mem[_578 + _582 + _924 + _1261 + _1575 + 128] = 0
                return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1575) + 32]
            mem[_578 + _582 + _924 + _1261 + 64] = 0
            mem[_578 + _582 + _924 + 32] = _1261
            mem[64] = _578 + _582 + _924 + _1261 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1551 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1261]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1261 + 64] = 32
            _1583 = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 96] = mem[_1551]
            mem[_578 + _582 + _924 + _1261 + 128 len ceil32(_1583)] = mem[_1551 + 32 len ceil32(_1583)]
            if ceil32(_1583) > _1583:
                mem[_578 + _582 + _924 + _1261 + _1583 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1261 + 96 len ceil32(_1583) + 32]
        mem[_578 + _582 + _924 + 32] = 0
        _1236 = mem[64]
        mem[mem[64]] = _578 + _582 + _924 - mem[64]
        mem[64] = _578 + _582 + _924 + 32
        _1265 = mem[_1236]
        mem[_578 + _582 + _924 + 64 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
        if ceil32(_1265) <= _1265:
            mem[_578 + _582 + _924 + 32] = _1265
            mem[64] = _578 + _582 + _924 + _1265 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1541 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
            mem[_578 + _582 + _924 + _1265 + 64] = 32
            _1576 = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 96] = mem[_1541]
            mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1576)] = mem[_1541 + 32 len ceil32(_1576)]
            if ceil32(_1576) > _1576:
                mem[_578 + _582 + _924 + _1265 + _1576 + 128] = 0
            return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1576) + 32]
        mem[_578 + _582 + _924 + _1265 + 64] = 0
        mem[_578 + _582 + _924 + 32] = _1265
        mem[64] = _578 + _582 + _924 + _1265 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1552 = mem[(32 * sha3(mem[_578 + _582 + _924 + 64 len _1265]) % mem[160]) + 192]
        mem[_578 + _582 + _924 + _1265 + 64] = 32
        _1584 = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 96] = mem[_1552]
        mem[_578 + _582 + _924 + _1265 + 128 len ceil32(_1584)] = mem[_1552 + 32 len ceil32(_1584)]
        if ceil32(_1584) > _1584:
            mem[_578 + _582 + _924 + _1265 + _1584 + 128] = 0
        return 32, mem[_578 + _582 + _924 + _1265 + 96 len ceil32(_1584) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _942 = mem[_242]
    mem[_578 + _582 + 32 len ceil32(mem[_242])] = mem[_242 + 32 len ceil32(mem[_242])]
    if ceil32(_942) <= _942:
        _1230 = mem[64]
        mem[mem[64]] = _578 + _582 + _942 - mem[64]
        mem[64] = _578 + _582 + _942 + 32
        _1262 = mem[_1230]
        mem[_578 + _582 + _942 + 64 len ceil32(mem[_1230])] = mem[_1230 + 32 len ceil32(mem[_1230])]
        if ceil32(_1262) <= _1262:
            mem[_578 + _582 + _942 + 32] = _1262
            mem[64] = _578 + _582 + _942 + _1262 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _1543 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
            mem[_578 + _582 + _942 + _1262 + 64] = 32
            _1577 = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 96] = mem[_1543]
            mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1577)] = mem[_1543 + 32 len ceil32(_1577)]
            if ceil32(_1577) > _1577:
                mem[_578 + _582 + _942 + _1262 + _1577 + 128] = 0
            return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1577) + 32]
        mem[_578 + _582 + _942 + _1262 + 64] = 0
        mem[_578 + _582 + _942 + 32] = _1262
        mem[64] = _578 + _582 + _942 + _1262 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1553 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1262]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1262 + 64] = 32
        _1585 = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 96] = mem[_1553]
        mem[_578 + _582 + _942 + _1262 + 128 len ceil32(_1585)] = mem[_1553 + 32 len ceil32(_1585)]
        if ceil32(_1585) > _1585:
            mem[_578 + _582 + _942 + _1262 + _1585 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1262 + 96 len ceil32(_1585) + 32]
    mem[_578 + _582 + _942 + 32] = 0
    _1238 = mem[64]
    mem[mem[64]] = _578 + _582 + _942 - mem[64]
    mem[64] = _578 + _582 + _942 + 32
    _1266 = mem[_1238]
    mem[_578 + _582 + _942 + 64 len ceil32(mem[_1238])] = mem[_1238 + 32 len ceil32(mem[_1238])]
    if ceil32(_1266) <= _1266:
        mem[_578 + _582 + _942 + 32] = _1266
        mem[64] = _578 + _582 + _942 + _1266 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _1545 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
        mem[_578 + _582 + _942 + _1266 + 64] = 32
        _1578 = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 96] = mem[_1545]
        mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1578)] = mem[_1545 + 32 len ceil32(_1578)]
        if ceil32(_1578) > _1578:
            mem[_578 + _582 + _942 + _1266 + _1578 + 128] = 0
        return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1578) + 32]
    mem[_578 + _582 + _942 + _1266 + 64] = 0
    mem[_578 + _582 + _942 + 32] = _1266
    mem[64] = _578 + _582 + _942 + _1266 + 64
    if not mem[160]:
        revert with 'NH{q', 18
    if sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160] >= mem[160]:
        revert with 'NH{q', 50
    _1554 = mem[(32 * sha3(mem[_578 + _582 + _942 + 64 len _1266]) % mem[160]) + 192]
    mem[_578 + _582 + _942 + _1266 + 64] = 32
    _1586 = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 96] = mem[_1554]
    mem[_578 + _582 + _942 + _1266 + 128 len ceil32(_1586)] = mem[_1554 + 32 len ceil32(_1586)]
    if ceil32(_1586) > _1586:
        mem[_578 + _582 + _942 + _1266 + _1586 + 128] = 0
    return 32, mem[_578 + _582 + _942 + _1266 + 96 len ceil32(_1586) + 32]
}

function getModSlotsText(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 8
    mem[128] = 'MODSLOTS'
    if not arg1:
        mem[297] = 'MODSLOTS', '0', 0
        if sha3(Mask(72, 184, 'MODSLOTS', '0', 0) >> 184) % 3 > -2:
            revert with 'NH{q', 17
        if not (sha3(Mask(72, 184, 'MODSLOTS', '0', 0) >> 184) % 3) + 1:
            return '0', 0
        s = 0
        idx = (sha3(Mask(72, 184, 'MODSLOTS', '0', 0) >> 184) % 3) + 1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[306] = s
        if s:
            mem[338 len s] = call.data[calldata.size len s]
        t = s
        idx = (sha3(mem[297 len 9]) % 3) + 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[306]:
                revert with 'NH{q', 50
            mem[t + 337 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(s) + 338] = 32
        mem[ceil32(s) + 370] = mem[306]
        mem[ceil32(s) + 402 len ceil32(mem[306])] = mem[338 len ceil32(mem[306])]
        if ceil32(mem[306]) > mem[306]:
            mem[ceil32(s) + mem[306] + 402] = 0
        return Array(len=mem[306], data=mem[ceil32(s) + 402 len ceil32(mem[306])])
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
    mem[160] = s
    mem[64] = ceil32(s) + 192
    if not s:
        t = s
        idx = arg1
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
        _386 = mem[64]
        _390 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _684 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(_684) <= _684:
                _948 = mem[64]
                mem[mem[64]] = _386 + _390 + _684 - mem[64]
                mem[64] = _386 + _390 + _684 + 32
                _988 = mem[_948]
                mem[_386 + _390 + _684 + 64 len ceil32(mem[_948])] = mem[_948 + 32 len ceil32(mem[_948])]
                if ceil32(_988) <= _988:
                    mem[_386 + _390 + _684 + 32] = _988
                    mem[64] = _386 + _390 + _684 + _988 + 64
                    _1262 = sha3(mem[_386 + _390 + _684 + 64 len _988])
                    if sha3(mem[_386 + _390 + _684 + 64 len _988]) % 3 > -2:
                        revert with 'NH{q', 17
                    if not (sha3(mem[_386 + _390 + _684 + 64 len _988]) % 3) + 1:
                        return '0', 0
                    s = 0
                    idx = (sha3(mem[_386 + _390 + _684 + 64 len _988]) % 3) + 1
                    while idx:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 'NH{q', 65
                    mem[_386 + _390 + _684 + _988 + 64] = s
                    mem[64] = _386 + _390 + _684 + _988 + ceil32(s) + 96
                    if not s:
                        t = s
                        idx = (_1262 % 3) + 1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[_386 + _390 + _684 + _988 + 64]:
                                revert with 'NH{q', 50
                            mem[t + _386 + _390 + _684 + _988 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[mem[64]] = 32
                        _1820 = mem[_386 + _390 + _684 + _988 + 64]
                        mem[mem[64] + 32] = mem[_386 + _390 + _684 + _988 + 64]
                        mem[mem[64] + 64 len ceil32(_1820)] = mem[_386 + _390 + _684 + _988 + 96 len ceil32(_1820)]
                        if ceil32(_1820) > _1820:
                            mem[mem[64] + _1820 + 64] = 0
                        return 32, mem[mem[64] + 32 len ceil32(_1820) + 32]
                    mem[_386 + _390 + _684 + _988 + 96 len s] = call.data[calldata.size len s]
                    t = s
                    idx = (_1262 % 3) + 1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_386 + _390 + _684 + _988 + 64]:
                            revert with 'NH{q', 50
                        mem[t + _386 + _390 + _684 + _988 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _1789 = mem[64]
                    mem[mem[64]] = 32
                    _1821 = mem[_386 + _390 + _684 + _988 + 64]
                    mem[mem[64] + 32] = mem[_386 + _390 + _684 + _988 + 64]
                    mem[mem[64] + 64 len ceil32(_1821)] = mem[_386 + _390 + _684 + _988 + 96 len ceil32(_1821)]
                    if ceil32(_1821) <= _1821:
                        return 32, mem[mem[64] + 32 len ceil32(_1821) + 32]
                    mem[mem[64] + _1821 + 64] = 0
                    return memory
                      from mem[64]
                       len _1789 + ceil32(_1821) + -mem[64] + 64
                mem[_386 + _390 + _684 + _988 + 64] = 0
                mem[_386 + _390 + _684 + 32] = _988
                mem[64] = _386 + _390 + _684 + _988 + 64
                _1286 = sha3(mem[_386 + _390 + _684 + 64 len _988])
                if sha3(mem[_386 + _390 + _684 + 64 len _988]) % 3 > -2:
                    revert with 'NH{q', 17
                if not (sha3(mem[_386 + _390 + _684 + 64 len _988]) % 3) + 1:
                    return '0', 0
                s = 0
                idx = (sha3(mem[_386 + _390 + _684 + 64 len _988]) % 3) + 1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[_386 + _390 + _684 + _988 + 64] = s
                mem[64] = _386 + _390 + _684 + _988 + ceil32(s) + 96
                if not s:
                    t = s
                    idx = (_1286 % 3) + 1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_386 + _390 + _684 + _988 + 64]:
                            revert with 'NH{q', 50
                        mem[t + _386 + _390 + _684 + _988 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _1790 = mem[64]
                    mem[mem[64]] = 32
                    _1822 = mem[_386 + _390 + _684 + _988 + 64]
                    mem[mem[64] + 32] = mem[_386 + _390 + _684 + _988 + 64]
                    mem[mem[64] + 64 len ceil32(_1822)] = mem[_386 + _390 + _684 + _988 + 96 len ceil32(_1822)]
                    if ceil32(_1822) <= _1822:
                        return 32, mem[mem[64] + 32 len ceil32(_1822) + 32]
                    mem[mem[64] + _1822 + 64] = 0
                    return memory
                      from mem[64]
                       len _1790 + ceil32(_1822) + -mem[64] + 64
                mem[_386 + _390 + _684 + _988 + 96 len s] = call.data[calldata.size len s]
                t = s
                idx = (_1286 % 3) + 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_386 + _390 + _684 + _988 + 64]:
                        revert with 'NH{q', 50
                    mem[t + _386 + _390 + _684 + _988 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1791 = mem[64]
                mem[mem[64]] = 32
                _1823 = mem[_386 + _390 + _684 + _988 + 64]
                mem[mem[64] + 32] = mem[_386 + _390 + _684 + _988 + 64]
                mem[mem[64] + 64 len ceil32(_1823)] = mem[_386 + _390 + _684 + _988 + 96 len ceil32(_1823)]
                if ceil32(_1823) <= _1823:
                    return 32, mem[mem[64] + 32 len ceil32(_1823) + 32]
                mem[mem[64] + _1823 + 64] = 0
                return memory
                  from mem[64]
                   len _1791 + ceil32(_1823) + -mem[64] + 64
            mem[_386 + _390 + _684 + 32] = 0
            _953 = mem[64]
            mem[mem[64]] = _386 + _390 + _684 - mem[64]
            mem[64] = _386 + _390 + _684 + 32
            _1000 = mem[_953]
            mem[_386 + _390 + _684 + 64 len ceil32(mem[_953])] = mem[_953 + 32 len ceil32(mem[_953])]
            if ceil32(_1000) <= _1000:
                mem[_386 + _390 + _684 + 32] = _1000
                mem[64] = _386 + _390 + _684 + _1000 + 64
                _1265 = sha3(mem[_386 + _390 + _684 + 64 len _1000])
                if sha3(mem[_386 + _390 + _684 + 64 len _1000]) % 3 > -2:
                    revert with 'NH{q', 17
                if not (sha3(mem[_386 + _390 + _684 + 64 len _1000]) % 3) + 1:
                    return '0', 0
                s = 0
                idx = (sha3(mem[_386 + _390 + _684 + 64 len _1000]) % 3) + 1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[_386 + _390 + _684 + _1000 + 64] = s
                mem[64] = _386 + _390 + _684 + _1000 + ceil32(s) + 96
                if not s:
                    t = s
                    idx = (_1265 % 3) + 1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_386 + _390 + _684 + _1000 + 64]:
                            revert with 'NH{q', 50
                        mem[t + _386 + _390 + _684 + _1000 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[mem[64]] = 32
                    _1824 = mem[_386 + _390 + _684 + _1000 + 64]
                    mem[mem[64] + 32] = mem[_386 + _390 + _684 + _1000 + 64]
                    mem[mem[64] + 64 len ceil32(_1824)] = mem[_386 + _390 + _684 + _1000 + 96 len ceil32(_1824)]
                    if ceil32(_1824) > _1824:
                        mem[mem[64] + _1824 + 64] = 0
                    return 32, mem[mem[64] + 32 len ceil32(_1824) + 32]
                mem[_386 + _390 + _684 + _1000 + 96 len s] = call.data[calldata.size len s]
                t = s
                idx = (_1265 % 3) + 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_386 + _390 + _684 + _1000 + 64]:
                        revert with 'NH{q', 50
                    mem[t + _386 + _390 + _684 + _1000 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[mem[64]] = 32
                _1825 = mem[_386 + _390 + _684 + _1000 + 64]
                mem[mem[64] + 32] = mem[_386 + _390 + _684 + _1000 + 64]
                mem[mem[64] + 64 len ceil32(_1825)] = mem[_386 + _390 + _684 + _1000 + 96 len ceil32(_1825)]
                if ceil32(_1825) > _1825:
                    mem[mem[64] + _1825 + 64] = 0
                return 32, mem[mem[64] + 32 len ceil32(_1825) + 32]
            mem[_386 + _390 + _684 + _1000 + 64] = 0
            mem[_386 + _390 + _684 + 32] = _1000
            mem[64] = _386 + _390 + _684 + _1000 + 64
            _1289 = sha3(mem[_386 + _390 + _684 + 64 len _1000])
            if sha3(mem[_386 + _390 + _684 + 64 len _1000]) % 3 > -2:
                revert with 'NH{q', 17
            if not (sha3(mem[_386 + _390 + _684 + 64 len _1000]) % 3) + 1:
                return '0', 0
            s = 0
            idx = (sha3(mem[_386 + _390 + _684 + 64 len _1000]) % 3) + 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[_386 + _390 + _684 + _1000 + 64] = s
            mem[64] = _386 + _390 + _684 + _1000 + ceil32(s) + 96
            if not s:
                t = s
                idx = (_1289 % 3) + 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_386 + _390 + _684 + _1000 + 64]:
                        revert with 'NH{q', 50
                    mem[t + _386 + _390 + _684 + _1000 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1794 = mem[64]
                mem[mem[64]] = 32
                _1826 = mem[_386 + _390 + _684 + _1000 + 64]
                mem[mem[64] + 32] = mem[_386 + _390 + _684 + _1000 + 64]
                mem[mem[64] + 64 len ceil32(_1826)] = mem[_386 + _390 + _684 + _1000 + 96 len ceil32(_1826)]
                if ceil32(_1826) <= _1826:
                    return 32, mem[mem[64] + 32 len ceil32(_1826) + 32]
                mem[mem[64] + _1826 + 64] = 0
                return memory
                  from mem[64]
                   len _1794 + ceil32(_1826) + -mem[64] + 64
            mem[_386 + _390 + _684 + _1000 + 96 len s] = call.data[calldata.size len s]
            t = s
            idx = (_1289 % 3) + 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_386 + _390 + _684 + _1000 + 64]:
                    revert with 'NH{q', 50
                mem[t + _386 + _390 + _684 + _1000 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1795 = mem[64]
            mem[mem[64]] = 32
            _1827 = mem[_386 + _390 + _684 + _1000 + 64]
            mem[mem[64] + 32] = mem[_386 + _390 + _684 + _1000 + 64]
            mem[mem[64] + 64 len ceil32(_1827)] = mem[_386 + _390 + _684 + _1000 + 96 len ceil32(_1827)]
            if ceil32(_1827) <= _1827:
                return 32, mem[mem[64] + 32 len ceil32(_1827) + 32]
            mem[mem[64] + _1827 + 64] = 0
            return memory
              from mem[64]
               len _1795 + ceil32(_1827) + -mem[64] + 64
        mem[mem[64] + mem[96] + 32] = 0
        _698 = mem[160]
        mem[_386 + _390 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(_698) <= _698:
            _949 = mem[64]
            mem[mem[64]] = _386 + _390 + _698 - mem[64]
            mem[64] = _386 + _390 + _698 + 32
            _989 = mem[_949]
            mem[_386 + _390 + _698 + 64 len ceil32(mem[_949])] = mem[_949 + 32 len ceil32(mem[_949])]
            if ceil32(_989) <= _989:
                mem[_386 + _390 + _698 + 32] = _989
                mem[64] = _386 + _390 + _698 + _989 + 64
                _1268 = sha3(mem[_386 + _390 + _698 + 64 len _989])
                if sha3(mem[_386 + _390 + _698 + 64 len _989]) % 3 > -2:
                    revert with 'NH{q', 17
                if not (sha3(mem[_386 + _390 + _698 + 64 len _989]) % 3) + 1:
                    return '0', 0
                s = 0
                idx = (sha3(mem[_386 + _390 + _698 + 64 len _989]) % 3) + 1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[_386 + _390 + _698 + _989 + 64] = s
                mem[64] = _386 + _390 + _698 + _989 + ceil32(s) + 96
                if not s:
                    t = s
                    idx = (_1268 % 3) + 1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_386 + _390 + _698 + _989 + 64]:
                            revert with 'NH{q', 50
                        mem[t + _386 + _390 + _698 + _989 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[mem[64]] = 32
                    _1828 = mem[_386 + _390 + _698 + _989 + 64]
                    mem[mem[64] + 32] = mem[_386 + _390 + _698 + _989 + 64]
                    mem[mem[64] + 64 len ceil32(_1828)] = mem[_386 + _390 + _698 + _989 + 96 len ceil32(_1828)]
                    if ceil32(_1828) > _1828:
                        mem[mem[64] + _1828 + 64] = 0
                    return 32, mem[mem[64] + 32 len ceil32(_1828) + 32]
                mem[_386 + _390 + _698 + _989 + 96 len s] = call.data[calldata.size len s]
                t = s
                idx = (_1268 % 3) + 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_386 + _390 + _698 + _989 + 64]:
                        revert with 'NH{q', 50
                    mem[t + _386 + _390 + _698 + _989 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1797 = mem[64]
                mem[mem[64]] = 32
                _1829 = mem[_386 + _390 + _698 + _989 + 64]
                mem[mem[64] + 32] = mem[_386 + _390 + _698 + _989 + 64]
                mem[mem[64] + 64 len ceil32(_1829)] = mem[_386 + _390 + _698 + _989 + 96 len ceil32(_1829)]
                if ceil32(_1829) <= _1829:
                    return 32, mem[mem[64] + 32 len ceil32(_1829) + 32]
                mem[mem[64] + _1829 + 64] = 0
                return memory
                  from mem[64]
                   len _1797 + ceil32(_1829) + -mem[64] + 64
            mem[_386 + _390 + _698 + _989 + 64] = 0
            mem[_386 + _390 + _698 + 32] = _989
            mem[64] = _386 + _390 + _698 + _989 + 64
            _1292 = sha3(mem[_386 + _390 + _698 + 64 len _989])
            if sha3(mem[_386 + _390 + _698 + 64 len _989]) % 3 > -2:
                revert with 'NH{q', 17
            if not (sha3(mem[_386 + _390 + _698 + 64 len _989]) % 3) + 1:
                return '0', 0
            s = 0
            idx = (sha3(mem[_386 + _390 + _698 + 64 len _989]) % 3) + 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[_386 + _390 + _698 + _989 + 64] = s
            mem[64] = _386 + _390 + _698 + _989 + ceil32(s) + 96
            if not s:
                t = s
                idx = (_1292 % 3) + 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_386 + _390 + _698 + _989 + 64]:
                        revert with 'NH{q', 50
                    mem[t + _386 + _390 + _698 + _989 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[mem[64]] = 32
                _1830 = mem[_386 + _390 + _698 + _989 + 64]
                mem[mem[64] + 32] = mem[_386 + _390 + _698 + _989 + 64]
                mem[mem[64] + 64 len ceil32(_1830)] = mem[_386 + _390 + _698 + _989 + 96 len ceil32(_1830)]
                if ceil32(_1830) > _1830:
                    mem[mem[64] + _1830 + 64] = 0
                return 32, mem[mem[64] + 32 len ceil32(_1830) + 32]
            mem[_386 + _390 + _698 + _989 + 96 len s] = call.data[calldata.size len s]
            t = s
            idx = (_1292 % 3) + 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_386 + _390 + _698 + _989 + 64]:
                    revert with 'NH{q', 50
                mem[t + _386 + _390 + _698 + _989 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1799 = mem[64]
            mem[mem[64]] = 32
            _1831 = mem[_386 + _390 + _698 + _989 + 64]
            mem[mem[64] + 32] = mem[_386 + _390 + _698 + _989 + 64]
            mem[mem[64] + 64 len ceil32(_1831)] = mem[_386 + _390 + _698 + _989 + 96 len ceil32(_1831)]
            if ceil32(_1831) <= _1831:
                return 32, mem[mem[64] + 32 len ceil32(_1831) + 32]
            mem[mem[64] + _1831 + 64] = 0
            return memory
              from mem[64]
               len _1799 + ceil32(_1831) + -mem[64] + 64
        mem[_386 + _390 + _698 + 32] = 0
        _955 = mem[64]
        mem[mem[64]] = _386 + _390 + _698 - mem[64]
        mem[64] = _386 + _390 + _698 + 32
        _1001 = mem[_955]
        mem[_386 + _390 + _698 + 64 len ceil32(mem[_955])] = mem[_955 + 32 len ceil32(mem[_955])]
        if ceil32(_1001) <= _1001:
            mem[_386 + _390 + _698 + 32] = _1001
            mem[64] = _386 + _390 + _698 + _1001 + 64
            _1271 = sha3(mem[_386 + _390 + _698 + 64 len _1001])
            if sha3(mem[_386 + _390 + _698 + 64 len _1001]) % 3 > -2:
                revert with 'NH{q', 17
            if not (sha3(mem[_386 + _390 + _698 + 64 len _1001]) % 3) + 1:
                return '0', 0
            s = 0
            idx = (sha3(mem[_386 + _390 + _698 + 64 len _1001]) % 3) + 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[_386 + _390 + _698 + _1001 + 64] = s
            mem[64] = _386 + _390 + _698 + _1001 + ceil32(s) + 96
            if not s:
                t = s
                idx = (_1271 % 3) + 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_386 + _390 + _698 + _1001 + 64]:
                        revert with 'NH{q', 50
                    mem[t + _386 + _390 + _698 + _1001 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[mem[64]] = 32
                _1832 = mem[_386 + _390 + _698 + _1001 + 64]
                mem[mem[64] + 32] = mem[_386 + _390 + _698 + _1001 + 64]
                mem[mem[64] + 64 len ceil32(_1832)] = mem[_386 + _390 + _698 + _1001 + 96 len ceil32(_1832)]
                if ceil32(_1832) > _1832:
                    mem[mem[64] + _1832 + 64] = 0
                return 32, mem[mem[64] + 32 len ceil32(_1832) + 32]
            mem[_386 + _390 + _698 + _1001 + 96 len s] = call.data[calldata.size len s]
            t = s
            idx = (_1271 % 3) + 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_386 + _390 + _698 + _1001 + 64]:
                    revert with 'NH{q', 50
                mem[t + _386 + _390 + _698 + _1001 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 32
            _1833 = mem[_386 + _390 + _698 + _1001 + 64]
            mem[mem[64] + 32] = mem[_386 + _390 + _698 + _1001 + 64]
            mem[mem[64] + 64 len ceil32(_1833)] = mem[_386 + _390 + _698 + _1001 + 96 len ceil32(_1833)]
            if ceil32(_1833) > _1833:
                mem[mem[64] + _1833 + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_1833) + 32]
        mem[_386 + _390 + _698 + _1001 + 64] = 0
        mem[_386 + _390 + _698 + 32] = _1001
        mem[64] = _386 + _390 + _698 + _1001 + 64
        _1295 = sha3(mem[_386 + _390 + _698 + 64 len _1001])
        if sha3(mem[_386 + _390 + _698 + 64 len _1001]) % 3 > -2:
            revert with 'NH{q', 17
        if not (sha3(mem[_386 + _390 + _698 + 64 len _1001]) % 3) + 1:
            return '0', 0
        s = 0
        idx = (sha3(mem[_386 + _390 + _698 + 64 len _1001]) % 3) + 1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[_386 + _390 + _698 + _1001 + 64] = s
        mem[64] = _386 + _390 + _698 + _1001 + ceil32(s) + 96
        if not s:
            t = s
            idx = (_1295 % 3) + 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_386 + _390 + _698 + _1001 + 64]:
                    revert with 'NH{q', 50
                mem[t + _386 + _390 + _698 + _1001 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1802 = mem[64]
            mem[mem[64]] = 32
            _1834 = mem[_386 + _390 + _698 + _1001 + 64]
            mem[mem[64] + 32] = mem[_386 + _390 + _698 + _1001 + 64]
            mem[mem[64] + 64 len ceil32(_1834)] = mem[_386 + _390 + _698 + _1001 + 96 len ceil32(_1834)]
            if ceil32(_1834) <= _1834:
                return 32, mem[mem[64] + 32 len ceil32(_1834) + 32]
            mem[mem[64] + _1834 + 64] = 0
            return memory
              from mem[64]
               len _1802 + ceil32(_1834) + -mem[64] + 64
        mem[_386 + _390 + _698 + _1001 + 96 len s] = call.data[calldata.size len s]
        t = s
        idx = (_1295 % 3) + 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_386 + _390 + _698 + _1001 + 64]:
                revert with 'NH{q', 50
            mem[t + _386 + _390 + _698 + _1001 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1803 = mem[64]
        mem[mem[64]] = 32
        _1835 = mem[_386 + _390 + _698 + _1001 + 64]
        mem[mem[64] + 32] = mem[_386 + _390 + _698 + _1001 + 64]
        mem[mem[64] + 64 len ceil32(_1835)] = mem[_386 + _390 + _698 + _1001 + 96 len ceil32(_1835)]
        if ceil32(_1835) <= _1835:
            return 32, mem[mem[64] + 32 len ceil32(_1835) + 32]
        mem[mem[64] + _1835 + 64] = 0
        return memory
          from mem[64]
           len _1803 + ceil32(_1835) + -mem[64] + 64
    mem[192 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
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
    _387 = mem[64]
    _391 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _685 = mem[160]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(_685) <= _685:
            _950 = mem[64]
            mem[mem[64]] = _387 + _391 + _685 - mem[64]
            mem[64] = _387 + _391 + _685 + 32
            _990 = mem[_950]
            mem[_387 + _391 + _685 + 64 len ceil32(mem[_950])] = mem[_950 + 32 len ceil32(mem[_950])]
            if ceil32(_990) <= _990:
                mem[_387 + _391 + _685 + 32] = _990
                mem[64] = _387 + _391 + _685 + _990 + 64
                _1274 = sha3(mem[_387 + _391 + _685 + 64 len _990])
                if sha3(mem[_387 + _391 + _685 + 64 len _990]) % 3 > -2:
                    revert with 'NH{q', 17
                if not (sha3(mem[_387 + _391 + _685 + 64 len _990]) % 3) + 1:
                    return '0', 0
                s = 0
                idx = (sha3(mem[_387 + _391 + _685 + 64 len _990]) % 3) + 1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[_387 + _391 + _685 + _990 + 64] = s
                mem[64] = _387 + _391 + _685 + _990 + ceil32(s) + 96
                if not s:
                    t = s
                    idx = (_1274 % 3) + 1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_387 + _391 + _685 + _990 + 64]:
                            revert with 'NH{q', 50
                        mem[t + _387 + _391 + _685 + _990 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _1804 = mem[64]
                    mem[mem[64]] = 32
                    _1836 = mem[_387 + _391 + _685 + _990 + 64]
                    mem[mem[64] + 32] = mem[_387 + _391 + _685 + _990 + 64]
                    mem[mem[64] + 64 len ceil32(_1836)] = mem[_387 + _391 + _685 + _990 + 96 len ceil32(_1836)]
                    if ceil32(_1836) <= _1836:
                        return 32, mem[mem[64] + 32 len ceil32(_1836) + 32]
                    mem[mem[64] + _1836 + 64] = 0
                    return memory
                      from mem[64]
                       len _1804 + ceil32(_1836) + -mem[64] + 64
                mem[_387 + _391 + _685 + _990 + 96 len s] = call.data[calldata.size len s]
                t = s
                idx = (_1274 % 3) + 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_387 + _391 + _685 + _990 + 64]:
                        revert with 'NH{q', 50
                    mem[t + _387 + _391 + _685 + _990 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1805 = mem[64]
                mem[mem[64]] = 32
                _1837 = mem[_387 + _391 + _685 + _990 + 64]
                mem[mem[64] + 32] = mem[_387 + _391 + _685 + _990 + 64]
                mem[mem[64] + 64 len ceil32(_1837)] = mem[_387 + _391 + _685 + _990 + 96 len ceil32(_1837)]
                if ceil32(_1837) <= _1837:
                    return 32, mem[mem[64] + 32 len ceil32(_1837) + 32]
                mem[mem[64] + _1837 + 64] = 0
                return memory
                  from mem[64]
                   len _1805 + ceil32(_1837) + -mem[64] + 64
            mem[_387 + _391 + _685 + _990 + 64] = 0
            mem[_387 + _391 + _685 + 32] = _990
            mem[64] = _387 + _391 + _685 + _990 + 64
            _1298 = sha3(mem[_387 + _391 + _685 + 64 len _990])
            if sha3(mem[_387 + _391 + _685 + 64 len _990]) % 3 > -2:
                revert with 'NH{q', 17
            if not (sha3(mem[_387 + _391 + _685 + 64 len _990]) % 3) + 1:
                return '0', 0
            s = 0
            idx = (sha3(mem[_387 + _391 + _685 + 64 len _990]) % 3) + 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[_387 + _391 + _685 + _990 + 64] = s
            mem[64] = _387 + _391 + _685 + _990 + ceil32(s) + 96
            if not s:
                t = s
                idx = (_1298 % 3) + 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_387 + _391 + _685 + _990 + 64]:
                        revert with 'NH{q', 50
                    mem[t + _387 + _391 + _685 + _990 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[mem[64]] = 32
                _1838 = mem[_387 + _391 + _685 + _990 + 64]
                mem[mem[64] + 32] = mem[_387 + _391 + _685 + _990 + 64]
                mem[mem[64] + 64 len ceil32(_1838)] = mem[_387 + _391 + _685 + _990 + 96 len ceil32(_1838)]
                if ceil32(_1838) > _1838:
                    mem[mem[64] + _1838 + 64] = 0
                return 32, mem[mem[64] + 32 len ceil32(_1838) + 32]
            mem[_387 + _391 + _685 + _990 + 96 len s] = call.data[calldata.size len s]
            t = s
            idx = (_1298 % 3) + 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_387 + _391 + _685 + _990 + 64]:
                    revert with 'NH{q', 50
                mem[t + _387 + _391 + _685 + _990 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 32
            _1839 = mem[_387 + _391 + _685 + _990 + 64]
            mem[mem[64] + 32] = mem[_387 + _391 + _685 + _990 + 64]
            mem[mem[64] + 64 len ceil32(_1839)] = mem[_387 + _391 + _685 + _990 + 96 len ceil32(_1839)]
            if ceil32(_1839) > _1839:
                mem[mem[64] + _1839 + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_1839) + 32]
        mem[_387 + _391 + _685 + 32] = 0
        _957 = mem[64]
        mem[mem[64]] = _387 + _391 + _685 - mem[64]
        mem[64] = _387 + _391 + _685 + 32
        _1002 = mem[_957]
        mem[_387 + _391 + _685 + 64 len ceil32(mem[_957])] = mem[_957 + 32 len ceil32(mem[_957])]
        if ceil32(_1002) <= _1002:
            mem[_387 + _391 + _685 + 32] = _1002
            mem[64] = _387 + _391 + _685 + _1002 + 64
            _1277 = sha3(mem[_387 + _391 + _685 + 64 len _1002])
            if sha3(mem[_387 + _391 + _685 + 64 len _1002]) % 3 > -2:
                revert with 'NH{q', 17
            if not (sha3(mem[_387 + _391 + _685 + 64 len _1002]) % 3) + 1:
                return '0', 0
            s = 0
            idx = (sha3(mem[_387 + _391 + _685 + 64 len _1002]) % 3) + 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[_387 + _391 + _685 + _1002 + 64] = s
            mem[64] = _387 + _391 + _685 + _1002 + ceil32(s) + 96
            if not s:
                t = s
                idx = (_1277 % 3) + 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_387 + _391 + _685 + _1002 + 64]:
                        revert with 'NH{q', 50
                    mem[t + _387 + _391 + _685 + _1002 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1808 = mem[64]
                mem[mem[64]] = 32
                _1840 = mem[_387 + _391 + _685 + _1002 + 64]
                mem[mem[64] + 32] = mem[_387 + _391 + _685 + _1002 + 64]
                mem[mem[64] + 64 len ceil32(_1840)] = mem[_387 + _391 + _685 + _1002 + 96 len ceil32(_1840)]
                if ceil32(_1840) <= _1840:
                    return 32, mem[mem[64] + 32 len ceil32(_1840) + 32]
                mem[mem[64] + _1840 + 64] = 0
                return memory
                  from mem[64]
                   len _1808 + ceil32(_1840) + -mem[64] + 64
            mem[_387 + _391 + _685 + _1002 + 96 len s] = call.data[calldata.size len s]
            t = s
            idx = (_1277 % 3) + 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_387 + _391 + _685 + _1002 + 64]:
                    revert with 'NH{q', 50
                mem[t + _387 + _391 + _685 + _1002 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 32
            _1841 = mem[_387 + _391 + _685 + _1002 + 64]
            mem[mem[64] + 32] = mem[_387 + _391 + _685 + _1002 + 64]
            mem[mem[64] + 64 len ceil32(_1841)] = mem[_387 + _391 + _685 + _1002 + 96 len ceil32(_1841)]
            if ceil32(_1841) > _1841:
                mem[mem[64] + _1841 + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_1841) + 32]
        mem[_387 + _391 + _685 + _1002 + 64] = 0
        mem[_387 + _391 + _685 + 32] = _1002
        mem[64] = _387 + _391 + _685 + _1002 + 64
        _1301 = sha3(mem[_387 + _391 + _685 + 64 len _1002])
        if sha3(mem[_387 + _391 + _685 + 64 len _1002]) % 3 > -2:
            revert with 'NH{q', 17
        if not (sha3(mem[_387 + _391 + _685 + 64 len _1002]) % 3) + 1:
            return '0', 0
        s = 0
        idx = (sha3(mem[_387 + _391 + _685 + 64 len _1002]) % 3) + 1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[_387 + _391 + _685 + _1002 + 64] = s
        mem[64] = _387 + _391 + _685 + _1002 + ceil32(s) + 96
        if not s:
            t = s
            idx = (_1301 % 3) + 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_387 + _391 + _685 + _1002 + 64]:
                    revert with 'NH{q', 50
                mem[t + _387 + _391 + _685 + _1002 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 32
            _1842 = mem[_387 + _391 + _685 + _1002 + 64]
            mem[mem[64] + 32] = mem[_387 + _391 + _685 + _1002 + 64]
            mem[mem[64] + 64 len ceil32(_1842)] = mem[_387 + _391 + _685 + _1002 + 96 len ceil32(_1842)]
            if ceil32(_1842) > _1842:
                mem[mem[64] + _1842 + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_1842) + 32]
        mem[_387 + _391 + _685 + _1002 + 96 len s] = call.data[calldata.size len s]
        t = s
        idx = (_1301 % 3) + 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_387 + _391 + _685 + _1002 + 64]:
                revert with 'NH{q', 50
            mem[t + _387 + _391 + _685 + _1002 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1811 = mem[64]
        mem[mem[64]] = 32
        _1843 = mem[_387 + _391 + _685 + _1002 + 64]
        mem[mem[64] + 32] = mem[_387 + _391 + _685 + _1002 + 64]
        mem[mem[64] + 64 len ceil32(_1843)] = mem[_387 + _391 + _685 + _1002 + 96 len ceil32(_1843)]
        if ceil32(_1843) <= _1843:
            return 32, mem[mem[64] + 32 len ceil32(_1843) + 32]
        mem[mem[64] + _1843 + 64] = 0
        return memory
          from mem[64]
           len _1811 + ceil32(_1843) + -mem[64] + 64
    mem[mem[64] + mem[96] + 32] = 0
    _699 = mem[160]
    mem[_387 + _391 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
    if ceil32(_699) <= _699:
        _951 = mem[64]
        mem[mem[64]] = _387 + _391 + _699 - mem[64]
        mem[64] = _387 + _391 + _699 + 32
        _991 = mem[_951]
        mem[_387 + _391 + _699 + 64 len ceil32(mem[_951])] = mem[_951 + 32 len ceil32(mem[_951])]
        if ceil32(_991) <= _991:
            mem[_387 + _391 + _699 + 32] = _991
            mem[64] = _387 + _391 + _699 + _991 + 64
            _1280 = sha3(mem[_387 + _391 + _699 + 64 len _991])
            if sha3(mem[_387 + _391 + _699 + 64 len _991]) % 3 > -2:
                revert with 'NH{q', 17
            if not (sha3(mem[_387 + _391 + _699 + 64 len _991]) % 3) + 1:
                return '0', 0
            s = 0
            idx = (sha3(mem[_387 + _391 + _699 + 64 len _991]) % 3) + 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[_387 + _391 + _699 + _991 + 64] = s
            mem[64] = _387 + _391 + _699 + _991 + ceil32(s) + 96
            if not s:
                t = s
                idx = (_1280 % 3) + 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_387 + _391 + _699 + _991 + 64]:
                        revert with 'NH{q', 50
                    mem[t + _387 + _391 + _699 + _991 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1812 = mem[64]
                mem[mem[64]] = 32
                _1844 = mem[_387 + _391 + _699 + _991 + 64]
                mem[mem[64] + 32] = mem[_387 + _391 + _699 + _991 + 64]
                mem[mem[64] + 64 len ceil32(_1844)] = mem[_387 + _391 + _699 + _991 + 96 len ceil32(_1844)]
                if ceil32(_1844) <= _1844:
                    return 32, mem[mem[64] + 32 len ceil32(_1844) + 32]
                mem[mem[64] + _1844 + 64] = 0
                return memory
                  from mem[64]
                   len _1812 + ceil32(_1844) + -mem[64] + 64
            mem[_387 + _391 + _699 + _991 + 96 len s] = call.data[calldata.size len s]
            t = s
            idx = (_1280 % 3) + 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_387 + _391 + _699 + _991 + 64]:
                    revert with 'NH{q', 50
                mem[t + _387 + _391 + _699 + _991 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 32
            _1845 = mem[_387 + _391 + _699 + _991 + 64]
            mem[mem[64] + 32] = mem[_387 + _391 + _699 + _991 + 64]
            mem[mem[64] + 64 len ceil32(_1845)] = mem[_387 + _391 + _699 + _991 + 96 len ceil32(_1845)]
            if ceil32(_1845) > _1845:
                mem[mem[64] + _1845 + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_1845) + 32]
        mem[_387 + _391 + _699 + _991 + 64] = 0
        mem[_387 + _391 + _699 + 32] = _991
        mem[64] = _387 + _391 + _699 + _991 + 64
        _1304 = sha3(mem[_387 + _391 + _699 + 64 len _991])
        if sha3(mem[_387 + _391 + _699 + 64 len _991]) % 3 > -2:
            revert with 'NH{q', 17
        if not (sha3(mem[_387 + _391 + _699 + 64 len _991]) % 3) + 1:
            return '0', 0
        s = 0
        idx = (sha3(mem[_387 + _391 + _699 + 64 len _991]) % 3) + 1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[_387 + _391 + _699 + _991 + 64] = s
        mem[64] = _387 + _391 + _699 + _991 + ceil32(s) + 96
        if not s:
            t = s
            idx = (_1304 % 3) + 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_387 + _391 + _699 + _991 + 64]:
                    revert with 'NH{q', 50
                mem[t + _387 + _391 + _699 + _991 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 32
            _1846 = mem[_387 + _391 + _699 + _991 + 64]
            mem[mem[64] + 32] = mem[_387 + _391 + _699 + _991 + 64]
            mem[mem[64] + 64 len ceil32(_1846)] = mem[_387 + _391 + _699 + _991 + 96 len ceil32(_1846)]
            if ceil32(_1846) > _1846:
                mem[mem[64] + _1846 + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_1846) + 32]
        mem[_387 + _391 + _699 + _991 + 96 len s] = call.data[calldata.size len s]
        t = s
        idx = (_1304 % 3) + 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_387 + _391 + _699 + _991 + 64]:
                revert with 'NH{q', 50
            mem[t + _387 + _391 + _699 + _991 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1815 = mem[64]
        mem[mem[64]] = 32
        _1847 = mem[_387 + _391 + _699 + _991 + 64]
        mem[mem[64] + 32] = mem[_387 + _391 + _699 + _991 + 64]
        mem[mem[64] + 64 len ceil32(_1847)] = mem[_387 + _391 + _699 + _991 + 96 len ceil32(_1847)]
        if ceil32(_1847) <= _1847:
            return 32, mem[mem[64] + 32 len ceil32(_1847) + 32]
        mem[mem[64] + _1847 + 64] = 0
        return memory
          from mem[64]
           len _1815 + ceil32(_1847) + -mem[64] + 64
    mem[_387 + _391 + _699 + 32] = 0
    _959 = mem[64]
    mem[mem[64]] = _387 + _391 + _699 - mem[64]
    mem[64] = _387 + _391 + _699 + 32
    _1003 = mem[_959]
    mem[_387 + _391 + _699 + 64 len ceil32(mem[_959])] = mem[_959 + 32 len ceil32(mem[_959])]
    if ceil32(_1003) <= _1003:
        mem[_387 + _391 + _699 + 32] = _1003
        mem[64] = _387 + _391 + _699 + _1003 + 64
        _1283 = sha3(mem[_387 + _391 + _699 + 64 len _1003])
        if sha3(mem[_387 + _391 + _699 + 64 len _1003]) % 3 > -2:
            revert with 'NH{q', 17
        if not (sha3(mem[_387 + _391 + _699 + 64 len _1003]) % 3) + 1:
            return '0', 0
        s = 0
        idx = (sha3(mem[_387 + _391 + _699 + 64 len _1003]) % 3) + 1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[_387 + _391 + _699 + _1003 + 64] = s
        mem[64] = _387 + _391 + _699 + _1003 + ceil32(s) + 96
        if not s:
            t = s
            idx = (_1283 % 3) + 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_387 + _391 + _699 + _1003 + 64]:
                    revert with 'NH{q', 50
                mem[t + _387 + _391 + _699 + _1003 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1816 = mem[64]
            mem[mem[64]] = 32
            _1848 = mem[_387 + _391 + _699 + _1003 + 64]
            mem[mem[64] + 32] = mem[_387 + _391 + _699 + _1003 + 64]
            mem[mem[64] + 64 len ceil32(_1848)] = mem[_387 + _391 + _699 + _1003 + 96 len ceil32(_1848)]
            if ceil32(_1848) <= _1848:
                return 32, mem[mem[64] + 32 len ceil32(_1848) + 32]
            mem[mem[64] + _1848 + 64] = 0
            return memory
              from mem[64]
               len _1816 + ceil32(_1848) + -mem[64] + 64
        mem[_387 + _391 + _699 + _1003 + 96 len s] = call.data[calldata.size len s]
        t = s
        idx = (_1283 % 3) + 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_387 + _391 + _699 + _1003 + 64]:
                revert with 'NH{q', 50
            mem[t + _387 + _391 + _699 + _1003 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1817 = mem[64]
        mem[mem[64]] = 32
        _1849 = mem[_387 + _391 + _699 + _1003 + 64]
        mem[mem[64] + 32] = mem[_387 + _391 + _699 + _1003 + 64]
        mem[mem[64] + 64 len ceil32(_1849)] = mem[_387 + _391 + _699 + _1003 + 96 len ceil32(_1849)]
        if ceil32(_1849) <= _1849:
            return 32, mem[mem[64] + 32 len ceil32(_1849) + 32]
        mem[mem[64] + _1849 + 64] = 0
        return memory
          from mem[64]
           len _1817 + ceil32(_1849) + -mem[64] + 64
    mem[_387 + _391 + _699 + _1003 + 64] = 0
    mem[_387 + _391 + _699 + 32] = _1003
    mem[64] = _387 + _391 + _699 + _1003 + 64
    _1307 = sha3(mem[_387 + _391 + _699 + 64 len _1003])
    if sha3(mem[_387 + _391 + _699 + 64 len _1003]) % 3 > -2:
        revert with 'NH{q', 17
    if not (sha3(mem[_387 + _391 + _699 + 64 len _1003]) % 3) + 1:
        return '0', 0
    s = 0
    idx = (sha3(mem[_387 + _391 + _699 + 64 len _1003]) % 3) + 1
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[_387 + _391 + _699 + _1003 + 64] = s
    mem[64] = _387 + _391 + _699 + _1003 + ceil32(s) + 96
    if not s:
        t = s
        idx = (_1307 % 3) + 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_387 + _391 + _699 + _1003 + 64]:
                revert with 'NH{q', 50
            mem[t + _387 + _391 + _699 + _1003 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[mem[64]] = 32
        _1850 = mem[_387 + _391 + _699 + _1003 + 64]
        mem[mem[64] + 32] = mem[_387 + _391 + _699 + _1003 + 64]
        mem[mem[64] + 64 len ceil32(_1850)] = mem[_387 + _391 + _699 + _1003 + 96 len ceil32(_1850)]
        if ceil32(_1850) > _1850:
            mem[mem[64] + _1850 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_1850) + 32]
    mem[_387 + _391 + _699 + _1003 + 96 len s] = call.data[calldata.size len s]
    t = s
    idx = (_1307 % 3) + 1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_387 + _391 + _699 + _1003 + 64]:
            revert with 'NH{q', 50
        mem[t + _387 + _391 + _699 + _1003 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[mem[64]] = 32
    _1851 = mem[_387 + _391 + _699 + _1003 + 64]
    mem[mem[64] + 32] = mem[_387 + _391 + _699 + _1003 + 64]
    mem[mem[64] + 64 len ceil32(_1851)] = mem[_387 + _391 + _699 + _1003 + 96 len ceil32(_1851)]
    if ceil32(_1851) > _1851:
        mem[mem[64] + _1851 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_1851) + 32]
}

function getGeneration(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 10
    mem[128] = 'GENERATION'
    if not arg1:
        mem[299] = 'GENERATION', '0', 0
        if sha3(Mask(88, 168, 'GENERATION', '0', 0) >> 168) % 5 > -2:
            revert with 'NH{q', 17
        if not (sha3(Mask(88, 168, 'GENERATION', '0', 0) >> 168) % 5) + 1:
            return '0', 0
        s = 0
        idx = (sha3(Mask(88, 168, 'GENERATION', '0', 0) >> 168) % 5) + 1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[310] = s
        if s:
            mem[342 len s] = call.data[calldata.size len s]
        t = s
        idx = (sha3(mem[299 len 11]) % 5) + 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[310]:
                revert with 'NH{q', 50
            mem[t + 341 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(s) + 342] = 32
        mem[ceil32(s) + 374] = mem[310]
        mem[ceil32(s) + 406 len ceil32(mem[310])] = mem[342 len ceil32(mem[310])]
        if ceil32(mem[310]) > mem[310]:
            mem[ceil32(s) + mem[310] + 406] = 0
        return Array(len=mem[310], data=mem[ceil32(s) + 406 len ceil32(mem[310])])
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
    mem[160] = s
    mem[64] = ceil32(s) + 192
    if not s:
        t = s
        idx = arg1
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
        _386 = mem[64]
        _390 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _684 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(_684) <= _684:
                _948 = mem[64]
                mem[mem[64]] = _386 + _390 + _684 - mem[64]
                mem[64] = _386 + _390 + _684 + 32
                _988 = mem[_948]
                mem[_386 + _390 + _684 + 64 len ceil32(mem[_948])] = mem[_948 + 32 len ceil32(mem[_948])]
                if ceil32(_988) <= _988:
                    mem[_386 + _390 + _684 + 32] = _988
                    mem[64] = _386 + _390 + _684 + _988 + 64
                    _1262 = sha3(mem[_386 + _390 + _684 + 64 len _988])
                    if sha3(mem[_386 + _390 + _684 + 64 len _988]) % 5 > -2:
                        revert with 'NH{q', 17
                    if not (sha3(mem[_386 + _390 + _684 + 64 len _988]) % 5) + 1:
                        return '0', 0
                    s = 0
                    idx = (sha3(mem[_386 + _390 + _684 + 64 len _988]) % 5) + 1
                    while idx:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 'NH{q', 65
                    mem[_386 + _390 + _684 + _988 + 64] = s
                    mem[64] = _386 + _390 + _684 + _988 + ceil32(s) + 96
                    if not s:
                        t = s
                        idx = (_1262 % 5) + 1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[_386 + _390 + _684 + _988 + 64]:
                                revert with 'NH{q', 50
                            mem[t + _386 + _390 + _684 + _988 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[mem[64]] = 32
                        _1820 = mem[_386 + _390 + _684 + _988 + 64]
                        mem[mem[64] + 32] = mem[_386 + _390 + _684 + _988 + 64]
                        mem[mem[64] + 64 len ceil32(_1820)] = mem[_386 + _390 + _684 + _988 + 96 len ceil32(_1820)]
                        if ceil32(_1820) > _1820:
                            mem[mem[64] + _1820 + 64] = 0
                        return 32, mem[mem[64] + 32 len ceil32(_1820) + 32]
                    mem[_386 + _390 + _684 + _988 + 96 len s] = call.data[calldata.size len s]
                    t = s
                    idx = (_1262 % 5) + 1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_386 + _390 + _684 + _988 + 64]:
                            revert with 'NH{q', 50
                        mem[t + _386 + _390 + _684 + _988 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _1789 = mem[64]
                    mem[mem[64]] = 32
                    _1821 = mem[_386 + _390 + _684 + _988 + 64]
                    mem[mem[64] + 32] = mem[_386 + _390 + _684 + _988 + 64]
                    mem[mem[64] + 64 len ceil32(_1821)] = mem[_386 + _390 + _684 + _988 + 96 len ceil32(_1821)]
                    if ceil32(_1821) <= _1821:
                        return 32, mem[mem[64] + 32 len ceil32(_1821) + 32]
                    mem[mem[64] + _1821 + 64] = 0
                    return memory
                      from mem[64]
                       len _1789 + ceil32(_1821) + -mem[64] + 64
                mem[_386 + _390 + _684 + _988 + 64] = 0
                mem[_386 + _390 + _684 + 32] = _988
                mem[64] = _386 + _390 + _684 + _988 + 64
                _1286 = sha3(mem[_386 + _390 + _684 + 64 len _988])
                if sha3(mem[_386 + _390 + _684 + 64 len _988]) % 5 > -2:
                    revert with 'NH{q', 17
                if not (sha3(mem[_386 + _390 + _684 + 64 len _988]) % 5) + 1:
                    return '0', 0
                s = 0
                idx = (sha3(mem[_386 + _390 + _684 + 64 len _988]) % 5) + 1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[_386 + _390 + _684 + _988 + 64] = s
                mem[64] = _386 + _390 + _684 + _988 + ceil32(s) + 96
                if not s:
                    t = s
                    idx = (_1286 % 5) + 1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_386 + _390 + _684 + _988 + 64]:
                            revert with 'NH{q', 50
                        mem[t + _386 + _390 + _684 + _988 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _1790 = mem[64]
                    mem[mem[64]] = 32
                    _1822 = mem[_386 + _390 + _684 + _988 + 64]
                    mem[mem[64] + 32] = mem[_386 + _390 + _684 + _988 + 64]
                    mem[mem[64] + 64 len ceil32(_1822)] = mem[_386 + _390 + _684 + _988 + 96 len ceil32(_1822)]
                    if ceil32(_1822) <= _1822:
                        return 32, mem[mem[64] + 32 len ceil32(_1822) + 32]
                    mem[mem[64] + _1822 + 64] = 0
                    return memory
                      from mem[64]
                       len _1790 + ceil32(_1822) + -mem[64] + 64
                mem[_386 + _390 + _684 + _988 + 96 len s] = call.data[calldata.size len s]
                t = s
                idx = (_1286 % 5) + 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_386 + _390 + _684 + _988 + 64]:
                        revert with 'NH{q', 50
                    mem[t + _386 + _390 + _684 + _988 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1791 = mem[64]
                mem[mem[64]] = 32
                _1823 = mem[_386 + _390 + _684 + _988 + 64]
                mem[mem[64] + 32] = mem[_386 + _390 + _684 + _988 + 64]
                mem[mem[64] + 64 len ceil32(_1823)] = mem[_386 + _390 + _684 + _988 + 96 len ceil32(_1823)]
                if ceil32(_1823) <= _1823:
                    return 32, mem[mem[64] + 32 len ceil32(_1823) + 32]
                mem[mem[64] + _1823 + 64] = 0
                return memory
                  from mem[64]
                   len _1791 + ceil32(_1823) + -mem[64] + 64
            mem[_386 + _390 + _684 + 32] = 0
            _953 = mem[64]
            mem[mem[64]] = _386 + _390 + _684 - mem[64]
            mem[64] = _386 + _390 + _684 + 32
            _1000 = mem[_953]
            mem[_386 + _390 + _684 + 64 len ceil32(mem[_953])] = mem[_953 + 32 len ceil32(mem[_953])]
            if ceil32(_1000) <= _1000:
                mem[_386 + _390 + _684 + 32] = _1000
                mem[64] = _386 + _390 + _684 + _1000 + 64
                _1265 = sha3(mem[_386 + _390 + _684 + 64 len _1000])
                if sha3(mem[_386 + _390 + _684 + 64 len _1000]) % 5 > -2:
                    revert with 'NH{q', 17
                if not (sha3(mem[_386 + _390 + _684 + 64 len _1000]) % 5) + 1:
                    return '0', 0
                s = 0
                idx = (sha3(mem[_386 + _390 + _684 + 64 len _1000]) % 5) + 1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[_386 + _390 + _684 + _1000 + 64] = s
                mem[64] = _386 + _390 + _684 + _1000 + ceil32(s) + 96
                if not s:
                    t = s
                    idx = (_1265 % 5) + 1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_386 + _390 + _684 + _1000 + 64]:
                            revert with 'NH{q', 50
                        mem[t + _386 + _390 + _684 + _1000 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[mem[64]] = 32
                    _1824 = mem[_386 + _390 + _684 + _1000 + 64]
                    mem[mem[64] + 32] = mem[_386 + _390 + _684 + _1000 + 64]
                    mem[mem[64] + 64 len ceil32(_1824)] = mem[_386 + _390 + _684 + _1000 + 96 len ceil32(_1824)]
                    if ceil32(_1824) > _1824:
                        mem[mem[64] + _1824 + 64] = 0
                    return 32, mem[mem[64] + 32 len ceil32(_1824) + 32]
                mem[_386 + _390 + _684 + _1000 + 96 len s] = call.data[calldata.size len s]
                t = s
                idx = (_1265 % 5) + 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_386 + _390 + _684 + _1000 + 64]:
                        revert with 'NH{q', 50
                    mem[t + _386 + _390 + _684 + _1000 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[mem[64]] = 32
                _1825 = mem[_386 + _390 + _684 + _1000 + 64]
                mem[mem[64] + 32] = mem[_386 + _390 + _684 + _1000 + 64]
                mem[mem[64] + 64 len ceil32(_1825)] = mem[_386 + _390 + _684 + _1000 + 96 len ceil32(_1825)]
                if ceil32(_1825) > _1825:
                    mem[mem[64] + _1825 + 64] = 0
                return 32, mem[mem[64] + 32 len ceil32(_1825) + 32]
            mem[_386 + _390 + _684 + _1000 + 64] = 0
            mem[_386 + _390 + _684 + 32] = _1000
            mem[64] = _386 + _390 + _684 + _1000 + 64
            _1289 = sha3(mem[_386 + _390 + _684 + 64 len _1000])
            if sha3(mem[_386 + _390 + _684 + 64 len _1000]) % 5 > -2:
                revert with 'NH{q', 17
            if not (sha3(mem[_386 + _390 + _684 + 64 len _1000]) % 5) + 1:
                return '0', 0
            s = 0
            idx = (sha3(mem[_386 + _390 + _684 + 64 len _1000]) % 5) + 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[_386 + _390 + _684 + _1000 + 64] = s
            mem[64] = _386 + _390 + _684 + _1000 + ceil32(s) + 96
            if not s:
                t = s
                idx = (_1289 % 5) + 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_386 + _390 + _684 + _1000 + 64]:
                        revert with 'NH{q', 50
                    mem[t + _386 + _390 + _684 + _1000 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1794 = mem[64]
                mem[mem[64]] = 32
                _1826 = mem[_386 + _390 + _684 + _1000 + 64]
                mem[mem[64] + 32] = mem[_386 + _390 + _684 + _1000 + 64]
                mem[mem[64] + 64 len ceil32(_1826)] = mem[_386 + _390 + _684 + _1000 + 96 len ceil32(_1826)]
                if ceil32(_1826) <= _1826:
                    return 32, mem[mem[64] + 32 len ceil32(_1826) + 32]
                mem[mem[64] + _1826 + 64] = 0
                return memory
                  from mem[64]
                   len _1794 + ceil32(_1826) + -mem[64] + 64
            mem[_386 + _390 + _684 + _1000 + 96 len s] = call.data[calldata.size len s]
            t = s
            idx = (_1289 % 5) + 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_386 + _390 + _684 + _1000 + 64]:
                    revert with 'NH{q', 50
                mem[t + _386 + _390 + _684 + _1000 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1795 = mem[64]
            mem[mem[64]] = 32
            _1827 = mem[_386 + _390 + _684 + _1000 + 64]
            mem[mem[64] + 32] = mem[_386 + _390 + _684 + _1000 + 64]
            mem[mem[64] + 64 len ceil32(_1827)] = mem[_386 + _390 + _684 + _1000 + 96 len ceil32(_1827)]
            if ceil32(_1827) <= _1827:
                return 32, mem[mem[64] + 32 len ceil32(_1827) + 32]
            mem[mem[64] + _1827 + 64] = 0
            return memory
              from mem[64]
               len _1795 + ceil32(_1827) + -mem[64] + 64
        mem[mem[64] + mem[96] + 32] = 0
        _698 = mem[160]
        mem[_386 + _390 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(_698) <= _698:
            _949 = mem[64]
            mem[mem[64]] = _386 + _390 + _698 - mem[64]
            mem[64] = _386 + _390 + _698 + 32
            _989 = mem[_949]
            mem[_386 + _390 + _698 + 64 len ceil32(mem[_949])] = mem[_949 + 32 len ceil32(mem[_949])]
            if ceil32(_989) <= _989:
                mem[_386 + _390 + _698 + 32] = _989
                mem[64] = _386 + _390 + _698 + _989 + 64
                _1268 = sha3(mem[_386 + _390 + _698 + 64 len _989])
                if sha3(mem[_386 + _390 + _698 + 64 len _989]) % 5 > -2:
                    revert with 'NH{q', 17
                if not (sha3(mem[_386 + _390 + _698 + 64 len _989]) % 5) + 1:
                    return '0', 0
                s = 0
                idx = (sha3(mem[_386 + _390 + _698 + 64 len _989]) % 5) + 1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[_386 + _390 + _698 + _989 + 64] = s
                mem[64] = _386 + _390 + _698 + _989 + ceil32(s) + 96
                if not s:
                    t = s
                    idx = (_1268 % 5) + 1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_386 + _390 + _698 + _989 + 64]:
                            revert with 'NH{q', 50
                        mem[t + _386 + _390 + _698 + _989 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[mem[64]] = 32
                    _1828 = mem[_386 + _390 + _698 + _989 + 64]
                    mem[mem[64] + 32] = mem[_386 + _390 + _698 + _989 + 64]
                    mem[mem[64] + 64 len ceil32(_1828)] = mem[_386 + _390 + _698 + _989 + 96 len ceil32(_1828)]
                    if ceil32(_1828) > _1828:
                        mem[mem[64] + _1828 + 64] = 0
                    return 32, mem[mem[64] + 32 len ceil32(_1828) + 32]
                mem[_386 + _390 + _698 + _989 + 96 len s] = call.data[calldata.size len s]
                t = s
                idx = (_1268 % 5) + 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_386 + _390 + _698 + _989 + 64]:
                        revert with 'NH{q', 50
                    mem[t + _386 + _390 + _698 + _989 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1797 = mem[64]
                mem[mem[64]] = 32
                _1829 = mem[_386 + _390 + _698 + _989 + 64]
                mem[mem[64] + 32] = mem[_386 + _390 + _698 + _989 + 64]
                mem[mem[64] + 64 len ceil32(_1829)] = mem[_386 + _390 + _698 + _989 + 96 len ceil32(_1829)]
                if ceil32(_1829) <= _1829:
                    return 32, mem[mem[64] + 32 len ceil32(_1829) + 32]
                mem[mem[64] + _1829 + 64] = 0
                return memory
                  from mem[64]
                   len _1797 + ceil32(_1829) + -mem[64] + 64
            mem[_386 + _390 + _698 + _989 + 64] = 0
            mem[_386 + _390 + _698 + 32] = _989
            mem[64] = _386 + _390 + _698 + _989 + 64
            _1292 = sha3(mem[_386 + _390 + _698 + 64 len _989])
            if sha3(mem[_386 + _390 + _698 + 64 len _989]) % 5 > -2:
                revert with 'NH{q', 17
            if not (sha3(mem[_386 + _390 + _698 + 64 len _989]) % 5) + 1:
                return '0', 0
            s = 0
            idx = (sha3(mem[_386 + _390 + _698 + 64 len _989]) % 5) + 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[_386 + _390 + _698 + _989 + 64] = s
            mem[64] = _386 + _390 + _698 + _989 + ceil32(s) + 96
            if not s:
                t = s
                idx = (_1292 % 5) + 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_386 + _390 + _698 + _989 + 64]:
                        revert with 'NH{q', 50
                    mem[t + _386 + _390 + _698 + _989 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[mem[64]] = 32
                _1830 = mem[_386 + _390 + _698 + _989 + 64]
                mem[mem[64] + 32] = mem[_386 + _390 + _698 + _989 + 64]
                mem[mem[64] + 64 len ceil32(_1830)] = mem[_386 + _390 + _698 + _989 + 96 len ceil32(_1830)]
                if ceil32(_1830) > _1830:
                    mem[mem[64] + _1830 + 64] = 0
                return 32, mem[mem[64] + 32 len ceil32(_1830) + 32]
            mem[_386 + _390 + _698 + _989 + 96 len s] = call.data[calldata.size len s]
            t = s
            idx = (_1292 % 5) + 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_386 + _390 + _698 + _989 + 64]:
                    revert with 'NH{q', 50
                mem[t + _386 + _390 + _698 + _989 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1799 = mem[64]
            mem[mem[64]] = 32
            _1831 = mem[_386 + _390 + _698 + _989 + 64]
            mem[mem[64] + 32] = mem[_386 + _390 + _698 + _989 + 64]
            mem[mem[64] + 64 len ceil32(_1831)] = mem[_386 + _390 + _698 + _989 + 96 len ceil32(_1831)]
            if ceil32(_1831) <= _1831:
                return 32, mem[mem[64] + 32 len ceil32(_1831) + 32]
            mem[mem[64] + _1831 + 64] = 0
            return memory
              from mem[64]
               len _1799 + ceil32(_1831) + -mem[64] + 64
        mem[_386 + _390 + _698 + 32] = 0
        _955 = mem[64]
        mem[mem[64]] = _386 + _390 + _698 - mem[64]
        mem[64] = _386 + _390 + _698 + 32
        _1001 = mem[_955]
        mem[_386 + _390 + _698 + 64 len ceil32(mem[_955])] = mem[_955 + 32 len ceil32(mem[_955])]
        if ceil32(_1001) <= _1001:
            mem[_386 + _390 + _698 + 32] = _1001
            mem[64] = _386 + _390 + _698 + _1001 + 64
            _1271 = sha3(mem[_386 + _390 + _698 + 64 len _1001])
            if sha3(mem[_386 + _390 + _698 + 64 len _1001]) % 5 > -2:
                revert with 'NH{q', 17
            if not (sha3(mem[_386 + _390 + _698 + 64 len _1001]) % 5) + 1:
                return '0', 0
            s = 0
            idx = (sha3(mem[_386 + _390 + _698 + 64 len _1001]) % 5) + 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[_386 + _390 + _698 + _1001 + 64] = s
            mem[64] = _386 + _390 + _698 + _1001 + ceil32(s) + 96
            if not s:
                t = s
                idx = (_1271 % 5) + 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_386 + _390 + _698 + _1001 + 64]:
                        revert with 'NH{q', 50
                    mem[t + _386 + _390 + _698 + _1001 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[mem[64]] = 32
                _1832 = mem[_386 + _390 + _698 + _1001 + 64]
                mem[mem[64] + 32] = mem[_386 + _390 + _698 + _1001 + 64]
                mem[mem[64] + 64 len ceil32(_1832)] = mem[_386 + _390 + _698 + _1001 + 96 len ceil32(_1832)]
                if ceil32(_1832) > _1832:
                    mem[mem[64] + _1832 + 64] = 0
                return 32, mem[mem[64] + 32 len ceil32(_1832) + 32]
            mem[_386 + _390 + _698 + _1001 + 96 len s] = call.data[calldata.size len s]
            t = s
            idx = (_1271 % 5) + 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_386 + _390 + _698 + _1001 + 64]:
                    revert with 'NH{q', 50
                mem[t + _386 + _390 + _698 + _1001 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 32
            _1833 = mem[_386 + _390 + _698 + _1001 + 64]
            mem[mem[64] + 32] = mem[_386 + _390 + _698 + _1001 + 64]
            mem[mem[64] + 64 len ceil32(_1833)] = mem[_386 + _390 + _698 + _1001 + 96 len ceil32(_1833)]
            if ceil32(_1833) > _1833:
                mem[mem[64] + _1833 + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_1833) + 32]
        mem[_386 + _390 + _698 + _1001 + 64] = 0
        mem[_386 + _390 + _698 + 32] = _1001
        mem[64] = _386 + _390 + _698 + _1001 + 64
        _1295 = sha3(mem[_386 + _390 + _698 + 64 len _1001])
        if sha3(mem[_386 + _390 + _698 + 64 len _1001]) % 5 > -2:
            revert with 'NH{q', 17
        if not (sha3(mem[_386 + _390 + _698 + 64 len _1001]) % 5) + 1:
            return '0', 0
        s = 0
        idx = (sha3(mem[_386 + _390 + _698 + 64 len _1001]) % 5) + 1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[_386 + _390 + _698 + _1001 + 64] = s
        mem[64] = _386 + _390 + _698 + _1001 + ceil32(s) + 96
        if not s:
            t = s
            idx = (_1295 % 5) + 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_386 + _390 + _698 + _1001 + 64]:
                    revert with 'NH{q', 50
                mem[t + _386 + _390 + _698 + _1001 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1802 = mem[64]
            mem[mem[64]] = 32
            _1834 = mem[_386 + _390 + _698 + _1001 + 64]
            mem[mem[64] + 32] = mem[_386 + _390 + _698 + _1001 + 64]
            mem[mem[64] + 64 len ceil32(_1834)] = mem[_386 + _390 + _698 + _1001 + 96 len ceil32(_1834)]
            if ceil32(_1834) <= _1834:
                return 32, mem[mem[64] + 32 len ceil32(_1834) + 32]
            mem[mem[64] + _1834 + 64] = 0
            return memory
              from mem[64]
               len _1802 + ceil32(_1834) + -mem[64] + 64
        mem[_386 + _390 + _698 + _1001 + 96 len s] = call.data[calldata.size len s]
        t = s
        idx = (_1295 % 5) + 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_386 + _390 + _698 + _1001 + 64]:
                revert with 'NH{q', 50
            mem[t + _386 + _390 + _698 + _1001 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1803 = mem[64]
        mem[mem[64]] = 32
        _1835 = mem[_386 + _390 + _698 + _1001 + 64]
        mem[mem[64] + 32] = mem[_386 + _390 + _698 + _1001 + 64]
        mem[mem[64] + 64 len ceil32(_1835)] = mem[_386 + _390 + _698 + _1001 + 96 len ceil32(_1835)]
        if ceil32(_1835) <= _1835:
            return 32, mem[mem[64] + 32 len ceil32(_1835) + 32]
        mem[mem[64] + _1835 + 64] = 0
        return memory
          from mem[64]
           len _1803 + ceil32(_1835) + -mem[64] + 64
    mem[192 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
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
    _387 = mem[64]
    _391 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _685 = mem[160]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(_685) <= _685:
            _950 = mem[64]
            mem[mem[64]] = _387 + _391 + _685 - mem[64]
            mem[64] = _387 + _391 + _685 + 32
            _990 = mem[_950]
            mem[_387 + _391 + _685 + 64 len ceil32(mem[_950])] = mem[_950 + 32 len ceil32(mem[_950])]
            if ceil32(_990) <= _990:
                mem[_387 + _391 + _685 + 32] = _990
                mem[64] = _387 + _391 + _685 + _990 + 64
                _1274 = sha3(mem[_387 + _391 + _685 + 64 len _990])
                if sha3(mem[_387 + _391 + _685 + 64 len _990]) % 5 > -2:
                    revert with 'NH{q', 17
                if not (sha3(mem[_387 + _391 + _685 + 64 len _990]) % 5) + 1:
                    return '0', 0
                s = 0
                idx = (sha3(mem[_387 + _391 + _685 + 64 len _990]) % 5) + 1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[_387 + _391 + _685 + _990 + 64] = s
                mem[64] = _387 + _391 + _685 + _990 + ceil32(s) + 96
                if not s:
                    t = s
                    idx = (_1274 % 5) + 1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_387 + _391 + _685 + _990 + 64]:
                            revert with 'NH{q', 50
                        mem[t + _387 + _391 + _685 + _990 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _1804 = mem[64]
                    mem[mem[64]] = 32
                    _1836 = mem[_387 + _391 + _685 + _990 + 64]
                    mem[mem[64] + 32] = mem[_387 + _391 + _685 + _990 + 64]
                    mem[mem[64] + 64 len ceil32(_1836)] = mem[_387 + _391 + _685 + _990 + 96 len ceil32(_1836)]
                    if ceil32(_1836) <= _1836:
                        return 32, mem[mem[64] + 32 len ceil32(_1836) + 32]
                    mem[mem[64] + _1836 + 64] = 0
                    return memory
                      from mem[64]
                       len _1804 + ceil32(_1836) + -mem[64] + 64
                mem[_387 + _391 + _685 + _990 + 96 len s] = call.data[calldata.size len s]
                t = s
                idx = (_1274 % 5) + 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_387 + _391 + _685 + _990 + 64]:
                        revert with 'NH{q', 50
                    mem[t + _387 + _391 + _685 + _990 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1805 = mem[64]
                mem[mem[64]] = 32
                _1837 = mem[_387 + _391 + _685 + _990 + 64]
                mem[mem[64] + 32] = mem[_387 + _391 + _685 + _990 + 64]
                mem[mem[64] + 64 len ceil32(_1837)] = mem[_387 + _391 + _685 + _990 + 96 len ceil32(_1837)]
                if ceil32(_1837) <= _1837:
                    return 32, mem[mem[64] + 32 len ceil32(_1837) + 32]
                mem[mem[64] + _1837 + 64] = 0
                return memory
                  from mem[64]
                   len _1805 + ceil32(_1837) + -mem[64] + 64
            mem[_387 + _391 + _685 + _990 + 64] = 0
            mem[_387 + _391 + _685 + 32] = _990
            mem[64] = _387 + _391 + _685 + _990 + 64
            _1298 = sha3(mem[_387 + _391 + _685 + 64 len _990])
            if sha3(mem[_387 + _391 + _685 + 64 len _990]) % 5 > -2:
                revert with 'NH{q', 17
            if not (sha3(mem[_387 + _391 + _685 + 64 len _990]) % 5) + 1:
                return '0', 0
            s = 0
            idx = (sha3(mem[_387 + _391 + _685 + 64 len _990]) % 5) + 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[_387 + _391 + _685 + _990 + 64] = s
            mem[64] = _387 + _391 + _685 + _990 + ceil32(s) + 96
            if not s:
                t = s
                idx = (_1298 % 5) + 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_387 + _391 + _685 + _990 + 64]:
                        revert with 'NH{q', 50
                    mem[t + _387 + _391 + _685 + _990 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[mem[64]] = 32
                _1838 = mem[_387 + _391 + _685 + _990 + 64]
                mem[mem[64] + 32] = mem[_387 + _391 + _685 + _990 + 64]
                mem[mem[64] + 64 len ceil32(_1838)] = mem[_387 + _391 + _685 + _990 + 96 len ceil32(_1838)]
                if ceil32(_1838) > _1838:
                    mem[mem[64] + _1838 + 64] = 0
                return 32, mem[mem[64] + 32 len ceil32(_1838) + 32]
            mem[_387 + _391 + _685 + _990 + 96 len s] = call.data[calldata.size len s]
            t = s
            idx = (_1298 % 5) + 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_387 + _391 + _685 + _990 + 64]:
                    revert with 'NH{q', 50
                mem[t + _387 + _391 + _685 + _990 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 32
            _1839 = mem[_387 + _391 + _685 + _990 + 64]
            mem[mem[64] + 32] = mem[_387 + _391 + _685 + _990 + 64]
            mem[mem[64] + 64 len ceil32(_1839)] = mem[_387 + _391 + _685 + _990 + 96 len ceil32(_1839)]
            if ceil32(_1839) > _1839:
                mem[mem[64] + _1839 + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_1839) + 32]
        mem[_387 + _391 + _685 + 32] = 0
        _957 = mem[64]
        mem[mem[64]] = _387 + _391 + _685 - mem[64]
        mem[64] = _387 + _391 + _685 + 32
        _1002 = mem[_957]
        mem[_387 + _391 + _685 + 64 len ceil32(mem[_957])] = mem[_957 + 32 len ceil32(mem[_957])]
        if ceil32(_1002) <= _1002:
            mem[_387 + _391 + _685 + 32] = _1002
            mem[64] = _387 + _391 + _685 + _1002 + 64
            _1277 = sha3(mem[_387 + _391 + _685 + 64 len _1002])
            if sha3(mem[_387 + _391 + _685 + 64 len _1002]) % 5 > -2:
                revert with 'NH{q', 17
            if not (sha3(mem[_387 + _391 + _685 + 64 len _1002]) % 5) + 1:
                return '0', 0
            s = 0
            idx = (sha3(mem[_387 + _391 + _685 + 64 len _1002]) % 5) + 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[_387 + _391 + _685 + _1002 + 64] = s
            mem[64] = _387 + _391 + _685 + _1002 + ceil32(s) + 96
            if not s:
                t = s
                idx = (_1277 % 5) + 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_387 + _391 + _685 + _1002 + 64]:
                        revert with 'NH{q', 50
                    mem[t + _387 + _391 + _685 + _1002 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1808 = mem[64]
                mem[mem[64]] = 32
                _1840 = mem[_387 + _391 + _685 + _1002 + 64]
                mem[mem[64] + 32] = mem[_387 + _391 + _685 + _1002 + 64]
                mem[mem[64] + 64 len ceil32(_1840)] = mem[_387 + _391 + _685 + _1002 + 96 len ceil32(_1840)]
                if ceil32(_1840) <= _1840:
                    return 32, mem[mem[64] + 32 len ceil32(_1840) + 32]
                mem[mem[64] + _1840 + 64] = 0
                return memory
                  from mem[64]
                   len _1808 + ceil32(_1840) + -mem[64] + 64
            mem[_387 + _391 + _685 + _1002 + 96 len s] = call.data[calldata.size len s]
            t = s
            idx = (_1277 % 5) + 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_387 + _391 + _685 + _1002 + 64]:
                    revert with 'NH{q', 50
                mem[t + _387 + _391 + _685 + _1002 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 32
            _1841 = mem[_387 + _391 + _685 + _1002 + 64]
            mem[mem[64] + 32] = mem[_387 + _391 + _685 + _1002 + 64]
            mem[mem[64] + 64 len ceil32(_1841)] = mem[_387 + _391 + _685 + _1002 + 96 len ceil32(_1841)]
            if ceil32(_1841) > _1841:
                mem[mem[64] + _1841 + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_1841) + 32]
        mem[_387 + _391 + _685 + _1002 + 64] = 0
        mem[_387 + _391 + _685 + 32] = _1002
        mem[64] = _387 + _391 + _685 + _1002 + 64
        _1301 = sha3(mem[_387 + _391 + _685 + 64 len _1002])
        if sha3(mem[_387 + _391 + _685 + 64 len _1002]) % 5 > -2:
            revert with 'NH{q', 17
        if not (sha3(mem[_387 + _391 + _685 + 64 len _1002]) % 5) + 1:
            return '0', 0
        s = 0
        idx = (sha3(mem[_387 + _391 + _685 + 64 len _1002]) % 5) + 1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[_387 + _391 + _685 + _1002 + 64] = s
        mem[64] = _387 + _391 + _685 + _1002 + ceil32(s) + 96
        if not s:
            t = s
            idx = (_1301 % 5) + 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_387 + _391 + _685 + _1002 + 64]:
                    revert with 'NH{q', 50
                mem[t + _387 + _391 + _685 + _1002 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 32
            _1842 = mem[_387 + _391 + _685 + _1002 + 64]
            mem[mem[64] + 32] = mem[_387 + _391 + _685 + _1002 + 64]
            mem[mem[64] + 64 len ceil32(_1842)] = mem[_387 + _391 + _685 + _1002 + 96 len ceil32(_1842)]
            if ceil32(_1842) > _1842:
                mem[mem[64] + _1842 + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_1842) + 32]
        mem[_387 + _391 + _685 + _1002 + 96 len s] = call.data[calldata.size len s]
        t = s
        idx = (_1301 % 5) + 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_387 + _391 + _685 + _1002 + 64]:
                revert with 'NH{q', 50
            mem[t + _387 + _391 + _685 + _1002 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1811 = mem[64]
        mem[mem[64]] = 32
        _1843 = mem[_387 + _391 + _685 + _1002 + 64]
        mem[mem[64] + 32] = mem[_387 + _391 + _685 + _1002 + 64]
        mem[mem[64] + 64 len ceil32(_1843)] = mem[_387 + _391 + _685 + _1002 + 96 len ceil32(_1843)]
        if ceil32(_1843) <= _1843:
            return 32, mem[mem[64] + 32 len ceil32(_1843) + 32]
        mem[mem[64] + _1843 + 64] = 0
        return memory
          from mem[64]
           len _1811 + ceil32(_1843) + -mem[64] + 64
    mem[mem[64] + mem[96] + 32] = 0
    _699 = mem[160]
    mem[_387 + _391 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
    if ceil32(_699) <= _699:
        _951 = mem[64]
        mem[mem[64]] = _387 + _391 + _699 - mem[64]
        mem[64] = _387 + _391 + _699 + 32
        _991 = mem[_951]
        mem[_387 + _391 + _699 + 64 len ceil32(mem[_951])] = mem[_951 + 32 len ceil32(mem[_951])]
        if ceil32(_991) <= _991:
            mem[_387 + _391 + _699 + 32] = _991
            mem[64] = _387 + _391 + _699 + _991 + 64
            _1280 = sha3(mem[_387 + _391 + _699 + 64 len _991])
            if sha3(mem[_387 + _391 + _699 + 64 len _991]) % 5 > -2:
                revert with 'NH{q', 17
            if not (sha3(mem[_387 + _391 + _699 + 64 len _991]) % 5) + 1:
                return '0', 0
            s = 0
            idx = (sha3(mem[_387 + _391 + _699 + 64 len _991]) % 5) + 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[_387 + _391 + _699 + _991 + 64] = s
            mem[64] = _387 + _391 + _699 + _991 + ceil32(s) + 96
            if not s:
                t = s
                idx = (_1280 % 5) + 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_387 + _391 + _699 + _991 + 64]:
                        revert with 'NH{q', 50
                    mem[t + _387 + _391 + _699 + _991 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1812 = mem[64]
                mem[mem[64]] = 32
                _1844 = mem[_387 + _391 + _699 + _991 + 64]
                mem[mem[64] + 32] = mem[_387 + _391 + _699 + _991 + 64]
                mem[mem[64] + 64 len ceil32(_1844)] = mem[_387 + _391 + _699 + _991 + 96 len ceil32(_1844)]
                if ceil32(_1844) <= _1844:
                    return 32, mem[mem[64] + 32 len ceil32(_1844) + 32]
                mem[mem[64] + _1844 + 64] = 0
                return memory
                  from mem[64]
                   len _1812 + ceil32(_1844) + -mem[64] + 64
            mem[_387 + _391 + _699 + _991 + 96 len s] = call.data[calldata.size len s]
            t = s
            idx = (_1280 % 5) + 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_387 + _391 + _699 + _991 + 64]:
                    revert with 'NH{q', 50
                mem[t + _387 + _391 + _699 + _991 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 32
            _1845 = mem[_387 + _391 + _699 + _991 + 64]
            mem[mem[64] + 32] = mem[_387 + _391 + _699 + _991 + 64]
            mem[mem[64] + 64 len ceil32(_1845)] = mem[_387 + _391 + _699 + _991 + 96 len ceil32(_1845)]
            if ceil32(_1845) > _1845:
                mem[mem[64] + _1845 + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_1845) + 32]
        mem[_387 + _391 + _699 + _991 + 64] = 0
        mem[_387 + _391 + _699 + 32] = _991
        mem[64] = _387 + _391 + _699 + _991 + 64
        _1304 = sha3(mem[_387 + _391 + _699 + 64 len _991])
        if sha3(mem[_387 + _391 + _699 + 64 len _991]) % 5 > -2:
            revert with 'NH{q', 17
        if not (sha3(mem[_387 + _391 + _699 + 64 len _991]) % 5) + 1:
            return '0', 0
        s = 0
        idx = (sha3(mem[_387 + _391 + _699 + 64 len _991]) % 5) + 1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[_387 + _391 + _699 + _991 + 64] = s
        mem[64] = _387 + _391 + _699 + _991 + ceil32(s) + 96
        if not s:
            t = s
            idx = (_1304 % 5) + 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_387 + _391 + _699 + _991 + 64]:
                    revert with 'NH{q', 50
                mem[t + _387 + _391 + _699 + _991 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 32
            _1846 = mem[_387 + _391 + _699 + _991 + 64]
            mem[mem[64] + 32] = mem[_387 + _391 + _699 + _991 + 64]
            mem[mem[64] + 64 len ceil32(_1846)] = mem[_387 + _391 + _699 + _991 + 96 len ceil32(_1846)]
            if ceil32(_1846) > _1846:
                mem[mem[64] + _1846 + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_1846) + 32]
        mem[_387 + _391 + _699 + _991 + 96 len s] = call.data[calldata.size len s]
        t = s
        idx = (_1304 % 5) + 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_387 + _391 + _699 + _991 + 64]:
                revert with 'NH{q', 50
            mem[t + _387 + _391 + _699 + _991 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1815 = mem[64]
        mem[mem[64]] = 32
        _1847 = mem[_387 + _391 + _699 + _991 + 64]
        mem[mem[64] + 32] = mem[_387 + _391 + _699 + _991 + 64]
        mem[mem[64] + 64 len ceil32(_1847)] = mem[_387 + _391 + _699 + _991 + 96 len ceil32(_1847)]
        if ceil32(_1847) <= _1847:
            return 32, mem[mem[64] + 32 len ceil32(_1847) + 32]
        mem[mem[64] + _1847 + 64] = 0
        return memory
          from mem[64]
           len _1815 + ceil32(_1847) + -mem[64] + 64
    mem[_387 + _391 + _699 + 32] = 0
    _959 = mem[64]
    mem[mem[64]] = _387 + _391 + _699 - mem[64]
    mem[64] = _387 + _391 + _699 + 32
    _1003 = mem[_959]
    mem[_387 + _391 + _699 + 64 len ceil32(mem[_959])] = mem[_959 + 32 len ceil32(mem[_959])]
    if ceil32(_1003) <= _1003:
        mem[_387 + _391 + _699 + 32] = _1003
        mem[64] = _387 + _391 + _699 + _1003 + 64
        _1283 = sha3(mem[_387 + _391 + _699 + 64 len _1003])
        if sha3(mem[_387 + _391 + _699 + 64 len _1003]) % 5 > -2:
            revert with 'NH{q', 17
        if not (sha3(mem[_387 + _391 + _699 + 64 len _1003]) % 5) + 1:
            return '0', 0
        s = 0
        idx = (sha3(mem[_387 + _391 + _699 + 64 len _1003]) % 5) + 1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[_387 + _391 + _699 + _1003 + 64] = s
        mem[64] = _387 + _391 + _699 + _1003 + ceil32(s) + 96
        if not s:
            t = s
            idx = (_1283 % 5) + 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_387 + _391 + _699 + _1003 + 64]:
                    revert with 'NH{q', 50
                mem[t + _387 + _391 + _699 + _1003 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1816 = mem[64]
            mem[mem[64]] = 32
            _1848 = mem[_387 + _391 + _699 + _1003 + 64]
            mem[mem[64] + 32] = mem[_387 + _391 + _699 + _1003 + 64]
            mem[mem[64] + 64 len ceil32(_1848)] = mem[_387 + _391 + _699 + _1003 + 96 len ceil32(_1848)]
            if ceil32(_1848) <= _1848:
                return 32, mem[mem[64] + 32 len ceil32(_1848) + 32]
            mem[mem[64] + _1848 + 64] = 0
            return memory
              from mem[64]
               len _1816 + ceil32(_1848) + -mem[64] + 64
        mem[_387 + _391 + _699 + _1003 + 96 len s] = call.data[calldata.size len s]
        t = s
        idx = (_1283 % 5) + 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_387 + _391 + _699 + _1003 + 64]:
                revert with 'NH{q', 50
            mem[t + _387 + _391 + _699 + _1003 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1817 = mem[64]
        mem[mem[64]] = 32
        _1849 = mem[_387 + _391 + _699 + _1003 + 64]
        mem[mem[64] + 32] = mem[_387 + _391 + _699 + _1003 + 64]
        mem[mem[64] + 64 len ceil32(_1849)] = mem[_387 + _391 + _699 + _1003 + 96 len ceil32(_1849)]
        if ceil32(_1849) <= _1849:
            return 32, mem[mem[64] + 32 len ceil32(_1849) + 32]
        mem[mem[64] + _1849 + 64] = 0
        return memory
          from mem[64]
           len _1817 + ceil32(_1849) + -mem[64] + 64
    mem[_387 + _391 + _699 + _1003 + 64] = 0
    mem[_387 + _391 + _699 + 32] = _1003
    mem[64] = _387 + _391 + _699 + _1003 + 64
    _1307 = sha3(mem[_387 + _391 + _699 + 64 len _1003])
    if sha3(mem[_387 + _391 + _699 + 64 len _1003]) % 5 > -2:
        revert with 'NH{q', 17
    if not (sha3(mem[_387 + _391 + _699 + 64 len _1003]) % 5) + 1:
        return '0', 0
    s = 0
    idx = (sha3(mem[_387 + _391 + _699 + 64 len _1003]) % 5) + 1
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[_387 + _391 + _699 + _1003 + 64] = s
    mem[64] = _387 + _391 + _699 + _1003 + ceil32(s) + 96
    if not s:
        t = s
        idx = (_1307 % 5) + 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_387 + _391 + _699 + _1003 + 64]:
                revert with 'NH{q', 50
            mem[t + _387 + _391 + _699 + _1003 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[mem[64]] = 32
        _1850 = mem[_387 + _391 + _699 + _1003 + 64]
        mem[mem[64] + 32] = mem[_387 + _391 + _699 + _1003 + 64]
        mem[mem[64] + 64 len ceil32(_1850)] = mem[_387 + _391 + _699 + _1003 + 96 len ceil32(_1850)]
        if ceil32(_1850) > _1850:
            mem[mem[64] + _1850 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_1850) + 32]
    mem[_387 + _391 + _699 + _1003 + 96 len s] = call.data[calldata.size len s]
    t = s
    idx = (_1307 % 5) + 1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_387 + _391 + _699 + _1003 + 64]:
            revert with 'NH{q', 50
        mem[t + _387 + _391 + _699 + _1003 + 95 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[mem[64]] = 32
    _1851 = mem[_387 + _391 + _699 + _1003 + 64]
    mem[mem[64] + 32] = mem[_387 + _391 + _699 + _1003 + 64]
    mem[mem[64] + 64 len ceil32(_1851)] = mem[_387 + _391 + _699 + _1003 + 96 len ceil32(_1851)]
    if ceil32(_1851) > _1851:
        mem[mem[64] + _1851 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_1851) + 32]
}



}
