contract main {




// =====================  Runtime code  =====================


#
#  - getShip(uint256 arg1)
#  - tokenURI(uint256 arg1)
#  - sub_cf24b2f0(?)
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
array of struct stor20;
array of struct stor21;

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
        if stor14 > -9601:
            revert with 'NH{q', 17
        _95 = mem[64]
        mem[64] = mem[64] + 32
        mem[_95] = 0
        if not owner:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor14 + 9600]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor14 + 9600] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor14 + 9600
        if owner:
            tokenOfOwnerByIndex[stor11][stor3[stor11]] = stor14 + 9600
            stor7[stor14 + 9600] = balanceOf[stor11]
            if balanceOf[stor11] > -2:
                revert with 'NH{q', 17
            balanceOf[stor11]++
            mem[0] = stor14 + 9600
            mem[32] = 2
            ownerOf[stor14 + 9600] = owner
            emit Transfer(0, owner, stor14 + 9600);
            if ext_code.size(owner) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor14 + 9600
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
                    args msg.sender, 0, stor14 + 9600, 128, 0
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
            if stor9[stor14 + 9600] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[stor14 + 9600]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor14 + 9600]
            stor9[stor14 + 9600] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[stor11] > -2:
                revert with 'NH{q', 17
            balanceOf[stor11]++
            mem[0] = stor14 + 9600
            mem[32] = 2
            ownerOf[stor14 + 9600] = owner
            emit Transfer(0, owner, stor14 + 9600);
            if ext_code.size(owner) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor14 + 9600
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
                    args msg.sender, 0, stor14 + 9600, 128, 0
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
    if stor13 + arg1 >= 9601:
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

function sub_48858a8b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 7
    mem[128] = 'PLUNDER'
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

function getPet(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 3
    mem[128] = 'PET'
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

function sub_627a04a5(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 11
    mem[128] = 'DESTINATION'
    mem[64] = (32 * stor21.length) + 192
    mem[160] = stor21.length
    s = 192
    idx = 0
    while idx < stor21.length:
        mem[0] = 21
        if stor21[idx].field_0:
            if stor21[idx].field_0 == stor21[idx].field_1 < 32:
                revert with 'NH{q', 34
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(stor21[idx].field_1) + 32
            mem[_124] = stor21[idx].field_1
            if stor21[idx].field_0:
                if stor21[idx].field_0 == stor21[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor21[idx].field_1:
                    if 31 >= stor21[idx].field_1:
                        mem[_124 + 32] = 256 * stor21[idx].field_8
                    else:
                        mem[0] = sha3(21) + idx
                        mem[_124 + 32] = stor21[idx].field_0
                        t = _124 + 32
                        u = sha3(mem[0])
                        while _124 + stor21[idx].field_1 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if stor21[idx].field_0 == stor21[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor21[idx].field_1:
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor21[idx].field_1:
                mem[_124 + 32] = 256 * stor21[idx].field_8
                mem[s] = _124
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(21) + idx
            mem[_124 + 32] = stor21[idx].field_0
            t = _124 + 32
            u = sha3(mem[0])
            while _124 + stor21[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _124
            t = t + 32
            u = u + 1
            continue 
        if stor21[idx].field_0 == stor21[idx].field_1 < 32:
            revert with 'NH{q', 34
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(stor21[idx].field_1) + 32
        mem[_126] = stor21[idx].field_1
        if stor21[idx].field_0:
            if stor21[idx].field_0 == stor21[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor21[idx].field_1:
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor21[idx].field_1:
                mem[_126 + 32] = 256 * stor21[idx].field_8
                mem[s] = _126
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(21) + idx
            mem[_126 + 32] = stor21[idx].field_0
            t = _126 + 32
            u = sha3(mem[0])
            while _126 + stor21[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _126
            t = t + 32
            u = u + 1
            continue 
        if stor21[idx].field_0 == stor21[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor21[idx].field_1:
            if 31 >= stor21[idx].field_1:
                mem[_126 + 32] = 256 * stor21[idx].field_8
            else:
                mem[0] = sha3(21) + idx
                mem[_126 + 32] = stor21[idx].field_0
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + stor21[idx].field_1 > t:
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

function getWeapon(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 6
    mem[128] = 'WEAPON'
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

function getName(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 4
    mem[128] = 'NAME'
    mem[64] = (32 * stor15.length) + 192
    mem[160] = stor15.length
    s = 192
    idx = 0
    while idx < stor15.length:
        mem[0] = 15
        if stor15[idx].field_0:
            if stor15[idx].field_0 == stor15[idx].field_1 < 32:
                revert with 'NH{q', 34
            _365 = mem[64]
            mem[64] = mem[64] + ceil32(stor15[idx].field_1) + 32
            mem[_365] = stor15[idx].field_1
            if stor15[idx].field_0:
                if stor15[idx].field_0 == stor15[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor15[idx].field_1:
                    if 31 >= stor15[idx].field_1:
                        mem[_365 + 32] = 256 * stor15[idx].field_8
                    else:
                        mem[0] = sha3(15) + idx
                        mem[_365 + 32] = stor15[idx].field_0
                        t = _365 + 32
                        u = sha3(mem[0])
                        while _365 + stor15[idx].field_1 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _365
                s = s + 32
                idx = idx + 1
                continue 
            if stor15[idx].field_0 == stor15[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor15[idx].field_1:
                mem[s] = _365
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor15[idx].field_1:
                mem[_365 + 32] = 256 * stor15[idx].field_8
                mem[s] = _365
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(15) + idx
            mem[_365 + 32] = stor15[idx].field_0
            t = _365 + 32
            u = sha3(mem[0])
            while _365 + stor15[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _365
            t = t + 32
            u = u + 1
            continue 
        if stor15[idx].field_0 == stor15[idx].field_1 < 32:
            revert with 'NH{q', 34
        _367 = mem[64]
        mem[64] = mem[64] + ceil32(stor15[idx].field_1) + 32
        mem[_367] = stor15[idx].field_1
        if stor15[idx].field_0:
            if stor15[idx].field_0 == stor15[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor15[idx].field_1:
                mem[s] = _367
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor15[idx].field_1:
                mem[_367 + 32] = 256 * stor15[idx].field_8
                mem[s] = _367
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(15) + idx
            mem[_367 + 32] = stor15[idx].field_0
            t = _367 + 32
            u = sha3(mem[0])
            while _367 + stor15[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _367
            t = t + 32
            u = u + 1
            continue 
        if stor15[idx].field_0 == stor15[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor15[idx].field_1:
            if 31 >= stor15[idx].field_1:
                mem[_367 + 32] = 256 * stor15[idx].field_8
            else:
                mem[0] = sha3(15) + idx
                mem[_367 + 32] = stor15[idx].field_0
                t = _367 + 32
                u = sha3(mem[0])
                while _367 + stor15[idx].field_1 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _367
        s = s + 32
        idx = idx + 1
        continue 
    _362 = mem[64]
    mem[64] = mem[64] + (32 * stor16.length) + 32
    mem[_362] = stor16.length
    s = _362 + 32
    idx = 0
    while idx < stor16.length:
        mem[0] = 16
        if stor16[idx].field_0:
            if stor16[idx].field_0 == stor16[idx].field_1 < 32:
                revert with 'NH{q', 34
            _723 = mem[64]
            mem[64] = mem[64] + ceil32(stor16[idx].field_1) + 32
            mem[_723] = stor16[idx].field_1
            if stor16[idx].field_0:
                if stor16[idx].field_0 == stor16[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor16[idx].field_1:
                    if 31 >= stor16[idx].field_1:
                        mem[_723 + 32] = 256 * stor16[idx].field_8
                    else:
                        mem[0] = sha3(16) + idx
                        mem[_723 + 32] = stor16[idx].field_0
                        t = _723 + 32
                        u = sha3(mem[0])
                        while _723 + stor16[idx].field_1 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _723
                s = s + 32
                idx = idx + 1
                continue 
            if stor16[idx].field_0 == stor16[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor16[idx].field_1:
                mem[s] = _723
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor16[idx].field_1:
                mem[_723 + 32] = 256 * stor16[idx].field_8
                mem[s] = _723
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(16) + idx
            mem[_723 + 32] = stor16[idx].field_0
            t = _723 + 32
            u = sha3(mem[0])
            while _723 + stor16[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _723
            t = t + 32
            u = u + 1
            continue 
        if stor16[idx].field_0 == stor16[idx].field_1 < 32:
            revert with 'NH{q', 34
        _725 = mem[64]
        mem[64] = mem[64] + ceil32(stor16[idx].field_1) + 32
        mem[_725] = stor16[idx].field_1
        if stor16[idx].field_0:
            if stor16[idx].field_0 == stor16[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor16[idx].field_1:
                mem[s] = _725
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor16[idx].field_1:
                mem[_725 + 32] = 256 * stor16[idx].field_8
                mem[s] = _725
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(16) + idx
            mem[_725 + 32] = stor16[idx].field_0
            t = _725 + 32
            u = sha3(mem[0])
            while _725 + stor16[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _725
            t = t + 32
            u = u + 1
            continue 
        if stor16[idx].field_0 == stor16[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor16[idx].field_1:
            if 31 >= stor16[idx].field_1:
                mem[_725 + 32] = 256 * stor16[idx].field_8
            else:
                mem[0] = sha3(16) + idx
                mem[_725 + 32] = stor16[idx].field_0
                t = _725 + 32
                u = sha3(mem[0])
                while _725 + stor16[idx].field_1 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _725
        s = s + 32
        idx = idx + 1
        continue 
    if not arg1:
        _722 = mem[64]
        mem[64] = mem[64] + 64
        mem[_722] = 1
        mem[_722 + 32] = '0'
        _724 = mem[64]
        _726 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            mem[mem[64] + mem[96] + 32] = '0'
            mem[_724 + _726 + 33] = 0
            _2111 = mem[64]
            mem[mem[64]] = _724 + _726 + -mem[64] + 1
            mem[64] = _724 + _726 + 33
            _2118 = mem[_2111]
            mem[_724 + _726 + 65 len ceil32(mem[_2111])] = mem[_2111 + 32 len ceil32(mem[_2111])]
            if ceil32(_2118) > _2118:
                mem[_724 + _726 + _2118 + 65] = 0
                mem[_724 + _726 + 33] = _2118
                mem[64] = _724 + _726 + _2118 + 65
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_724 + _726 + 65 len _2118]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _3192 = mem[(32 * sha3(mem[_724 + _726 + 65 len _2118]) % mem[160]) + 192]
                if not mem[_362]:
                    revert with 'NH{q', 18
                if sha3(mem[_724 + _726 + 65 len _2118]) % mem[_362] >= mem[_362]:
                    revert with 'NH{q', 50
                _3253 = mem[mem[(32 * sha3(mem[_724 + _726 + 65 len _2118]) % mem[_362]) + _362 + 32]]
                mem[_724 + _726 + _2118 + 97 len ceil32(mem[mem[(32 * sha3(mem[_724 + _726 + 65 len _2118]) % mem[_362]) + _362 + 32]])] = mem[mem[(32 * sha3(mem[_724 + _726 + 65 len _2118]) % mem[_362]) + _362 + 32] + 32 len ceil32(mem[mem[(32 * sha3(mem[_724 + _726 + 65 len _2118]) % mem[_362]) + _362 + 32]])]
                mem[_724 + _726 + _2118 + _3253 + 97] = ' '
                return ''
            mem[_724 + _726 + 33] = _2118
            mem[64] = _724 + _726 + _2118 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_724 + _726 + 65 len _2118]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _3181 = mem[(32 * sha3(mem[_724 + _726 + 65 len _2118]) % mem[160]) + 192]
            if not mem[_362]:
                revert with 'NH{q', 18
            if sha3(mem[_724 + _726 + 65 len _2118]) % mem[_362] >= mem[_362]:
                revert with 'NH{q', 50
            _3247 = mem[mem[(32 * sha3(mem[_724 + _726 + 65 len _2118]) % mem[_362]) + _362 + 32]]
            mem[_724 + _726 + _2118 + 97 len ceil32(mem[mem[(32 * sha3(mem[_724 + _726 + 65 len _2118]) % mem[_362]) + _362 + 32]])] = mem[mem[(32 * sha3(mem[_724 + _726 + 65 len _2118]) % mem[_362]) + _362 + 32] + 32 len ceil32(mem[mem[(32 * sha3(mem[_724 + _726 + 65 len _2118]) % mem[_362]) + _362 + 32]])]
            mem[_724 + _726 + _2118 + _3247 + 97] = ' '
            if ceil32(_3247) <= _3247:
                _4172 = mem[_3181]
                mem[_724 + _726 + _2118 + _3247 + 98 len ceil32(mem[_3181])] = mem[_3181 + 32 len ceil32(mem[_3181])]
                mem[64] = _724 + _726 + _2118 + _3247 + _4172 + 98
                mem[_724 + _726 + _2118 + _3247 + _4172 + 98] = 32
                mem[_724 + _726 + _2118 + _3247 + _4172 + 130] = mem[_724 + _726 + _2118 + 65]
                mem[_724 + _726 + _2118 + _3247 + _4172 + 162 len ceil32(mem[_724 + _726 + _2118 + 65])] = mem[_724 + _726 + _2118 + 97 len ceil32(mem[_724 + _726 + _2118 + 65])]
                if ceil32(mem[_724 + _726 + _2118 + 65]) > mem[_724 + _726 + _2118 + 65]:
                    mem[_724 + _726 + _2118 + _3247 + _4172 + mem[_724 + _726 + _2118 + 65] + 162] = 0
                return Array(len=mem[_724 + _726 + _2118 + 65], data=mem[_724 + _726 + _2118 + _3247 + _4172 + 162 len ceil32(mem[_724 + _726 + _2118 + 65])]), 
            _4180 = mem[_3181]
            mem[_724 + _726 + _2118 + _3247 + 98 len ceil32(mem[_3181])] = mem[_3181 + 32 len ceil32(mem[_3181])]
            mem[64] = _724 + _726 + _2118 + _3247 + _4180 + 98
            mem[_724 + _726 + _2118 + _3247 + _4180 + 98] = 32
            mem[_724 + _726 + _2118 + _3247 + _4180 + 130] = mem[_724 + _726 + _2118 + 65]
            mem[_724 + _726 + _2118 + _3247 + _4180 + 162 len ceil32(mem[_724 + _726 + _2118 + 65])] = mem[_724 + _726 + _2118 + 97 len ceil32(mem[_724 + _726 + _2118 + 65])]
            if ceil32(mem[_724 + _726 + _2118 + 65]) > mem[_724 + _726 + _2118 + 65]:
                mem[_724 + _726 + _2118 + _3247 + _4180 + mem[_724 + _726 + _2118 + 65] + 162] = 0
            return Array(len=mem[_724 + _726 + _2118 + 65], data=mem[_724 + _726 + _2118 + _3247 + _4180 + 162 len ceil32(mem[_724 + _726 + _2118 + 65])]), 
        mem[mem[64] + mem[96] + 32] = 0
        mem[_724 + _726 + 32] = '0'
        mem[_724 + _726 + 33] = 0
        _2113 = mem[64]
        mem[mem[64]] = _724 + _726 + -mem[64] + 1
        mem[64] = _724 + _726 + 33
        _2119 = mem[_2113]
        mem[_724 + _726 + 65 len ceil32(mem[_2113])] = mem[_2113 + 32 len ceil32(mem[_2113])]
        if ceil32(_2119) > _2119:
            mem[_724 + _726 + _2119 + 65] = 0
            mem[_724 + _726 + 33] = _2119
            mem[64] = _724 + _726 + _2119 + 65
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_724 + _726 + 65 len _2119]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _3196 = mem[(32 * sha3(mem[_724 + _726 + 65 len _2119]) % mem[160]) + 192]
            if not mem[_362]:
                revert with 'NH{q', 18
            if sha3(mem[_724 + _726 + 65 len _2119]) % mem[_362] >= mem[_362]:
                revert with 'NH{q', 50
            _3255 = mem[mem[(32 * sha3(mem[_724 + _726 + 65 len _2119]) % mem[_362]) + _362 + 32]]
            mem[_724 + _726 + _2119 + 97 len ceil32(mem[mem[(32 * sha3(mem[_724 + _726 + 65 len _2119]) % mem[_362]) + _362 + 32]])] = mem[mem[(32 * sha3(mem[_724 + _726 + 65 len _2119]) % mem[_362]) + _362 + 32] + 32 len ceil32(mem[mem[(32 * sha3(mem[_724 + _726 + 65 len _2119]) % mem[_362]) + _362 + 32]])]
            mem[_724 + _726 + _2119 + _3255 + 97] = ' '
            return ''
        mem[_724 + _726 + 33] = _2119
        mem[64] = _724 + _726 + _2119 + 65
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_724 + _726 + 65 len _2119]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _3187 = mem[(32 * sha3(mem[_724 + _726 + 65 len _2119]) % mem[160]) + 192]
        if not mem[_362]:
            revert with 'NH{q', 18
        if sha3(mem[_724 + _726 + 65 len _2119]) % mem[_362] >= mem[_362]:
            revert with 'NH{q', 50
        _3249 = mem[mem[(32 * sha3(mem[_724 + _726 + 65 len _2119]) % mem[_362]) + _362 + 32]]
        mem[_724 + _726 + _2119 + 97 len ceil32(mem[mem[(32 * sha3(mem[_724 + _726 + 65 len _2119]) % mem[_362]) + _362 + 32]])] = mem[mem[(32 * sha3(mem[_724 + _726 + 65 len _2119]) % mem[_362]) + _362 + 32] + 32 len ceil32(mem[mem[(32 * sha3(mem[_724 + _726 + 65 len _2119]) % mem[_362]) + _362 + 32]])]
        mem[_724 + _726 + _2119 + _3249 + 97] = ' '
        if ceil32(_3249) <= _3249:
            _4176 = mem[_3187]
            mem[_724 + _726 + _2119 + _3249 + 98 len ceil32(mem[_3187])] = mem[_3187 + 32 len ceil32(mem[_3187])]
            mem[64] = _724 + _726 + _2119 + _3249 + _4176 + 98
            mem[_724 + _726 + _2119 + _3249 + _4176 + 98] = 32
            mem[_724 + _726 + _2119 + _3249 + _4176 + 130] = mem[_724 + _726 + _2119 + 65]
            mem[_724 + _726 + _2119 + _3249 + _4176 + 162 len ceil32(mem[_724 + _726 + _2119 + 65])] = mem[_724 + _726 + _2119 + 97 len ceil32(mem[_724 + _726 + _2119 + 65])]
            if ceil32(mem[_724 + _726 + _2119 + 65]) > mem[_724 + _726 + _2119 + 65]:
                mem[_724 + _726 + _2119 + _3249 + _4176 + mem[_724 + _726 + _2119 + 65] + 162] = 0
            return Array(len=mem[_724 + _726 + _2119 + 65], data=mem[_724 + _726 + _2119 + _3249 + _4176 + 162 len ceil32(mem[_724 + _726 + _2119 + 65])]), 
        _4184 = mem[_3187]
        mem[_724 + _726 + _2119 + _3249 + 98 len ceil32(mem[_3187])] = mem[_3187 + 32 len ceil32(mem[_3187])]
        mem[64] = _724 + _726 + _2119 + _3249 + _4184 + 98
        mem[_724 + _726 + _2119 + _3249 + _4184 + 98] = 32
        mem[_724 + _726 + _2119 + _3249 + _4184 + 130] = mem[_724 + _726 + _2119 + 65]
        mem[_724 + _726 + _2119 + _3249 + _4184 + 162 len ceil32(mem[_724 + _726 + _2119 + 65])] = mem[_724 + _726 + _2119 + 97 len ceil32(mem[_724 + _726 + _2119 + 65])]
        if ceil32(mem[_724 + _726 + _2119 + 65]) > mem[_724 + _726 + _2119 + 65]:
            mem[_724 + _726 + _2119 + _3249 + _4184 + mem[_724 + _726 + _2119 + 65] + 162] = 0
        return Array(len=mem[_724 + _726 + _2119 + 65], data=mem[_724 + _726 + _2119 + _3249 + _4184 + 162 len ceil32(mem[_724 + _726 + _2119 + 65])]), 
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
    _1073 = mem[64]
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
            if t - 1 >= mem[_1073]:
                revert with 'NH{q', 50
            mem[t + _1073 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _2104 = mem[64]
        _2108 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _3146 = mem[_1073]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[_1073])] = mem[_1073 + 32 len ceil32(mem[_1073])]
            if ceil32(_3146) <= _3146:
                _4146 = mem[64]
                mem[mem[64]] = _2104 + _2108 + _3146 - mem[64]
                mem[64] = _2104 + _2108 + _3146 + 32
                _4162 = mem[_4146]
                mem[_2104 + _2108 + _3146 + 64 len ceil32(mem[_4146])] = mem[_4146 + 32 len ceil32(mem[_4146])]
                if ceil32(_4162) > _4162:
                    mem[_2104 + _2108 + _3146 + _4162 + 64] = 0
                    mem[_2104 + _2108 + _3146 + 32] = _4162
                    mem[64] = _2104 + _2108 + _3146 + _4162 + 64
                    if not mem[160]:
                        revert with 'NH{q', 18
                    if sha3(mem[_2104 + _2108 + _3146 + 64 len _4162]) % mem[160] >= mem[160]:
                        revert with 'NH{q', 50
                    _5258 = mem[(32 * sha3(mem[_2104 + _2108 + _3146 + 64 len _4162]) % mem[160]) + 192]
                    if not mem[_362]:
                        revert with 'NH{q', 18
                    if sha3(mem[_2104 + _2108 + _3146 + 64 len _4162]) % mem[_362] >= mem[_362]:
                        revert with 'NH{q', 50
                    _5426 = mem[mem[(32 * sha3(mem[_2104 + _2108 + _3146 + 64 len _4162]) % mem[_362]) + _362 + 32]]
                    mem[_2104 + _2108 + _3146 + _4162 + 96 len ceil32(mem[mem[(32 * sha3(mem[_2104 + _2108 + _3146 + 64 len _4162]) % mem[_362]) + _362 + 32]])] = mem[mem[(32 * sha3(mem[_2104 + _2108 + _3146 + 64 len _4162]) % mem[_362]) + _362 + 32] + 32 len ceil32(mem[mem[(32 * sha3(mem[_2104 + _2108 + _3146 + 64 len _4162]) % mem[_362]) + _362 + 32]])]
                    mem[_2104 + _2108 + _3146 + _4162 + _5426 + 96] = ' '
                    return ''
                mem[_2104 + _2108 + _3146 + 32] = _4162
                mem[64] = _2104 + _2108 + _3146 + _4162 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_2104 + _2108 + _3146 + 64 len _4162]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _5234 = mem[(32 * sha3(mem[_2104 + _2108 + _3146 + 64 len _4162]) % mem[160]) + 192]
                if not mem[_362]:
                    revert with 'NH{q', 18
                if sha3(mem[_2104 + _2108 + _3146 + 64 len _4162]) % mem[_362] >= mem[_362]:
                    revert with 'NH{q', 50
                _5418 = mem[mem[(32 * sha3(mem[_2104 + _2108 + _3146 + 64 len _4162]) % mem[_362]) + _362 + 32]]
                mem[_2104 + _2108 + _3146 + _4162 + 96 len ceil32(mem[mem[(32 * sha3(mem[_2104 + _2108 + _3146 + 64 len _4162]) % mem[_362]) + _362 + 32]])] = mem[mem[(32 * sha3(mem[_2104 + _2108 + _3146 + 64 len _4162]) % mem[_362]) + _362 + 32] + 32 len ceil32(mem[mem[(32 * sha3(mem[_2104 + _2108 + _3146 + 64 len _4162]) % mem[_362]) + _362 + 32]])]
                mem[_2104 + _2108 + _3146 + _4162 + _5418 + 96] = ' '
                if ceil32(_5418) <= _5418:
                    _6010 = mem[_5234]
                    mem[_2104 + _2108 + _3146 + _4162 + _5418 + 97 len ceil32(mem[_5234])] = mem[_5234 + 32 len ceil32(mem[_5234])]
                    mem[64] = _2104 + _2108 + _3146 + _4162 + _5418 + _6010 + 97
                    mem[_2104 + _2108 + _3146 + _4162 + _5418 + _6010 + 97] = 32
                    mem[_2104 + _2108 + _3146 + _4162 + _5418 + _6010 + 129] = mem[_2104 + _2108 + _3146 + _4162 + 64]
                    mem[_2104 + _2108 + _3146 + _4162 + _5418 + _6010 + 161 len ceil32(mem[_2104 + _2108 + _3146 + _4162 + 64])] = mem[_2104 + _2108 + _3146 + _4162 + 96 len ceil32(mem[_2104 + _2108 + _3146 + _4162 + 64])]
                    if ceil32(mem[_2104 + _2108 + _3146 + _4162 + 64]) > mem[_2104 + _2108 + _3146 + _4162 + 64]:
                        mem[_2104 + _2108 + _3146 + _4162 + _5418 + _6010 + mem[_2104 + _2108 + _3146 + _4162 + 64] + 161] = 0
                    return Array(len=mem[_2104 + _2108 + _3146 + _4162 + 64], data=mem[_2104 + _2108 + _3146 + _4162 + _5418 + _6010 + 161 len ceil32(mem[_2104 + _2108 + _3146 + _4162 + 64])]), 
                _6026 = mem[_5234]
                mem[_2104 + _2108 + _3146 + _4162 + _5418 + 97 len ceil32(mem[_5234])] = mem[_5234 + 32 len ceil32(mem[_5234])]
                mem[64] = _2104 + _2108 + _3146 + _4162 + _5418 + _6026 + 97
                mem[_2104 + _2108 + _3146 + _4162 + _5418 + _6026 + 97] = 32
                mem[_2104 + _2108 + _3146 + _4162 + _5418 + _6026 + 129] = mem[_2104 + _2108 + _3146 + _4162 + 64]
                mem[_2104 + _2108 + _3146 + _4162 + _5418 + _6026 + 161 len ceil32(mem[_2104 + _2108 + _3146 + _4162 + 64])] = mem[_2104 + _2108 + _3146 + _4162 + 96 len ceil32(mem[_2104 + _2108 + _3146 + _4162 + 64])]
                if ceil32(mem[_2104 + _2108 + _3146 + _4162 + 64]) > mem[_2104 + _2108 + _3146 + _4162 + 64]:
                    mem[_2104 + _2108 + _3146 + _4162 + _5418 + _6026 + mem[_2104 + _2108 + _3146 + _4162 + 64] + 161] = 0
                return Array(len=mem[_2104 + _2108 + _3146 + _4162 + 64], data=mem[_2104 + _2108 + _3146 + _4162 + _5418 + _6026 + 161 len ceil32(mem[_2104 + _2108 + _3146 + _4162 + 64])]), 
            mem[_2104 + _2108 + _3146 + 32] = 0
            _4151 = mem[64]
            mem[mem[64]] = _2104 + _2108 + _3146 - mem[64]
            mem[64] = _2104 + _2108 + _3146 + 32
            _4166 = mem[_4151]
            mem[_2104 + _2108 + _3146 + 64 len ceil32(mem[_4151])] = mem[_4151 + 32 len ceil32(mem[_4151])]
            if ceil32(_4166) > _4166:
                mem[_2104 + _2108 + _3146 + _4166 + 64] = 0
                mem[_2104 + _2108 + _3146 + 32] = _4166
                mem[64] = _2104 + _2108 + _3146 + _4166 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_2104 + _2108 + _3146 + 64 len _4166]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _5260 = mem[(32 * sha3(mem[_2104 + _2108 + _3146 + 64 len _4166]) % mem[160]) + 192]
                if not mem[_362]:
                    revert with 'NH{q', 18
                if sha3(mem[_2104 + _2108 + _3146 + 64 len _4166]) % mem[_362] >= mem[_362]:
                    revert with 'NH{q', 50
                _5427 = mem[mem[(32 * sha3(mem[_2104 + _2108 + _3146 + 64 len _4166]) % mem[_362]) + _362 + 32]]
                mem[_2104 + _2108 + _3146 + _4166 + 96 len ceil32(mem[mem[(32 * sha3(mem[_2104 + _2108 + _3146 + 64 len _4166]) % mem[_362]) + _362 + 32]])] = mem[mem[(32 * sha3(mem[_2104 + _2108 + _3146 + 64 len _4166]) % mem[_362]) + _362 + 32] + 32 len ceil32(mem[mem[(32 * sha3(mem[_2104 + _2108 + _3146 + 64 len _4166]) % mem[_362]) + _362 + 32]])]
                mem[_2104 + _2108 + _3146 + _4166 + _5427 + 96] = ' '
                return ''
            mem[_2104 + _2108 + _3146 + 32] = _4166
            mem[64] = _2104 + _2108 + _3146 + _4166 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_2104 + _2108 + _3146 + 64 len _4166]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _5237 = mem[(32 * sha3(mem[_2104 + _2108 + _3146 + 64 len _4166]) % mem[160]) + 192]
            if not mem[_362]:
                revert with 'NH{q', 18
            if sha3(mem[_2104 + _2108 + _3146 + 64 len _4166]) % mem[_362] >= mem[_362]:
                revert with 'NH{q', 50
            _5419 = mem[mem[(32 * sha3(mem[_2104 + _2108 + _3146 + 64 len _4166]) % mem[_362]) + _362 + 32]]
            mem[_2104 + _2108 + _3146 + _4166 + 96 len ceil32(mem[mem[(32 * sha3(mem[_2104 + _2108 + _3146 + 64 len _4166]) % mem[_362]) + _362 + 32]])] = mem[mem[(32 * sha3(mem[_2104 + _2108 + _3146 + 64 len _4166]) % mem[_362]) + _362 + 32] + 32 len ceil32(mem[mem[(32 * sha3(mem[_2104 + _2108 + _3146 + 64 len _4166]) % mem[_362]) + _362 + 32]])]
            mem[_2104 + _2108 + _3146 + _4166 + _5419 + 96] = ' '
            if ceil32(_5419) <= _5419:
                _6012 = mem[_5237]
                mem[_2104 + _2108 + _3146 + _4166 + _5419 + 97 len ceil32(mem[_5237])] = mem[_5237 + 32 len ceil32(mem[_5237])]
                mem[64] = _2104 + _2108 + _3146 + _4166 + _5419 + _6012 + 97
                mem[_2104 + _2108 + _3146 + _4166 + _5419 + _6012 + 97] = 32
                mem[_2104 + _2108 + _3146 + _4166 + _5419 + _6012 + 129] = mem[_2104 + _2108 + _3146 + _4166 + 64]
                mem[_2104 + _2108 + _3146 + _4166 + _5419 + _6012 + 161 len ceil32(mem[_2104 + _2108 + _3146 + _4166 + 64])] = mem[_2104 + _2108 + _3146 + _4166 + 96 len ceil32(mem[_2104 + _2108 + _3146 + _4166 + 64])]
                if ceil32(mem[_2104 + _2108 + _3146 + _4166 + 64]) > mem[_2104 + _2108 + _3146 + _4166 + 64]:
                    mem[_2104 + _2108 + _3146 + _4166 + _5419 + _6012 + mem[_2104 + _2108 + _3146 + _4166 + 64] + 161] = 0
                return Array(len=mem[_2104 + _2108 + _3146 + _4166 + 64], data=mem[_2104 + _2108 + _3146 + _4166 + _5419 + _6012 + 161 len ceil32(mem[_2104 + _2108 + _3146 + _4166 + 64])]), 
            _6028 = mem[_5237]
            mem[_2104 + _2108 + _3146 + _4166 + _5419 + 97 len ceil32(mem[_5237])] = mem[_5237 + 32 len ceil32(mem[_5237])]
            mem[64] = _2104 + _2108 + _3146 + _4166 + _5419 + _6028 + 97
            mem[_2104 + _2108 + _3146 + _4166 + _5419 + _6028 + 97] = 32
            mem[_2104 + _2108 + _3146 + _4166 + _5419 + _6028 + 129] = mem[_2104 + _2108 + _3146 + _4166 + 64]
            mem[_2104 + _2108 + _3146 + _4166 + _5419 + _6028 + 161 len ceil32(mem[_2104 + _2108 + _3146 + _4166 + 64])] = mem[_2104 + _2108 + _3146 + _4166 + 96 len ceil32(mem[_2104 + _2108 + _3146 + _4166 + 64])]
            if ceil32(mem[_2104 + _2108 + _3146 + _4166 + 64]) > mem[_2104 + _2108 + _3146 + _4166 + 64]:
                mem[_2104 + _2108 + _3146 + _4166 + _5419 + _6028 + mem[_2104 + _2108 + _3146 + _4166 + 64] + 161] = 0
            return Array(len=mem[_2104 + _2108 + _3146 + _4166 + 64], data=mem[_2104 + _2108 + _3146 + _4166 + _5419 + _6028 + 161 len ceil32(mem[_2104 + _2108 + _3146 + _4166 + 64])]), 
        mem[mem[64] + mem[96] + 32] = 0
        _3164 = mem[_1073]
        mem[_2104 + _2108 + 32 len ceil32(mem[_1073])] = mem[_1073 + 32 len ceil32(mem[_1073])]
        if ceil32(_3164) <= _3164:
            _4147 = mem[64]
            mem[mem[64]] = _2104 + _2108 + _3164 - mem[64]
            mem[64] = _2104 + _2108 + _3164 + 32
            _4163 = mem[_4147]
            mem[_2104 + _2108 + _3164 + 64 len ceil32(mem[_4147])] = mem[_4147 + 32 len ceil32(mem[_4147])]
            if ceil32(_4163) > _4163:
                mem[_2104 + _2108 + _3164 + _4163 + 64] = 0
                mem[_2104 + _2108 + _3164 + 32] = _4163
                mem[64] = _2104 + _2108 + _3164 + _4163 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_2104 + _2108 + _3164 + 64 len _4163]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _5262 = mem[(32 * sha3(mem[_2104 + _2108 + _3164 + 64 len _4163]) % mem[160]) + 192]
                if not mem[_362]:
                    revert with 'NH{q', 18
                if sha3(mem[_2104 + _2108 + _3164 + 64 len _4163]) % mem[_362] >= mem[_362]:
                    revert with 'NH{q', 50
                _5428 = mem[mem[(32 * sha3(mem[_2104 + _2108 + _3164 + 64 len _4163]) % mem[_362]) + _362 + 32]]
                mem[_2104 + _2108 + _3164 + _4163 + 96 len ceil32(mem[mem[(32 * sha3(mem[_2104 + _2108 + _3164 + 64 len _4163]) % mem[_362]) + _362 + 32]])] = mem[mem[(32 * sha3(mem[_2104 + _2108 + _3164 + 64 len _4163]) % mem[_362]) + _362 + 32] + 32 len ceil32(mem[mem[(32 * sha3(mem[_2104 + _2108 + _3164 + 64 len _4163]) % mem[_362]) + _362 + 32]])]
                mem[_2104 + _2108 + _3164 + _4163 + _5428 + 96] = ' '
                return ''
            mem[_2104 + _2108 + _3164 + 32] = _4163
            mem[64] = _2104 + _2108 + _3164 + _4163 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_2104 + _2108 + _3164 + 64 len _4163]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _5240 = mem[(32 * sha3(mem[_2104 + _2108 + _3164 + 64 len _4163]) % mem[160]) + 192]
            if not mem[_362]:
                revert with 'NH{q', 18
            if sha3(mem[_2104 + _2108 + _3164 + 64 len _4163]) % mem[_362] >= mem[_362]:
                revert with 'NH{q', 50
            _5420 = mem[mem[(32 * sha3(mem[_2104 + _2108 + _3164 + 64 len _4163]) % mem[_362]) + _362 + 32]]
            mem[_2104 + _2108 + _3164 + _4163 + 96 len ceil32(mem[mem[(32 * sha3(mem[_2104 + _2108 + _3164 + 64 len _4163]) % mem[_362]) + _362 + 32]])] = mem[mem[(32 * sha3(mem[_2104 + _2108 + _3164 + 64 len _4163]) % mem[_362]) + _362 + 32] + 32 len ceil32(mem[mem[(32 * sha3(mem[_2104 + _2108 + _3164 + 64 len _4163]) % mem[_362]) + _362 + 32]])]
            mem[_2104 + _2108 + _3164 + _4163 + _5420 + 96] = ' '
            if ceil32(_5420) <= _5420:
                _6014 = mem[_5240]
                mem[_2104 + _2108 + _3164 + _4163 + _5420 + 97 len ceil32(mem[_5240])] = mem[_5240 + 32 len ceil32(mem[_5240])]
                mem[64] = _2104 + _2108 + _3164 + _4163 + _5420 + _6014 + 97
                mem[_2104 + _2108 + _3164 + _4163 + _5420 + _6014 + 97] = 32
                mem[_2104 + _2108 + _3164 + _4163 + _5420 + _6014 + 129] = mem[_2104 + _2108 + _3164 + _4163 + 64]
                mem[_2104 + _2108 + _3164 + _4163 + _5420 + _6014 + 161 len ceil32(mem[_2104 + _2108 + _3164 + _4163 + 64])] = mem[_2104 + _2108 + _3164 + _4163 + 96 len ceil32(mem[_2104 + _2108 + _3164 + _4163 + 64])]
                if ceil32(mem[_2104 + _2108 + _3164 + _4163 + 64]) > mem[_2104 + _2108 + _3164 + _4163 + 64]:
                    mem[_2104 + _2108 + _3164 + _4163 + _5420 + _6014 + mem[_2104 + _2108 + _3164 + _4163 + 64] + 161] = 0
                return Array(len=mem[_2104 + _2108 + _3164 + _4163 + 64], data=mem[_2104 + _2108 + _3164 + _4163 + _5420 + _6014 + 161 len ceil32(mem[_2104 + _2108 + _3164 + _4163 + 64])]), 
            _6030 = mem[_5240]
            mem[_2104 + _2108 + _3164 + _4163 + _5420 + 97 len ceil32(mem[_5240])] = mem[_5240 + 32 len ceil32(mem[_5240])]
            mem[64] = _2104 + _2108 + _3164 + _4163 + _5420 + _6030 + 97
            mem[_2104 + _2108 + _3164 + _4163 + _5420 + _6030 + 97] = 32
            mem[_2104 + _2108 + _3164 + _4163 + _5420 + _6030 + 129] = mem[_2104 + _2108 + _3164 + _4163 + 64]
            mem[_2104 + _2108 + _3164 + _4163 + _5420 + _6030 + 161 len ceil32(mem[_2104 + _2108 + _3164 + _4163 + 64])] = mem[_2104 + _2108 + _3164 + _4163 + 96 len ceil32(mem[_2104 + _2108 + _3164 + _4163 + 64])]
            if ceil32(mem[_2104 + _2108 + _3164 + _4163 + 64]) > mem[_2104 + _2108 + _3164 + _4163 + 64]:
                mem[_2104 + _2108 + _3164 + _4163 + _5420 + _6030 + mem[_2104 + _2108 + _3164 + _4163 + 64] + 161] = 0
            return Array(len=mem[_2104 + _2108 + _3164 + _4163 + 64], data=mem[_2104 + _2108 + _3164 + _4163 + _5420 + _6030 + 161 len ceil32(mem[_2104 + _2108 + _3164 + _4163 + 64])]), 
        mem[_2104 + _2108 + _3164 + 32] = 0
        _4153 = mem[64]
        mem[mem[64]] = _2104 + _2108 + _3164 - mem[64]
        mem[64] = _2104 + _2108 + _3164 + 32
        _4167 = mem[_4153]
        mem[_2104 + _2108 + _3164 + 64 len ceil32(mem[_4153])] = mem[_4153 + 32 len ceil32(mem[_4153])]
        if ceil32(_4167) > _4167:
            mem[_2104 + _2108 + _3164 + _4167 + 64] = 0
            mem[_2104 + _2108 + _3164 + 32] = _4167
            mem[64] = _2104 + _2108 + _3164 + _4167 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_2104 + _2108 + _3164 + 64 len _4167]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _5264 = mem[(32 * sha3(mem[_2104 + _2108 + _3164 + 64 len _4167]) % mem[160]) + 192]
            if not mem[_362]:
                revert with 'NH{q', 18
            if sha3(mem[_2104 + _2108 + _3164 + 64 len _4167]) % mem[_362] >= mem[_362]:
                revert with 'NH{q', 50
            _5429 = mem[mem[(32 * sha3(mem[_2104 + _2108 + _3164 + 64 len _4167]) % mem[_362]) + _362 + 32]]
            mem[_2104 + _2108 + _3164 + _4167 + 96 len ceil32(mem[mem[(32 * sha3(mem[_2104 + _2108 + _3164 + 64 len _4167]) % mem[_362]) + _362 + 32]])] = mem[mem[(32 * sha3(mem[_2104 + _2108 + _3164 + 64 len _4167]) % mem[_362]) + _362 + 32] + 32 len ceil32(mem[mem[(32 * sha3(mem[_2104 + _2108 + _3164 + 64 len _4167]) % mem[_362]) + _362 + 32]])]
            mem[_2104 + _2108 + _3164 + _4167 + _5429 + 96] = ' '
            return ''
        mem[_2104 + _2108 + _3164 + 32] = _4167
        mem[64] = _2104 + _2108 + _3164 + _4167 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_2104 + _2108 + _3164 + 64 len _4167]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _5243 = mem[(32 * sha3(mem[_2104 + _2108 + _3164 + 64 len _4167]) % mem[160]) + 192]
        if not mem[_362]:
            revert with 'NH{q', 18
        if sha3(mem[_2104 + _2108 + _3164 + 64 len _4167]) % mem[_362] >= mem[_362]:
            revert with 'NH{q', 50
        _5421 = mem[mem[(32 * sha3(mem[_2104 + _2108 + _3164 + 64 len _4167]) % mem[_362]) + _362 + 32]]
        mem[_2104 + _2108 + _3164 + _4167 + 96 len ceil32(mem[mem[(32 * sha3(mem[_2104 + _2108 + _3164 + 64 len _4167]) % mem[_362]) + _362 + 32]])] = mem[mem[(32 * sha3(mem[_2104 + _2108 + _3164 + 64 len _4167]) % mem[_362]) + _362 + 32] + 32 len ceil32(mem[mem[(32 * sha3(mem[_2104 + _2108 + _3164 + 64 len _4167]) % mem[_362]) + _362 + 32]])]
        mem[_2104 + _2108 + _3164 + _4167 + _5421 + 96] = ' '
        if ceil32(_5421) <= _5421:
            _6016 = mem[_5243]
            mem[_2104 + _2108 + _3164 + _4167 + _5421 + 97 len ceil32(mem[_5243])] = mem[_5243 + 32 len ceil32(mem[_5243])]
            mem[64] = _2104 + _2108 + _3164 + _4167 + _5421 + _6016 + 97
            mem[_2104 + _2108 + _3164 + _4167 + _5421 + _6016 + 97] = 32
            mem[_2104 + _2108 + _3164 + _4167 + _5421 + _6016 + 129] = mem[_2104 + _2108 + _3164 + _4167 + 64]
            mem[_2104 + _2108 + _3164 + _4167 + _5421 + _6016 + 161 len ceil32(mem[_2104 + _2108 + _3164 + _4167 + 64])] = mem[_2104 + _2108 + _3164 + _4167 + 96 len ceil32(mem[_2104 + _2108 + _3164 + _4167 + 64])]
            if ceil32(mem[_2104 + _2108 + _3164 + _4167 + 64]) > mem[_2104 + _2108 + _3164 + _4167 + 64]:
                mem[_2104 + _2108 + _3164 + _4167 + _5421 + _6016 + mem[_2104 + _2108 + _3164 + _4167 + 64] + 161] = 0
            return Array(len=mem[_2104 + _2108 + _3164 + _4167 + 64], data=mem[_2104 + _2108 + _3164 + _4167 + _5421 + _6016 + 161 len ceil32(mem[_2104 + _2108 + _3164 + _4167 + 64])]), 
        _6032 = mem[_5243]
        mem[_2104 + _2108 + _3164 + _4167 + _5421 + 97 len ceil32(mem[_5243])] = mem[_5243 + 32 len ceil32(mem[_5243])]
        mem[64] = _2104 + _2108 + _3164 + _4167 + _5421 + _6032 + 97
        mem[_2104 + _2108 + _3164 + _4167 + _5421 + _6032 + 97] = 32
        mem[_2104 + _2108 + _3164 + _4167 + _5421 + _6032 + 129] = mem[_2104 + _2108 + _3164 + _4167 + 64]
        mem[_2104 + _2108 + _3164 + _4167 + _5421 + _6032 + 161 len ceil32(mem[_2104 + _2108 + _3164 + _4167 + 64])] = mem[_2104 + _2108 + _3164 + _4167 + 96 len ceil32(mem[_2104 + _2108 + _3164 + _4167 + 64])]
        if ceil32(mem[_2104 + _2108 + _3164 + _4167 + 64]) > mem[_2104 + _2108 + _3164 + _4167 + 64]:
            mem[_2104 + _2108 + _3164 + _4167 + _5421 + _6032 + mem[_2104 + _2108 + _3164 + _4167 + 64] + 161] = 0
        return Array(len=mem[_2104 + _2108 + _3164 + _4167 + 64], data=mem[_2104 + _2108 + _3164 + _4167 + _5421 + _6032 + 161 len ceil32(mem[_2104 + _2108 + _3164 + _4167 + 64])]), 
    mem[_1073 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_1073]:
            revert with 'NH{q', 50
        mem[t + _1073 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _2105 = mem[64]
    _2109 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _3147 = mem[_1073]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[_1073])] = mem[_1073 + 32 len ceil32(mem[_1073])]
        if ceil32(_3147) <= _3147:
            _4148 = mem[64]
            mem[mem[64]] = _2105 + _2109 + _3147 - mem[64]
            mem[64] = _2105 + _2109 + _3147 + 32
            _4164 = mem[_4148]
            mem[_2105 + _2109 + _3147 + 64 len ceil32(mem[_4148])] = mem[_4148 + 32 len ceil32(mem[_4148])]
            if ceil32(_4164) > _4164:
                mem[_2105 + _2109 + _3147 + _4164 + 64] = 0
                mem[_2105 + _2109 + _3147 + 32] = _4164
                mem[64] = _2105 + _2109 + _3147 + _4164 + 64
                if not mem[160]:
                    revert with 'NH{q', 18
                if sha3(mem[_2105 + _2109 + _3147 + 64 len _4164]) % mem[160] >= mem[160]:
                    revert with 'NH{q', 50
                _5266 = mem[(32 * sha3(mem[_2105 + _2109 + _3147 + 64 len _4164]) % mem[160]) + 192]
                if not mem[_362]:
                    revert with 'NH{q', 18
                if sha3(mem[_2105 + _2109 + _3147 + 64 len _4164]) % mem[_362] >= mem[_362]:
                    revert with 'NH{q', 50
                _5430 = mem[mem[(32 * sha3(mem[_2105 + _2109 + _3147 + 64 len _4164]) % mem[_362]) + _362 + 32]]
                mem[_2105 + _2109 + _3147 + _4164 + 96 len ceil32(mem[mem[(32 * sha3(mem[_2105 + _2109 + _3147 + 64 len _4164]) % mem[_362]) + _362 + 32]])] = mem[mem[(32 * sha3(mem[_2105 + _2109 + _3147 + 64 len _4164]) % mem[_362]) + _362 + 32] + 32 len ceil32(mem[mem[(32 * sha3(mem[_2105 + _2109 + _3147 + 64 len _4164]) % mem[_362]) + _362 + 32]])]
                mem[_2105 + _2109 + _3147 + _4164 + _5430 + 96] = ' '
                return ''
            mem[_2105 + _2109 + _3147 + 32] = _4164
            mem[64] = _2105 + _2109 + _3147 + _4164 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_2105 + _2109 + _3147 + 64 len _4164]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _5246 = mem[(32 * sha3(mem[_2105 + _2109 + _3147 + 64 len _4164]) % mem[160]) + 192]
            if not mem[_362]:
                revert with 'NH{q', 18
            if sha3(mem[_2105 + _2109 + _3147 + 64 len _4164]) % mem[_362] >= mem[_362]:
                revert with 'NH{q', 50
            _5422 = mem[mem[(32 * sha3(mem[_2105 + _2109 + _3147 + 64 len _4164]) % mem[_362]) + _362 + 32]]
            mem[_2105 + _2109 + _3147 + _4164 + 96 len ceil32(mem[mem[(32 * sha3(mem[_2105 + _2109 + _3147 + 64 len _4164]) % mem[_362]) + _362 + 32]])] = mem[mem[(32 * sha3(mem[_2105 + _2109 + _3147 + 64 len _4164]) % mem[_362]) + _362 + 32] + 32 len ceil32(mem[mem[(32 * sha3(mem[_2105 + _2109 + _3147 + 64 len _4164]) % mem[_362]) + _362 + 32]])]
            mem[_2105 + _2109 + _3147 + _4164 + _5422 + 96] = ' '
            if ceil32(_5422) <= _5422:
                _6018 = mem[_5246]
                mem[_2105 + _2109 + _3147 + _4164 + _5422 + 97 len ceil32(mem[_5246])] = mem[_5246 + 32 len ceil32(mem[_5246])]
                mem[64] = _2105 + _2109 + _3147 + _4164 + _5422 + _6018 + 97
                mem[_2105 + _2109 + _3147 + _4164 + _5422 + _6018 + 97] = 32
                mem[_2105 + _2109 + _3147 + _4164 + _5422 + _6018 + 129] = mem[_2105 + _2109 + _3147 + _4164 + 64]
                mem[_2105 + _2109 + _3147 + _4164 + _5422 + _6018 + 161 len ceil32(mem[_2105 + _2109 + _3147 + _4164 + 64])] = mem[_2105 + _2109 + _3147 + _4164 + 96 len ceil32(mem[_2105 + _2109 + _3147 + _4164 + 64])]
                if ceil32(mem[_2105 + _2109 + _3147 + _4164 + 64]) > mem[_2105 + _2109 + _3147 + _4164 + 64]:
                    mem[_2105 + _2109 + _3147 + _4164 + _5422 + _6018 + mem[_2105 + _2109 + _3147 + _4164 + 64] + 161] = 0
                return Array(len=mem[_2105 + _2109 + _3147 + _4164 + 64], data=mem[_2105 + _2109 + _3147 + _4164 + _5422 + _6018 + 161 len ceil32(mem[_2105 + _2109 + _3147 + _4164 + 64])]), 
            _6034 = mem[_5246]
            mem[_2105 + _2109 + _3147 + _4164 + _5422 + 97 len ceil32(mem[_5246])] = mem[_5246 + 32 len ceil32(mem[_5246])]
            mem[64] = _2105 + _2109 + _3147 + _4164 + _5422 + _6034 + 97
            mem[_2105 + _2109 + _3147 + _4164 + _5422 + _6034 + 97] = 32
            mem[_2105 + _2109 + _3147 + _4164 + _5422 + _6034 + 129] = mem[_2105 + _2109 + _3147 + _4164 + 64]
            mem[_2105 + _2109 + _3147 + _4164 + _5422 + _6034 + 161 len ceil32(mem[_2105 + _2109 + _3147 + _4164 + 64])] = mem[_2105 + _2109 + _3147 + _4164 + 96 len ceil32(mem[_2105 + _2109 + _3147 + _4164 + 64])]
            if ceil32(mem[_2105 + _2109 + _3147 + _4164 + 64]) > mem[_2105 + _2109 + _3147 + _4164 + 64]:
                mem[_2105 + _2109 + _3147 + _4164 + _5422 + _6034 + mem[_2105 + _2109 + _3147 + _4164 + 64] + 161] = 0
            return Array(len=mem[_2105 + _2109 + _3147 + _4164 + 64], data=mem[_2105 + _2109 + _3147 + _4164 + _5422 + _6034 + 161 len ceil32(mem[_2105 + _2109 + _3147 + _4164 + 64])]), 
        mem[_2105 + _2109 + _3147 + 32] = 0
        _4155 = mem[64]
        mem[mem[64]] = _2105 + _2109 + _3147 - mem[64]
        mem[64] = _2105 + _2109 + _3147 + 32
        _4168 = mem[_4155]
        mem[_2105 + _2109 + _3147 + 64 len ceil32(mem[_4155])] = mem[_4155 + 32 len ceil32(mem[_4155])]
        if ceil32(_4168) > _4168:
            mem[_2105 + _2109 + _3147 + _4168 + 64] = 0
            mem[_2105 + _2109 + _3147 + 32] = _4168
            mem[64] = _2105 + _2109 + _3147 + _4168 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_2105 + _2109 + _3147 + 64 len _4168]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _5268 = mem[(32 * sha3(mem[_2105 + _2109 + _3147 + 64 len _4168]) % mem[160]) + 192]
            if not mem[_362]:
                revert with 'NH{q', 18
            if sha3(mem[_2105 + _2109 + _3147 + 64 len _4168]) % mem[_362] >= mem[_362]:
                revert with 'NH{q', 50
            _5431 = mem[mem[(32 * sha3(mem[_2105 + _2109 + _3147 + 64 len _4168]) % mem[_362]) + _362 + 32]]
            mem[_2105 + _2109 + _3147 + _4168 + 96 len ceil32(mem[mem[(32 * sha3(mem[_2105 + _2109 + _3147 + 64 len _4168]) % mem[_362]) + _362 + 32]])] = mem[mem[(32 * sha3(mem[_2105 + _2109 + _3147 + 64 len _4168]) % mem[_362]) + _362 + 32] + 32 len ceil32(mem[mem[(32 * sha3(mem[_2105 + _2109 + _3147 + 64 len _4168]) % mem[_362]) + _362 + 32]])]
            mem[_2105 + _2109 + _3147 + _4168 + _5431 + 96] = ' '
            return ''
        mem[_2105 + _2109 + _3147 + 32] = _4168
        mem[64] = _2105 + _2109 + _3147 + _4168 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_2105 + _2109 + _3147 + 64 len _4168]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _5249 = mem[(32 * sha3(mem[_2105 + _2109 + _3147 + 64 len _4168]) % mem[160]) + 192]
        if not mem[_362]:
            revert with 'NH{q', 18
        if sha3(mem[_2105 + _2109 + _3147 + 64 len _4168]) % mem[_362] >= mem[_362]:
            revert with 'NH{q', 50
        _5423 = mem[mem[(32 * sha3(mem[_2105 + _2109 + _3147 + 64 len _4168]) % mem[_362]) + _362 + 32]]
        mem[_2105 + _2109 + _3147 + _4168 + 96 len ceil32(mem[mem[(32 * sha3(mem[_2105 + _2109 + _3147 + 64 len _4168]) % mem[_362]) + _362 + 32]])] = mem[mem[(32 * sha3(mem[_2105 + _2109 + _3147 + 64 len _4168]) % mem[_362]) + _362 + 32] + 32 len ceil32(mem[mem[(32 * sha3(mem[_2105 + _2109 + _3147 + 64 len _4168]) % mem[_362]) + _362 + 32]])]
        mem[_2105 + _2109 + _3147 + _4168 + _5423 + 96] = ' '
        if ceil32(_5423) <= _5423:
            _6020 = mem[_5249]
            mem[_2105 + _2109 + _3147 + _4168 + _5423 + 97 len ceil32(mem[_5249])] = mem[_5249 + 32 len ceil32(mem[_5249])]
            mem[64] = _2105 + _2109 + _3147 + _4168 + _5423 + _6020 + 97
            mem[_2105 + _2109 + _3147 + _4168 + _5423 + _6020 + 97] = 32
            mem[_2105 + _2109 + _3147 + _4168 + _5423 + _6020 + 129] = mem[_2105 + _2109 + _3147 + _4168 + 64]
            mem[_2105 + _2109 + _3147 + _4168 + _5423 + _6020 + 161 len ceil32(mem[_2105 + _2109 + _3147 + _4168 + 64])] = mem[_2105 + _2109 + _3147 + _4168 + 96 len ceil32(mem[_2105 + _2109 + _3147 + _4168 + 64])]
            if ceil32(mem[_2105 + _2109 + _3147 + _4168 + 64]) > mem[_2105 + _2109 + _3147 + _4168 + 64]:
                mem[_2105 + _2109 + _3147 + _4168 + _5423 + _6020 + mem[_2105 + _2109 + _3147 + _4168 + 64] + 161] = 0
            return Array(len=mem[_2105 + _2109 + _3147 + _4168 + 64], data=mem[_2105 + _2109 + _3147 + _4168 + _5423 + _6020 + 161 len ceil32(mem[_2105 + _2109 + _3147 + _4168 + 64])]), 
        _6036 = mem[_5249]
        mem[_2105 + _2109 + _3147 + _4168 + _5423 + 97 len ceil32(mem[_5249])] = mem[_5249 + 32 len ceil32(mem[_5249])]
        mem[64] = _2105 + _2109 + _3147 + _4168 + _5423 + _6036 + 97
        mem[_2105 + _2109 + _3147 + _4168 + _5423 + _6036 + 97] = 32
        mem[_2105 + _2109 + _3147 + _4168 + _5423 + _6036 + 129] = mem[_2105 + _2109 + _3147 + _4168 + 64]
        mem[_2105 + _2109 + _3147 + _4168 + _5423 + _6036 + 161 len ceil32(mem[_2105 + _2109 + _3147 + _4168 + 64])] = mem[_2105 + _2109 + _3147 + _4168 + 96 len ceil32(mem[_2105 + _2109 + _3147 + _4168 + 64])]
        if ceil32(mem[_2105 + _2109 + _3147 + _4168 + 64]) > mem[_2105 + _2109 + _3147 + _4168 + 64]:
            mem[_2105 + _2109 + _3147 + _4168 + _5423 + _6036 + mem[_2105 + _2109 + _3147 + _4168 + 64] + 161] = 0
        return Array(len=mem[_2105 + _2109 + _3147 + _4168 + 64], data=mem[_2105 + _2109 + _3147 + _4168 + _5423 + _6036 + 161 len ceil32(mem[_2105 + _2109 + _3147 + _4168 + 64])]), 
    mem[mem[64] + mem[96] + 32] = 0
    _3165 = mem[_1073]
    mem[_2105 + _2109 + 32 len ceil32(mem[_1073])] = mem[_1073 + 32 len ceil32(mem[_1073])]
    if ceil32(_3165) <= _3165:
        _4149 = mem[64]
        mem[mem[64]] = _2105 + _2109 + _3165 - mem[64]
        mem[64] = _2105 + _2109 + _3165 + 32
        _4165 = mem[_4149]
        mem[_2105 + _2109 + _3165 + 64 len ceil32(mem[_4149])] = mem[_4149 + 32 len ceil32(mem[_4149])]
        if ceil32(_4165) > _4165:
            mem[_2105 + _2109 + _3165 + _4165 + 64] = 0
            mem[_2105 + _2109 + _3165 + 32] = _4165
            mem[64] = _2105 + _2109 + _3165 + _4165 + 64
            if not mem[160]:
                revert with 'NH{q', 18
            if sha3(mem[_2105 + _2109 + _3165 + 64 len _4165]) % mem[160] >= mem[160]:
                revert with 'NH{q', 50
            _5270 = mem[(32 * sha3(mem[_2105 + _2109 + _3165 + 64 len _4165]) % mem[160]) + 192]
            if not mem[_362]:
                revert with 'NH{q', 18
            if sha3(mem[_2105 + _2109 + _3165 + 64 len _4165]) % mem[_362] >= mem[_362]:
                revert with 'NH{q', 50
            _5432 = mem[mem[(32 * sha3(mem[_2105 + _2109 + _3165 + 64 len _4165]) % mem[_362]) + _362 + 32]]
            mem[_2105 + _2109 + _3165 + _4165 + 96 len ceil32(mem[mem[(32 * sha3(mem[_2105 + _2109 + _3165 + 64 len _4165]) % mem[_362]) + _362 + 32]])] = mem[mem[(32 * sha3(mem[_2105 + _2109 + _3165 + 64 len _4165]) % mem[_362]) + _362 + 32] + 32 len ceil32(mem[mem[(32 * sha3(mem[_2105 + _2109 + _3165 + 64 len _4165]) % mem[_362]) + _362 + 32]])]
            mem[_2105 + _2109 + _3165 + _4165 + _5432 + 96] = ' '
            return ''
        mem[_2105 + _2109 + _3165 + 32] = _4165
        mem[64] = _2105 + _2109 + _3165 + _4165 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_2105 + _2109 + _3165 + 64 len _4165]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _5252 = mem[(32 * sha3(mem[_2105 + _2109 + _3165 + 64 len _4165]) % mem[160]) + 192]
        if not mem[_362]:
            revert with 'NH{q', 18
        if sha3(mem[_2105 + _2109 + _3165 + 64 len _4165]) % mem[_362] >= mem[_362]:
            revert with 'NH{q', 50
        _5424 = mem[mem[(32 * sha3(mem[_2105 + _2109 + _3165 + 64 len _4165]) % mem[_362]) + _362 + 32]]
        mem[_2105 + _2109 + _3165 + _4165 + 96 len ceil32(mem[mem[(32 * sha3(mem[_2105 + _2109 + _3165 + 64 len _4165]) % mem[_362]) + _362 + 32]])] = mem[mem[(32 * sha3(mem[_2105 + _2109 + _3165 + 64 len _4165]) % mem[_362]) + _362 + 32] + 32 len ceil32(mem[mem[(32 * sha3(mem[_2105 + _2109 + _3165 + 64 len _4165]) % mem[_362]) + _362 + 32]])]
        mem[_2105 + _2109 + _3165 + _4165 + _5424 + 96] = ' '
        if ceil32(_5424) <= _5424:
            _6022 = mem[_5252]
            mem[_2105 + _2109 + _3165 + _4165 + _5424 + 97 len ceil32(mem[_5252])] = mem[_5252 + 32 len ceil32(mem[_5252])]
            mem[64] = _2105 + _2109 + _3165 + _4165 + _5424 + _6022 + 97
            mem[_2105 + _2109 + _3165 + _4165 + _5424 + _6022 + 97] = 32
            mem[_2105 + _2109 + _3165 + _4165 + _5424 + _6022 + 129] = mem[_2105 + _2109 + _3165 + _4165 + 64]
            mem[_2105 + _2109 + _3165 + _4165 + _5424 + _6022 + 161 len ceil32(mem[_2105 + _2109 + _3165 + _4165 + 64])] = mem[_2105 + _2109 + _3165 + _4165 + 96 len ceil32(mem[_2105 + _2109 + _3165 + _4165 + 64])]
            if ceil32(mem[_2105 + _2109 + _3165 + _4165 + 64]) > mem[_2105 + _2109 + _3165 + _4165 + 64]:
                mem[_2105 + _2109 + _3165 + _4165 + _5424 + _6022 + mem[_2105 + _2109 + _3165 + _4165 + 64] + 161] = 0
            return Array(len=mem[_2105 + _2109 + _3165 + _4165 + 64], data=mem[_2105 + _2109 + _3165 + _4165 + _5424 + _6022 + 161 len ceil32(mem[_2105 + _2109 + _3165 + _4165 + 64])]), 
        _6038 = mem[_5252]
        mem[_2105 + _2109 + _3165 + _4165 + _5424 + 97 len ceil32(mem[_5252])] = mem[_5252 + 32 len ceil32(mem[_5252])]
        mem[64] = _2105 + _2109 + _3165 + _4165 + _5424 + _6038 + 97
        mem[_2105 + _2109 + _3165 + _4165 + _5424 + _6038 + 97] = 32
        mem[_2105 + _2109 + _3165 + _4165 + _5424 + _6038 + 129] = mem[_2105 + _2109 + _3165 + _4165 + 64]
        mem[_2105 + _2109 + _3165 + _4165 + _5424 + _6038 + 161 len ceil32(mem[_2105 + _2109 + _3165 + _4165 + 64])] = mem[_2105 + _2109 + _3165 + _4165 + 96 len ceil32(mem[_2105 + _2109 + _3165 + _4165 + 64])]
        if ceil32(mem[_2105 + _2109 + _3165 + _4165 + 64]) > mem[_2105 + _2109 + _3165 + _4165 + 64]:
            mem[_2105 + _2109 + _3165 + _4165 + _5424 + _6038 + mem[_2105 + _2109 + _3165 + _4165 + 64] + 161] = 0
        return Array(len=mem[_2105 + _2109 + _3165 + _4165 + 64], data=mem[_2105 + _2109 + _3165 + _4165 + _5424 + _6038 + 161 len ceil32(mem[_2105 + _2109 + _3165 + _4165 + 64])]), 
    mem[_2105 + _2109 + _3165 + 32] = 0
    _4157 = mem[64]
    mem[mem[64]] = _2105 + _2109 + _3165 - mem[64]
    mem[64] = _2105 + _2109 + _3165 + 32
    _4169 = mem[_4157]
    mem[_2105 + _2109 + _3165 + 64 len ceil32(mem[_4157])] = mem[_4157 + 32 len ceil32(mem[_4157])]
    if ceil32(_4169) > _4169:
        mem[_2105 + _2109 + _3165 + _4169 + 64] = 0
        mem[_2105 + _2109 + _3165 + 32] = _4169
        mem[64] = _2105 + _2109 + _3165 + _4169 + 64
        if not mem[160]:
            revert with 'NH{q', 18
        if sha3(mem[_2105 + _2109 + _3165 + 64 len _4169]) % mem[160] >= mem[160]:
            revert with 'NH{q', 50
        _5272 = mem[(32 * sha3(mem[_2105 + _2109 + _3165 + 64 len _4169]) % mem[160]) + 192]
        if not mem[_362]:
            revert with 'NH{q', 18
        if sha3(mem[_2105 + _2109 + _3165 + 64 len _4169]) % mem[_362] >= mem[_362]:
            revert with 'NH{q', 50
        _5433 = mem[mem[(32 * sha3(mem[_2105 + _2109 + _3165 + 64 len _4169]) % mem[_362]) + _362 + 32]]
        mem[_2105 + _2109 + _3165 + _4169 + 96 len ceil32(mem[mem[(32 * sha3(mem[_2105 + _2109 + _3165 + 64 len _4169]) % mem[_362]) + _362 + 32]])] = mem[mem[(32 * sha3(mem[_2105 + _2109 + _3165 + 64 len _4169]) % mem[_362]) + _362 + 32] + 32 len ceil32(mem[mem[(32 * sha3(mem[_2105 + _2109 + _3165 + 64 len _4169]) % mem[_362]) + _362 + 32]])]
        mem[_2105 + _2109 + _3165 + _4169 + _5433 + 96] = ' '
        return ''
    mem[_2105 + _2109 + _3165 + 32] = _4169
    mem[64] = _2105 + _2109 + _3165 + _4169 + 64
    if not mem[160]:
        revert with 'NH{q', 18
    if sha3(mem[_2105 + _2109 + _3165 + 64 len _4169]) % mem[160] >= mem[160]:
        revert with 'NH{q', 50
    _5255 = mem[(32 * sha3(mem[_2105 + _2109 + _3165 + 64 len _4169]) % mem[160]) + 192]
    if not mem[_362]:
        revert with 'NH{q', 18
    if sha3(mem[_2105 + _2109 + _3165 + 64 len _4169]) % mem[_362] >= mem[_362]:
        revert with 'NH{q', 50
    _5425 = mem[mem[(32 * sha3(mem[_2105 + _2109 + _3165 + 64 len _4169]) % mem[_362]) + _362 + 32]]
    mem[_2105 + _2109 + _3165 + _4169 + 96 len ceil32(mem[mem[(32 * sha3(mem[_2105 + _2109 + _3165 + 64 len _4169]) % mem[_362]) + _362 + 32]])] = mem[mem[(32 * sha3(mem[_2105 + _2109 + _3165 + 64 len _4169]) % mem[_362]) + _362 + 32] + 32 len ceil32(mem[mem[(32 * sha3(mem[_2105 + _2109 + _3165 + 64 len _4169]) % mem[_362]) + _362 + 32]])]
    mem[_2105 + _2109 + _3165 + _4169 + _5425 + 96] = ' '
    if ceil32(_5425) <= _5425:
        _6024 = mem[_5255]
        mem[_2105 + _2109 + _3165 + _4169 + _5425 + 97 len ceil32(mem[_5255])] = mem[_5255 + 32 len ceil32(mem[_5255])]
        mem[64] = _2105 + _2109 + _3165 + _4169 + _5425 + _6024 + 97
        mem[_2105 + _2109 + _3165 + _4169 + _5425 + _6024 + 97] = 32
        mem[_2105 + _2109 + _3165 + _4169 + _5425 + _6024 + 129] = mem[_2105 + _2109 + _3165 + _4169 + 64]
        mem[_2105 + _2109 + _3165 + _4169 + _5425 + _6024 + 161 len ceil32(mem[_2105 + _2109 + _3165 + _4169 + 64])] = mem[_2105 + _2109 + _3165 + _4169 + 96 len ceil32(mem[_2105 + _2109 + _3165 + _4169 + 64])]
        if ceil32(mem[_2105 + _2109 + _3165 + _4169 + 64]) > mem[_2105 + _2109 + _3165 + _4169 + 64]:
            mem[_2105 + _2109 + _3165 + _4169 + _5425 + _6024 + mem[_2105 + _2109 + _3165 + _4169 + 64] + 161] = 0
        return Array(len=mem[_2105 + _2109 + _3165 + _4169 + 64], data=mem[_2105 + _2109 + _3165 + _4169 + _5425 + _6024 + 161 len ceil32(mem[_2105 + _2109 + _3165 + _4169 + 64])]), 
    _6040 = mem[_5255]
    mem[_2105 + _2109 + _3165 + _4169 + _5425 + 97 len ceil32(mem[_5255])] = mem[_5255 + 32 len ceil32(mem[_5255])]
    mem[64] = _2105 + _2109 + _3165 + _4169 + _5425 + _6040 + 97
    mem[_2105 + _2109 + _3165 + _4169 + _5425 + _6040 + 97] = 32
    mem[_2105 + _2109 + _3165 + _4169 + _5425 + _6040 + 129] = mem[_2105 + _2109 + _3165 + _4169 + 64]
    mem[_2105 + _2109 + _3165 + _4169 + _5425 + _6040 + 161 len ceil32(mem[_2105 + _2109 + _3165 + _4169 + 64])] = mem[_2105 + _2109 + _3165 + _4169 + 96 len ceil32(mem[_2105 + _2109 + _3165 + _4169 + 64])]
    if ceil32(mem[_2105 + _2109 + _3165 + _4169 + 64]) > mem[_2105 + _2109 + _3165 + _4169 + 64]:
        mem[_2105 + _2109 + _3165 + _4169 + _5425 + _6040 + mem[_2105 + _2109 + _3165 + _4169 + 64] + 161] = 0
    return Array(len=mem[_2105 + _2109 + _3165 + _4169 + 64], data=mem[_2105 + _2109 + _3165 + _4169 + _5425 + _6040 + 161 len ceil32(mem[_2105 + _2109 + _3165 + _4169 + 64])]), 
}

function sub_aff8d0a9(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 7
    mem[128] = 'CANNONS'
    if not arg1:
        mem[296] = 'CANNONS', '0', 0
        if sha3(Mask(64, 192, 'CANNONS', '0', 0) >> 192) % 59 > -3:
            revert with 'NH{q', 17
        if not (sha3(Mask(64, 192, 'CANNONS', '0', 0) >> 192) % 59) + 2:
            return '0', 0
        s = 0
        idx = (sha3(Mask(64, 192, 'CANNONS', '0', 0) >> 192) % 59) + 2
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[304] = s
        if s:
            mem[336 len s] = call.data[calldata.size len s]
        t = s
        idx = (sha3(mem[296 len 8]) % 59) + 2
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[304]:
                revert with 'NH{q', 50
            mem[t + 335 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(s) + 336] = 32
        mem[ceil32(s) + 368] = mem[304]
        mem[ceil32(s) + 400 len ceil32(mem[304])] = mem[336 len ceil32(mem[304])]
        if ceil32(mem[304]) > mem[304]:
            mem[ceil32(s) + mem[304] + 400] = 0
        return Array(len=mem[304], data=mem[ceil32(s) + 400 len ceil32(mem[304])])
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
                    if sha3(mem[_386 + _390 + _684 + 64 len _988]) % 59 > -3:
                        revert with 'NH{q', 17
                    if not (sha3(mem[_386 + _390 + _684 + 64 len _988]) % 59) + 2:
                        return '0', 0
                    s = 0
                    idx = (sha3(mem[_386 + _390 + _684 + 64 len _988]) % 59) + 2
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
                        idx = (_1262 % 59) + 2
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
                        _1788 = mem[64]
                        mem[mem[64]] = 32
                        _1820 = mem[_386 + _390 + _684 + _988 + 64]
                        mem[mem[64] + 32] = mem[_386 + _390 + _684 + _988 + 64]
                        mem[mem[64] + 64 len ceil32(_1820)] = mem[_386 + _390 + _684 + _988 + 96 len ceil32(_1820)]
                        if ceil32(_1820) <= _1820:
                            return 32, mem[mem[64] + 32 len ceil32(_1820) + 32]
                        mem[mem[64] + _1820 + 64] = 0
                        return memory
                          from mem[64]
                           len _1788 + ceil32(_1820) + -mem[64] + 64
                    mem[_386 + _390 + _684 + _988 + 96 len s] = call.data[calldata.size len s]
                    t = s
                    idx = (_1262 % 59) + 2
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
                if sha3(mem[_386 + _390 + _684 + 64 len _988]) % 59 > -3:
                    revert with 'NH{q', 17
                if not (sha3(mem[_386 + _390 + _684 + 64 len _988]) % 59) + 2:
                    return '0', 0
                s = 0
                idx = (sha3(mem[_386 + _390 + _684 + 64 len _988]) % 59) + 2
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
                    idx = (_1286 % 59) + 2
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
                idx = (_1286 % 59) + 2
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
                if sha3(mem[_386 + _390 + _684 + 64 len _1000]) % 59 > -3:
                    revert with 'NH{q', 17
                if not (sha3(mem[_386 + _390 + _684 + 64 len _1000]) % 59) + 2:
                    return '0', 0
                s = 0
                idx = (sha3(mem[_386 + _390 + _684 + 64 len _1000]) % 59) + 2
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
                    idx = (_1265 % 59) + 2
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
                    _1792 = mem[64]
                    mem[mem[64]] = 32
                    _1824 = mem[_386 + _390 + _684 + _1000 + 64]
                    mem[mem[64] + 32] = mem[_386 + _390 + _684 + _1000 + 64]
                    mem[mem[64] + 64 len ceil32(_1824)] = mem[_386 + _390 + _684 + _1000 + 96 len ceil32(_1824)]
                    if ceil32(_1824) <= _1824:
                        return 32, mem[mem[64] + 32 len ceil32(_1824) + 32]
                    mem[mem[64] + _1824 + 64] = 0
                    return memory
                      from mem[64]
                       len _1792 + ceil32(_1824) + -mem[64] + 64
                mem[_386 + _390 + _684 + _1000 + 96 len s] = call.data[calldata.size len s]
                t = s
                idx = (_1265 % 59) + 2
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
                _1793 = mem[64]
                mem[mem[64]] = 32
                _1825 = mem[_386 + _390 + _684 + _1000 + 64]
                mem[mem[64] + 32] = mem[_386 + _390 + _684 + _1000 + 64]
                mem[mem[64] + 64 len ceil32(_1825)] = mem[_386 + _390 + _684 + _1000 + 96 len ceil32(_1825)]
                if ceil32(_1825) <= _1825:
                    return 32, mem[mem[64] + 32 len ceil32(_1825) + 32]
                mem[mem[64] + _1825 + 64] = 0
                return memory
                  from mem[64]
                   len _1793 + ceil32(_1825) + -mem[64] + 64
            mem[_386 + _390 + _684 + _1000 + 64] = 0
            mem[_386 + _390 + _684 + 32] = _1000
            mem[64] = _386 + _390 + _684 + _1000 + 64
            _1289 = sha3(mem[_386 + _390 + _684 + 64 len _1000])
            if sha3(mem[_386 + _390 + _684 + 64 len _1000]) % 59 > -3:
                revert with 'NH{q', 17
            if not (sha3(mem[_386 + _390 + _684 + 64 len _1000]) % 59) + 2:
                return '0', 0
            s = 0
            idx = (sha3(mem[_386 + _390 + _684 + 64 len _1000]) % 59) + 2
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
                idx = (_1289 % 59) + 2
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
            idx = (_1289 % 59) + 2
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
                if sha3(mem[_386 + _390 + _698 + 64 len _989]) % 59 > -3:
                    revert with 'NH{q', 17
                if not (sha3(mem[_386 + _390 + _698 + 64 len _989]) % 59) + 2:
                    return '0', 0
                s = 0
                idx = (sha3(mem[_386 + _390 + _698 + 64 len _989]) % 59) + 2
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
                    idx = (_1268 % 59) + 2
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
                    _1796 = mem[64]
                    mem[mem[64]] = 32
                    _1828 = mem[_386 + _390 + _698 + _989 + 64]
                    mem[mem[64] + 32] = mem[_386 + _390 + _698 + _989 + 64]
                    mem[mem[64] + 64 len ceil32(_1828)] = mem[_386 + _390 + _698 + _989 + 96 len ceil32(_1828)]
                    if ceil32(_1828) <= _1828:
                        return 32, mem[mem[64] + 32 len ceil32(_1828) + 32]
                    mem[mem[64] + _1828 + 64] = 0
                    return memory
                      from mem[64]
                       len _1796 + ceil32(_1828) + -mem[64] + 64
                mem[_386 + _390 + _698 + _989 + 96 len s] = call.data[calldata.size len s]
                t = s
                idx = (_1268 % 59) + 2
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
            if sha3(mem[_386 + _390 + _698 + 64 len _989]) % 59 > -3:
                revert with 'NH{q', 17
            if not (sha3(mem[_386 + _390 + _698 + 64 len _989]) % 59) + 2:
                return '0', 0
            s = 0
            idx = (sha3(mem[_386 + _390 + _698 + 64 len _989]) % 59) + 2
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
                idx = (_1292 % 59) + 2
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
                _1798 = mem[64]
                mem[mem[64]] = 32
                _1830 = mem[_386 + _390 + _698 + _989 + 64]
                mem[mem[64] + 32] = mem[_386 + _390 + _698 + _989 + 64]
                mem[mem[64] + 64 len ceil32(_1830)] = mem[_386 + _390 + _698 + _989 + 96 len ceil32(_1830)]
                if ceil32(_1830) <= _1830:
                    return 32, mem[mem[64] + 32 len ceil32(_1830) + 32]
                mem[mem[64] + _1830 + 64] = 0
                return memory
                  from mem[64]
                   len _1798 + ceil32(_1830) + -mem[64] + 64
            mem[_386 + _390 + _698 + _989 + 96 len s] = call.data[calldata.size len s]
            t = s
            idx = (_1292 % 59) + 2
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
            if sha3(mem[_386 + _390 + _698 + 64 len _1001]) % 59 > -3:
                revert with 'NH{q', 17
            if not (sha3(mem[_386 + _390 + _698 + 64 len _1001]) % 59) + 2:
                return '0', 0
            s = 0
            idx = (sha3(mem[_386 + _390 + _698 + 64 len _1001]) % 59) + 2
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
                idx = (_1271 % 59) + 2
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
                _1800 = mem[64]
                mem[mem[64]] = 32
                _1832 = mem[_386 + _390 + _698 + _1001 + 64]
                mem[mem[64] + 32] = mem[_386 + _390 + _698 + _1001 + 64]
                mem[mem[64] + 64 len ceil32(_1832)] = mem[_386 + _390 + _698 + _1001 + 96 len ceil32(_1832)]
                if ceil32(_1832) <= _1832:
                    return 32, mem[mem[64] + 32 len ceil32(_1832) + 32]
                mem[mem[64] + _1832 + 64] = 0
                return memory
                  from mem[64]
                   len _1800 + ceil32(_1832) + -mem[64] + 64
            mem[_386 + _390 + _698 + _1001 + 96 len s] = call.data[calldata.size len s]
            t = s
            idx = (_1271 % 59) + 2
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
            _1801 = mem[64]
            mem[mem[64]] = 32
            _1833 = mem[_386 + _390 + _698 + _1001 + 64]
            mem[mem[64] + 32] = mem[_386 + _390 + _698 + _1001 + 64]
            mem[mem[64] + 64 len ceil32(_1833)] = mem[_386 + _390 + _698 + _1001 + 96 len ceil32(_1833)]
            if ceil32(_1833) <= _1833:
                return 32, mem[mem[64] + 32 len ceil32(_1833) + 32]
            mem[mem[64] + _1833 + 64] = 0
            return memory
              from mem[64]
               len _1801 + ceil32(_1833) + -mem[64] + 64
        mem[_386 + _390 + _698 + _1001 + 64] = 0
        mem[_386 + _390 + _698 + 32] = _1001
        mem[64] = _386 + _390 + _698 + _1001 + 64
        _1295 = sha3(mem[_386 + _390 + _698 + 64 len _1001])
        if sha3(mem[_386 + _390 + _698 + 64 len _1001]) % 59 > -3:
            revert with 'NH{q', 17
        if not (sha3(mem[_386 + _390 + _698 + 64 len _1001]) % 59) + 2:
            return '0', 0
        s = 0
        idx = (sha3(mem[_386 + _390 + _698 + 64 len _1001]) % 59) + 2
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
            idx = (_1295 % 59) + 2
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
        idx = (_1295 % 59) + 2
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
                if sha3(mem[_387 + _391 + _685 + 64 len _990]) % 59 > -3:
                    revert with 'NH{q', 17
                if not (sha3(mem[_387 + _391 + _685 + 64 len _990]) % 59) + 2:
                    return '0', 0
                s = 0
                idx = (sha3(mem[_387 + _391 + _685 + 64 len _990]) % 59) + 2
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
                    idx = (_1274 % 59) + 2
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
                idx = (_1274 % 59) + 2
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
            if sha3(mem[_387 + _391 + _685 + 64 len _990]) % 59 > -3:
                revert with 'NH{q', 17
            if not (sha3(mem[_387 + _391 + _685 + 64 len _990]) % 59) + 2:
                return '0', 0
            s = 0
            idx = (sha3(mem[_387 + _391 + _685 + 64 len _990]) % 59) + 2
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
                idx = (_1298 % 59) + 2
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
                _1806 = mem[64]
                mem[mem[64]] = 32
                _1838 = mem[_387 + _391 + _685 + _990 + 64]
                mem[mem[64] + 32] = mem[_387 + _391 + _685 + _990 + 64]
                mem[mem[64] + 64 len ceil32(_1838)] = mem[_387 + _391 + _685 + _990 + 96 len ceil32(_1838)]
                if ceil32(_1838) <= _1838:
                    return 32, mem[mem[64] + 32 len ceil32(_1838) + 32]
                mem[mem[64] + _1838 + 64] = 0
                return memory
                  from mem[64]
                   len _1806 + ceil32(_1838) + -mem[64] + 64
            mem[_387 + _391 + _685 + _990 + 96 len s] = call.data[calldata.size len s]
            t = s
            idx = (_1298 % 59) + 2
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
            _1807 = mem[64]
            mem[mem[64]] = 32
            _1839 = mem[_387 + _391 + _685 + _990 + 64]
            mem[mem[64] + 32] = mem[_387 + _391 + _685 + _990 + 64]
            mem[mem[64] + 64 len ceil32(_1839)] = mem[_387 + _391 + _685 + _990 + 96 len ceil32(_1839)]
            if ceil32(_1839) <= _1839:
                return 32, mem[mem[64] + 32 len ceil32(_1839) + 32]
            mem[mem[64] + _1839 + 64] = 0
            return memory
              from mem[64]
               len _1807 + ceil32(_1839) + -mem[64] + 64
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
            if sha3(mem[_387 + _391 + _685 + 64 len _1002]) % 59 > -3:
                revert with 'NH{q', 17
            if not (sha3(mem[_387 + _391 + _685 + 64 len _1002]) % 59) + 2:
                return '0', 0
            s = 0
            idx = (sha3(mem[_387 + _391 + _685 + 64 len _1002]) % 59) + 2
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
                idx = (_1277 % 59) + 2
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
            idx = (_1277 % 59) + 2
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
            _1809 = mem[64]
            mem[mem[64]] = 32
            _1841 = mem[_387 + _391 + _685 + _1002 + 64]
            mem[mem[64] + 32] = mem[_387 + _391 + _685 + _1002 + 64]
            mem[mem[64] + 64 len ceil32(_1841)] = mem[_387 + _391 + _685 + _1002 + 96 len ceil32(_1841)]
            if ceil32(_1841) <= _1841:
                return 32, mem[mem[64] + 32 len ceil32(_1841) + 32]
            mem[mem[64] + _1841 + 64] = 0
            return memory
              from mem[64]
               len _1809 + ceil32(_1841) + -mem[64] + 64
        mem[_387 + _391 + _685 + _1002 + 64] = 0
        mem[_387 + _391 + _685 + 32] = _1002
        mem[64] = _387 + _391 + _685 + _1002 + 64
        _1301 = sha3(mem[_387 + _391 + _685 + 64 len _1002])
        if sha3(mem[_387 + _391 + _685 + 64 len _1002]) % 59 > -3:
            revert with 'NH{q', 17
        if not (sha3(mem[_387 + _391 + _685 + 64 len _1002]) % 59) + 2:
            return '0', 0
        s = 0
        idx = (sha3(mem[_387 + _391 + _685 + 64 len _1002]) % 59) + 2
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
            idx = (_1301 % 59) + 2
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
            _1810 = mem[64]
            mem[mem[64]] = 32
            _1842 = mem[_387 + _391 + _685 + _1002 + 64]
            mem[mem[64] + 32] = mem[_387 + _391 + _685 + _1002 + 64]
            mem[mem[64] + 64 len ceil32(_1842)] = mem[_387 + _391 + _685 + _1002 + 96 len ceil32(_1842)]
            if ceil32(_1842) <= _1842:
                return 32, mem[mem[64] + 32 len ceil32(_1842) + 32]
            mem[mem[64] + _1842 + 64] = 0
            return memory
              from mem[64]
               len _1810 + ceil32(_1842) + -mem[64] + 64
        mem[_387 + _391 + _685 + _1002 + 96 len s] = call.data[calldata.size len s]
        t = s
        idx = (_1301 % 59) + 2
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
            if sha3(mem[_387 + _391 + _699 + 64 len _991]) % 59 > -3:
                revert with 'NH{q', 17
            if not (sha3(mem[_387 + _391 + _699 + 64 len _991]) % 59) + 2:
                return '0', 0
            s = 0
            idx = (sha3(mem[_387 + _391 + _699 + 64 len _991]) % 59) + 2
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
                idx = (_1280 % 59) + 2
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
            idx = (_1280 % 59) + 2
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
            _1813 = mem[64]
            mem[mem[64]] = 32
            _1845 = mem[_387 + _391 + _699 + _991 + 64]
            mem[mem[64] + 32] = mem[_387 + _391 + _699 + _991 + 64]
            mem[mem[64] + 64 len ceil32(_1845)] = mem[_387 + _391 + _699 + _991 + 96 len ceil32(_1845)]
            if ceil32(_1845) <= _1845:
                return 32, mem[mem[64] + 32 len ceil32(_1845) + 32]
            mem[mem[64] + _1845 + 64] = 0
            return memory
              from mem[64]
               len _1813 + ceil32(_1845) + -mem[64] + 64
        mem[_387 + _391 + _699 + _991 + 64] = 0
        mem[_387 + _391 + _699 + 32] = _991
        mem[64] = _387 + _391 + _699 + _991 + 64
        _1304 = sha3(mem[_387 + _391 + _699 + 64 len _991])
        if sha3(mem[_387 + _391 + _699 + 64 len _991]) % 59 > -3:
            revert with 'NH{q', 17
        if not (sha3(mem[_387 + _391 + _699 + 64 len _991]) % 59) + 2:
            return '0', 0
        s = 0
        idx = (sha3(mem[_387 + _391 + _699 + 64 len _991]) % 59) + 2
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
            idx = (_1304 % 59) + 2
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
            _1814 = mem[64]
            mem[mem[64]] = 32
            _1846 = mem[_387 + _391 + _699 + _991 + 64]
            mem[mem[64] + 32] = mem[_387 + _391 + _699 + _991 + 64]
            mem[mem[64] + 64 len ceil32(_1846)] = mem[_387 + _391 + _699 + _991 + 96 len ceil32(_1846)]
            if ceil32(_1846) <= _1846:
                return 32, mem[mem[64] + 32 len ceil32(_1846) + 32]
            mem[mem[64] + _1846 + 64] = 0
            return memory
              from mem[64]
               len _1814 + ceil32(_1846) + -mem[64] + 64
        mem[_387 + _391 + _699 + _991 + 96 len s] = call.data[calldata.size len s]
        t = s
        idx = (_1304 % 59) + 2
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
        if sha3(mem[_387 + _391 + _699 + 64 len _1003]) % 59 > -3:
            revert with 'NH{q', 17
        if not (sha3(mem[_387 + _391 + _699 + 64 len _1003]) % 59) + 2:
            return '0', 0
        s = 0
        idx = (sha3(mem[_387 + _391 + _699 + 64 len _1003]) % 59) + 2
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
            idx = (_1283 % 59) + 2
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
        idx = (_1283 % 59) + 2
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
    if sha3(mem[_387 + _391 + _699 + 64 len _1003]) % 59 > -3:
        revert with 'NH{q', 17
    if not (sha3(mem[_387 + _391 + _699 + 64 len _1003]) % 59) + 2:
        return '0', 0
    s = 0
    idx = (sha3(mem[_387 + _391 + _699 + 64 len _1003]) % 59) + 2
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
        idx = (_1307 % 59) + 2
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
        _1818 = mem[64]
        mem[mem[64]] = 32
        _1850 = mem[_387 + _391 + _699 + _1003 + 64]
        mem[mem[64] + 32] = mem[_387 + _391 + _699 + _1003 + 64]
        mem[mem[64] + 64 len ceil32(_1850)] = mem[_387 + _391 + _699 + _1003 + 96 len ceil32(_1850)]
        if ceil32(_1850) <= _1850:
            return 32, mem[mem[64] + 32 len ceil32(_1850) + 32]
        mem[mem[64] + _1850 + 64] = 0
        return memory
          from mem[64]
           len _1818 + ceil32(_1850) + -mem[64] + 64
    mem[_387 + _391 + _699 + _1003 + 96 len s] = call.data[calldata.size len s]
    t = s
    idx = (_1307 % 59) + 2
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
    _1819 = mem[64]
    mem[mem[64]] = 32
    _1851 = mem[_387 + _391 + _699 + _1003 + 64]
    mem[mem[64] + 32] = mem[_387 + _391 + _699 + _1003 + 64]
    mem[mem[64] + 64 len ceil32(_1851)] = mem[_387 + _391 + _699 + _1003 + 96 len ceil32(_1851)]
    if ceil32(_1851) <= _1851:
        return 32, mem[mem[64] + 32 len ceil32(_1851) + 32]
    mem[mem[64] + _1851 + 64] = 0
    return memory
      from mem[64]
       len _1819 + ceil32(_1851) + -mem[64] + 64
}



}
