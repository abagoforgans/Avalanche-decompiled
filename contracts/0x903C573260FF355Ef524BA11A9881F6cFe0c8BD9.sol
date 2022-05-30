contract main {




// =====================  Runtime code  =====================


#
#  - sub_9f2dbdab(?)
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
uint8 stor11; offset 160
address owner;
uint256 sub_b2c0ef0d;
uint256 sub_e02539c8;
mapping of struct sub_07549226;
mapping of struct stor15;
mapping of struct stor16;

function sub_07549226(?) {
    require calldata.size - 4 >= 32
    return sub_07549226[arg1].field_0, 
           sub_07549226[arg1].field_0,
           sub_07549226[arg1].field_0,
           sub_07549226[arg1].field_0,
           sub_07549226[arg1].field_32,
           sub_07549226[arg1].field_0,
           sub_07549226[arg1].field_0,
           sub_07549226[arg1].field_0,
           sub_07549226[arg1].field_0,
           sub_07549226[arg1].field_0,
           sub_07549226[arg1].field_0,
           sub_07549226[arg1].field_0,
           sub_07549226[arg1].field_256
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_27c28aba(?) {
    return sub_e02539c8
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
    return bool(stor11)
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

function sub_b2c0ef0d(?) {
    return sub_b2c0ef0d
}

function sub_e02539c8(?) {
    return sub_e02539c8
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

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
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
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) {
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

function name() {
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
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
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
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
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
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
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
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
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

function sub_216a6107(?) {
    require calldata.size - 4 >= 32
    if stor16[arg1].field_0:
        if stor16[arg1].field_0 == uint255(stor16[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor16[arg1].field_0:
            if stor16[arg1].field_0 == uint255(stor16[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor16[arg1].field_0):
                if 31 < uint255(stor16[arg1].field_0) * 0.5:
                    mem[128] = stor16[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor16[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor16[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16[arg1].field_0), data=mem[128 len ceil32(uint255(stor16[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor16[arg1].field_8
        else:
            if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                revert with 0, 34
            if stor16[arg1].field_1:
                if 31 < stor16[arg1].field_1:
                    mem[128] = stor16[arg1].field_0
                    idx = 128
                    s = 0
                    while stor16[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor16[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16[arg1].field_0), data=mem[128 len ceil32(uint255(stor16[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor16[arg1].field_8
        mem[ceil32(uint255(stor16[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor16[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor16[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor16[arg1].field_0) * 0.5) > uint255(stor16[arg1].field_0) * 0.5:
            mem[(uint255(stor16[arg1].field_0) * 0.5) + ceil32(uint255(stor16[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor16[arg1].field_0), data=mem[128 len ceil32(uint255(stor16[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor16[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor16[arg1].field_0) * 0.5)]), 
    if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
        revert with 0, 34
    if stor16[arg1].field_0:
        if stor16[arg1].field_0 == uint255(stor16[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor16[arg1].field_0):
            if 31 < uint255(stor16[arg1].field_0) * 0.5:
                mem[128] = stor16[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor16[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor16[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16[arg1].field_0, data=mem[128 len ceil32(stor16[arg1].field_1)])
            mem[128] = 256 * stor16[arg1].field_8
    else:
        if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
            revert with 0, 34
        if stor16[arg1].field_1:
            if 31 < stor16[arg1].field_1:
                mem[128] = stor16[arg1].field_0
                idx = 128
                s = 0
                while stor16[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor16[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16[arg1].field_0, data=mem[128 len ceil32(stor16[arg1].field_1)])
            mem[128] = 256 * stor16[arg1].field_8
    mem[ceil32(stor16[arg1].field_1) + 192 len ceil32(stor16[arg1].field_1)] = mem[128 len ceil32(stor16[arg1].field_1)]
    if ceil32(stor16[arg1].field_1) > stor16[arg1].field_1:
        mem[stor16[arg1].field_1 + ceil32(stor16[arg1].field_1) + 192] = 0
    return Array(len=stor16[arg1].field_0, data=mem[128 len ceil32(stor16[arg1].field_1)], mem[(2 * ceil32(stor16[arg1].field_1)) + 192 len 2 * ceil32(stor16[arg1].field_1)]), 
}

function sub_8934478b(?) {
    require calldata.size - 4 >= 32
    if stor15[arg1].field_0:
        if stor15[arg1].field_0 == uint255(stor15[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor15[arg1].field_0:
            if stor15[arg1].field_0 == uint255(stor15[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor15[arg1].field_0):
                if 31 < uint255(stor15[arg1].field_0) * 0.5:
                    mem[128] = stor15[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor15[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor15[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=mem[128 len ceil32(uint255(stor15[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor15[arg1].field_8
        else:
            if stor15[arg1].field_0 == stor15[arg1].field_1 < 32:
                revert with 0, 34
            if stor15[arg1].field_1:
                if 31 < stor15[arg1].field_1:
                    mem[128] = stor15[arg1].field_0
                    idx = 128
                    s = 0
                    while stor15[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor15[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=mem[128 len ceil32(uint255(stor15[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor15[arg1].field_8
        mem[ceil32(uint255(stor15[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor15[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor15[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor15[arg1].field_0) * 0.5) > uint255(stor15[arg1].field_0) * 0.5:
            mem[(uint255(stor15[arg1].field_0) * 0.5) + ceil32(uint255(stor15[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=mem[128 len ceil32(uint255(stor15[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor15[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor15[arg1].field_0) * 0.5)]), 
    if stor15[arg1].field_0 == stor15[arg1].field_1 < 32:
        revert with 0, 34
    if stor15[arg1].field_0:
        if stor15[arg1].field_0 == uint255(stor15[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor15[arg1].field_0):
            if 31 < uint255(stor15[arg1].field_0) * 0.5:
                mem[128] = stor15[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor15[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor15[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15[arg1].field_0, data=mem[128 len ceil32(stor15[arg1].field_1)])
            mem[128] = 256 * stor15[arg1].field_8
    else:
        if stor15[arg1].field_0 == stor15[arg1].field_1 < 32:
            revert with 0, 34
        if stor15[arg1].field_1:
            if 31 < stor15[arg1].field_1:
                mem[128] = stor15[arg1].field_0
                idx = 128
                s = 0
                while stor15[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor15[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15[arg1].field_0, data=mem[128 len ceil32(stor15[arg1].field_1)])
            mem[128] = 256 * stor15[arg1].field_8
    mem[ceil32(stor15[arg1].field_1) + 192 len ceil32(stor15[arg1].field_1)] = mem[128 len ceil32(stor15[arg1].field_1)]
    if ceil32(stor15[arg1].field_1) > stor15[arg1].field_1:
        mem[stor15[arg1].field_1 + ceil32(stor15[arg1].field_1) + 192] = 0
    return Array(len=stor15[arg1].field_0, data=mem[128 len ceil32(stor15[arg1].field_1)], mem[(2 * ceil32(stor15[arg1].field_1)) + 192 len 2 * ceil32(stor15[arg1].field_1)]), 
}

function mint() payable {
    if stor11:
        revert with 0, 'Pausable: paused'
    if sub_e02539c8 != msg.value:
        revert with 0, 'Incorrect Value'
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor12]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor12] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = sub_b2c0ef0d
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_b2c0ef0d
            stor7[stor12] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor12] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor12]
        stor9[stor12] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor12] = msg.sender
    emit Transfer(0, msg.sender, sub_b2c0ef0d);
    if not ext_code.size(msg.sender):
        if stor15[stor12].field_0:
            if stor15[stor12].field_0 == uint255(stor15[stor12].field_0) * 0.5 < 32:
                revert with 0, 34
            stor15[stor12].field_0 = 0
            stor15[stor12].field_1 = 15
            stor15[stor12].field_136 = 0x556e6e616d656420536f6c64696572
            idx = 0
            while (uint255(stor15[stor12].field_0) * 0.5) + 31 / 32 > idx:
                stor15[stor12][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if stor15[stor12].field_0 == stor15[stor12].field_1 < 32:
                revert with 0, 34
            stor15[stor12].field_0 = 0
            stor15[stor12].field_1 = 15
            stor15[stor12].field_136 = 0x556e6e616d656420536f6c64696572
            idx = 0
            while stor15[stor12].field_1 + 31 / 32 > idx:
                stor15[stor12][idx].field_0 = 0
                idx = idx + 1
                continue 
        mem[224 len 47] = 0xfe596f75206e65656420746f2061737369676e20796f757220476c61646961746f7227732061747472696275746573
        if stor16[stor12].field_0:
            if stor16[stor12].field_0 == uint255(stor16[stor12].field_0) * 0.5 < 32:
                revert with 0, 34
            stor16[stor12].field_0 = 95
            s = 0
            idx = 224
            while 271 > idx:
                stor16[stor12][s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 2
            while (uint255(stor16[stor12].field_0) * 0.5) + 31 / 32 > idx:
                stor16[stor12][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if stor16[stor12].field_0 == stor16[stor12].field_1 < 32:
                revert with 0, 34
            stor16[stor12].field_0 = 95
            s = 0
            idx = 224
            while 271 > idx:
                stor16[stor12][s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 2
            while stor16[stor12].field_1 + 31 / 32 > idx:
                stor16[stor12][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        mem[228] = 128
        mem[260] = 0
        mem[292 len 0] = None
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, sub_b2c0ef0d, 128, 0
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
        if stor15[stor12].field_0:
            if stor15[stor12].field_0 == uint255(stor15[stor12].field_0) * 0.5 < 32:
                revert with 0, 34
            stor15[stor12].field_0 = 0
            stor15[stor12].field_1 = 15
            stor15[stor12].field_136 = 0x556e6e616d656420536f6c64696572
            idx = 0
            while (uint255(stor15[stor12].field_0) * 0.5) + 31 / 32 > idx:
                stor15[stor12][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if stor15[stor12].field_0 == stor15[stor12].field_1 < 32:
                revert with 0, 34
            stor15[stor12].field_0 = 0
            stor15[stor12].field_1 = 15
            stor15[stor12].field_136 = 0x556e6e616d656420536f6c64696572
            idx = 0
            while stor15[stor12].field_1 + 31 / 32 > idx:
                stor15[stor12][idx].field_0 = 0
                idx = idx + 1
                continue 
        mem[ceil32(return_data.size) + 224 len 47] = 0xfe596f75206e65656420746f2061737369676e20796f757220476c61646961746f7227732061747472696275746573
        if stor16[stor12].field_0:
            if stor16[stor12].field_0 == uint255(stor16[stor12].field_0) * 0.5 < 32:
                revert with 0, 34
            stor16[stor12].field_0 = 95
            s = 0
            idx = ceil32(return_data.size) + 224
            while ceil32(return_data.size) + 271 > idx:
                stor16[stor12][s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 2
            while (uint255(stor16[stor12].field_0) * 0.5) + 31 / 32 > idx:
                stor16[stor12][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if stor16[stor12].field_0 == stor16[stor12].field_1 < 32:
                revert with 0, 34
            stor16[stor12].field_0 = 95
            s = 0
            idx = ceil32(return_data.size) + 224
            while ceil32(return_data.size) + 271 > idx:
                stor16[stor12][s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 2
            while stor16[stor12].field_1 + 31 / 32 > idx:
                stor16[stor12][idx].field_0 = 0
                idx = idx + 1
                continue 
    if block.number > -2:
        revert with 0, 17
    sub_07549226[stor12].field_256 = block.number + 1
    if sub_b2c0ef0d == -1:
        revert with 0, 17
    sub_b2c0ef0d++
}



}
