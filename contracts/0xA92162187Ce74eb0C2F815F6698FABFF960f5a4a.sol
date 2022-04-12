contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of struct stor6;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor8;
array of uint256 tokenByIndex;
mapping of uint256 stor10;
address owner;
uint256 sub_901d331d;
uint256 stor13;
uint256 stor14;
uint256 MAX_SUPPLY;
uint256 sub_6a1c6e78;
uint8 enabled;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function enabled() {
    return bool(enabled)
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

function MAX_SUPPLY() {
    return MAX_SUPPLY
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function sub_6a1c6e78(?) {
    return sub_6a1c6e78
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

function sub_901d331d(?) {
    return sub_901d331d
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

function enable() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    enabled = 1
}

function getBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return eth.balance(this.address)
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
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
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

function sub_23bfd519(?) {
    mem[256 len 96] = 0xfe68747470733a2f2f736961736b792e6e65742f5f4134482d6b3856386b344b57495f5073425547765f7975467267696d386f7a354f68305f304b5054344c326d51, mem[194 len 30]
    mem[322] = 'meta.json'
    mem[331] = 32
    mem[363] = mem[224]
    mem[395 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
    if ceil32(mem[224]) > mem[224]:
        mem[mem[224] + 395] = 0
    return Array(len=mem[224], data=mem[395 len ceil32(mem[224])])
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
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor8[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor3[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
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
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor8[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor3[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
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
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor8[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor3[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
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

function sub_241fabad(?) payable {
    if sub_901d331d >= MAX_SUPPLY:
        revert with 0, 'All triangles minted'
    if owner == msg.sender:
        if not enabled:
            revert with 0, 'Not enabled'
        mem[96] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor12]:
            revert with 0, 'ERC721: token already minted'
        stor10[stor12] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = sub_901d331d
        if msg.sender:
            if not msg.sender:
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_901d331d
                ownerOf[stor12] = msg.sender
                emit Transfer(0, msg.sender, sub_901d331d);
                if not ext_code.size(msg.sender):
                    if 1 > !sub_901d331d:
                        revert with 0, 17
                    if not sub_901d331d + 1:
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if stor6[stor12].field_0:
                            if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor6[stor12].field_0 = 0
                            stor6[stor12].field_1 = 6
                            stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                            idx = 0
                            while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                stor6[stor12][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                revert with 0, 34
                            stor6[stor12].field_0 = 0
                            stor6[stor12].field_1 = 6
                            stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                            idx = 0
                            while stor6[stor12].field_1 + 31 / 32 > idx:
                                stor6[stor12][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        s = 0
                        idx = sub_901d331d + 1
                        while idx:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s > test266151307():
                            revert with 0, 65
                        mem[128] = s
                        mem[64] = ceil32(s) + 160
                        if not s:
                            t = s
                            idx = sub_901d331d + 1
                            while idx:
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if not t:
                                    revert with 0, 17
                                if t - 1 >= mem[128]:
                                    revert with 0, 50
                                mem[t + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            _6425 = mem[128]
                            mem[mem[64] + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                            mem[mem[64] + _6425 + 32] = '.json'
                            if ceil32(_6425) <= _6425:
                                _13001 = mem[64]
                                mem[mem[64]] = _6425 + 5
                                mem[64] = mem[64] + _6425 + 37
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = sub_901d331d
                                mem[32] = 6
                                _13050 = mem[_13001]
                                if stor6[stor12].field_0:
                                    if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if _13050:
                                        stor6[stor12][].field_0 = Array(len=_13050, data=mem[_13001 + 32 len _13050])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                        revert with 0, 34
                                    if _13050:
                                        stor6[stor12][].field_0 = Array(len=_13050, data=mem[_13001 + 32 len _13050])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while stor6[stor12].field_1 + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                _13002 = mem[64]
                                mem[mem[64]] = _6425 + 5
                                mem[64] = mem[64] + _6425 + 37
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = sub_901d331d
                                mem[32] = 6
                                _13053 = mem[_13002]
                                if stor6[stor12].field_0:
                                    if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if _13053:
                                        stor6[stor12][].field_0 = Array(len=_13053, data=mem[_13002 + 32 len _13053])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                        revert with 0, 34
                                    if _13053:
                                        stor6[stor12][].field_0 = Array(len=_13053, data=mem[_13002 + 32 len _13053])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while stor6[stor12].field_1 + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            mem[160 len s] = call.data[calldata.size len s]
                            t = s
                            idx = sub_901d331d + 1
                            while idx:
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if not t:
                                    revert with 0, 17
                                if t - 1 >= mem[128]:
                                    revert with 0, 50
                                mem[t + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            _6426 = mem[128]
                            mem[mem[64] + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                            mem[mem[64] + _6426 + 32] = '.json'
                            if ceil32(_6426) <= _6426:
                                _13003 = mem[64]
                                mem[mem[64]] = _6426 + 5
                                mem[64] = mem[64] + _6426 + 37
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = sub_901d331d
                                mem[32] = 6
                                _13056 = mem[_13003]
                                if stor6[stor12].field_0:
                                    if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if _13056:
                                        stor6[stor12][].field_0 = Array(len=_13056, data=mem[_13003 + 32 len _13056])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                        revert with 0, 34
                                    if _13056:
                                        stor6[stor12][].field_0 = Array(len=_13056, data=mem[_13003 + 32 len _13056])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while stor6[stor12].field_1 + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                _13004 = mem[64]
                                mem[mem[64]] = _6426 + 5
                                mem[64] = mem[64] + _6426 + 37
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = sub_901d331d
                                mem[32] = 6
                                _13059 = mem[_13004]
                                if stor6[stor12].field_0:
                                    if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if _13059:
                                        stor6[stor12][].field_0 = Array(len=_13059, data=mem[_13004 + 32 len _13059])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                        revert with 0, 34
                                    if _13059:
                                        stor6[stor12][].field_0 = Array(len=_13059, data=mem[_13004 + 32 len _13059])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while stor6[stor12].field_1 + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                else:
                    mem[132] = msg.sender
                    mem[164] = 0
                    mem[196] = sub_901d331d
                    mem[228] = 128
                    mem[260] = 0
                    mem[292 len 0] = None
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), 0, sub_901d331d, 128, 0
                    mem[128] = ext_call.return_data[0]
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
                    if 1 > !sub_901d331d:
                        revert with 0, 17
                    if not sub_901d331d + 1:
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if stor6[stor12].field_0:
                            if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor6[stor12].field_0 = 0
                            stor6[stor12].field_1 = 6
                            stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                            idx = 0
                            while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                stor6[stor12][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                revert with 0, 34
                            stor6[stor12].field_0 = 0
                            stor6[stor12].field_1 = 6
                            stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                            idx = 0
                            while stor6[stor12].field_1 + 31 / 32 > idx:
                                stor6[stor12][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        s = 0
                        idx = sub_901d331d + 1
                        while idx:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s > test266151307():
                            revert with 0, 65
                        mem[ceil32(return_data.size) + 128] = s
                        if s:
                            mem[ceil32(return_data.size) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = sub_901d331d + 1
                        while idx:
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if not t:
                                revert with 0, 17
                            if t - 1 >= mem[ceil32(return_data.size) + 128]:
                                revert with 0, 50
                            mem[t + ceil32(return_data.size) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(return_data.size) + ceil32(s) + 192 len ceil32(mem[ceil32(return_data.size) + 128])] = mem[ceil32(return_data.size) + 160 len ceil32(mem[ceil32(return_data.size) + 128])]
                        mem[ceil32(return_data.size) + ceil32(s) + mem[ceil32(return_data.size) + 128] + 192] = '.json'
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if stor6[stor12].field_0:
                            if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if mem[ceil32(return_data.size) + 128] + 5:
                                stor6[stor12][].field_0 = Array(len=mem[ceil32(return_data.size) + 128] + 5, data=mem[ceil32(return_data.size) + ceil32(s) + 192 len mem[ceil32(return_data.size) + 128] + 5])
                            else:
                                stor6[stor12].field_0 = 0
                                idx = 0
                                while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                    stor6[stor12][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                revert with 0, 34
                            if mem[ceil32(return_data.size) + 128] + 5:
                                stor6[stor12][].field_0 = Array(len=mem[ceil32(return_data.size) + 128] + 5, data=mem[ceil32(return_data.size) + ceil32(s) + 192 len mem[ceil32(return_data.size) + 128] + 5])
                            else:
                                stor6[stor12].field_0 = 0
                                idx = 0
                                while stor6[stor12].field_1 + 31 / 32 > idx:
                                    stor6[stor12][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_901d331d
                stor8[stor12] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_901d331d
                ownerOf[stor12] = msg.sender
                emit Transfer(0, msg.sender, sub_901d331d);
                if not ext_code.size(msg.sender):
                    if 1 > !sub_901d331d:
                        revert with 0, 17
                    if not sub_901d331d + 1:
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if stor6[stor12].field_0:
                            if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor6[stor12].field_0 = 0
                            stor6[stor12].field_1 = 6
                            stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                            idx = 0
                            while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                stor6[stor12][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                revert with 0, 34
                            stor6[stor12].field_0 = 0
                            stor6[stor12].field_1 = 6
                            stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                            idx = 0
                            while stor6[stor12].field_1 + 31 / 32 > idx:
                                stor6[stor12][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        s = 0
                        idx = sub_901d331d + 1
                        while idx:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s > test266151307():
                            revert with 0, 65
                        mem[128] = s
                        mem[64] = ceil32(s) + 160
                        if not s:
                            t = s
                            idx = sub_901d331d + 1
                            while idx:
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if not t:
                                    revert with 0, 17
                                if t - 1 >= mem[128]:
                                    revert with 0, 50
                                mem[t + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            _6427 = mem[128]
                            mem[mem[64] + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                            mem[mem[64] + _6427 + 32] = '.json'
                            if ceil32(_6427) <= _6427:
                                _13005 = mem[64]
                                mem[mem[64]] = _6427 + 5
                                mem[64] = mem[64] + _6427 + 37
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = sub_901d331d
                                mem[32] = 6
                                _13066 = mem[_13005]
                                if stor6[stor12].field_0:
                                    if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if _13066:
                                        stor6[stor12][].field_0 = Array(len=_13066, data=mem[_13005 + 32 len _13066])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                        revert with 0, 34
                                    if _13066:
                                        stor6[stor12][].field_0 = Array(len=_13066, data=mem[_13005 + 32 len _13066])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while stor6[stor12].field_1 + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                _13006 = mem[64]
                                mem[mem[64]] = _6427 + 5
                                mem[64] = mem[64] + _6427 + 37
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = sub_901d331d
                                mem[32] = 6
                                _13069 = mem[_13006]
                                if stor6[stor12].field_0:
                                    if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if _13069:
                                        stor6[stor12][].field_0 = Array(len=_13069, data=mem[_13006 + 32 len _13069])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                        revert with 0, 34
                                    if _13069:
                                        stor6[stor12][].field_0 = Array(len=_13069, data=mem[_13006 + 32 len _13069])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while stor6[stor12].field_1 + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            mem[160 len s] = call.data[calldata.size len s]
                            t = s
                            idx = sub_901d331d + 1
                            while idx:
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if not t:
                                    revert with 0, 17
                                if t - 1 >= mem[128]:
                                    revert with 0, 50
                                mem[t + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            _6428 = mem[128]
                            mem[mem[64] + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                            mem[mem[64] + _6428 + 32] = '.json'
                            if ceil32(_6428) <= _6428:
                                _13007 = mem[64]
                                mem[mem[64]] = _6428 + 5
                                mem[64] = mem[64] + _6428 + 37
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = sub_901d331d
                                mem[32] = 6
                                _13072 = mem[_13007]
                                if stor6[stor12].field_0:
                                    if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if _13072:
                                        stor6[stor12][].field_0 = Array(len=_13072, data=mem[_13007 + 32 len _13072])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                        revert with 0, 34
                                    if _13072:
                                        stor6[stor12][].field_0 = Array(len=_13072, data=mem[_13007 + 32 len _13072])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while stor6[stor12].field_1 + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                _13008 = mem[64]
                                mem[mem[64]] = _6428 + 5
                                mem[64] = mem[64] + _6428 + 37
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = sub_901d331d
                                mem[32] = 6
                                _13075 = mem[_13008]
                                if stor6[stor12].field_0:
                                    if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if _13075:
                                        stor6[stor12][].field_0 = Array(len=_13075, data=mem[_13008 + 32 len _13075])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                        revert with 0, 34
                                    if _13075:
                                        stor6[stor12][].field_0 = Array(len=_13075, data=mem[_13008 + 32 len _13075])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while stor6[stor12].field_1 + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                else:
                    mem[132] = msg.sender
                    mem[164] = 0
                    mem[196] = sub_901d331d
                    mem[228] = 128
                    mem[260] = 0
                    mem[292 len 0] = None
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), 0, sub_901d331d, 128, 0
                    mem[128] = ext_call.return_data[0]
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
                    if 1 > !sub_901d331d:
                        revert with 0, 17
                    if not sub_901d331d + 1:
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if stor6[stor12].field_0:
                            if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor6[stor12].field_0 = 0
                            stor6[stor12].field_1 = 6
                            stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                            idx = 0
                            while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                stor6[stor12][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                revert with 0, 34
                            stor6[stor12].field_0 = 0
                            stor6[stor12].field_1 = 6
                            stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                            idx = 0
                            while stor6[stor12].field_1 + 31 / 32 > idx:
                                stor6[stor12][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        s = 0
                        idx = sub_901d331d + 1
                        while idx:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s > test266151307():
                            revert with 0, 65
                        mem[ceil32(return_data.size) + 128] = s
                        if s:
                            mem[ceil32(return_data.size) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = sub_901d331d + 1
                        while idx:
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if not t:
                                revert with 0, 17
                            if t - 1 >= mem[ceil32(return_data.size) + 128]:
                                revert with 0, 50
                            mem[t + ceil32(return_data.size) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(return_data.size) + ceil32(s) + 192 len ceil32(mem[ceil32(return_data.size) + 128])] = mem[ceil32(return_data.size) + 160 len ceil32(mem[ceil32(return_data.size) + 128])]
                        mem[ceil32(return_data.size) + ceil32(s) + mem[ceil32(return_data.size) + 128] + 192] = '.json'
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if stor6[stor12].field_0:
                            if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if mem[ceil32(return_data.size) + 128] + 5:
                                stor6[stor12][].field_0 = Array(len=mem[ceil32(return_data.size) + 128] + 5, data=mem[ceil32(return_data.size) + ceil32(s) + 192 len mem[ceil32(return_data.size) + 128] + 5])
                            else:
                                stor6[stor12].field_0 = 0
                                idx = 0
                                while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                    stor6[stor12][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                revert with 0, 34
                            if mem[ceil32(return_data.size) + 128] + 5:
                                stor6[stor12][].field_0 = Array(len=mem[ceil32(return_data.size) + 128] + 5, data=mem[ceil32(return_data.size) + ceil32(s) + 192 len mem[ceil32(return_data.size) + 128] + 5])
                            else:
                                stor6[stor12].field_0 = 0
                                idx = 0
                                while stor6[stor12].field_1 + 31 / 32 > idx:
                                    stor6[stor12][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor10[stor12] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor10[stor12]] = tokenByIndex[tokenByIndex.length]
            stor10[stor9[stor9.length]] = stor10[stor12]
            stor10[stor12] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = sub_901d331d
            ownerOf[stor12] = msg.sender
            emit Transfer(0, msg.sender, sub_901d331d);
            if not ext_code.size(msg.sender):
                if 1 > !sub_901d331d:
                    revert with 0, 17
                if not sub_901d331d + 1:
                    if not ownerOf[stor12]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    if stor6[stor12].field_0:
                        if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                            revert with 0, 34
                        stor6[stor12].field_0 = 0
                        stor6[stor12].field_1 = 6
                        stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                        idx = 0
                        while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                            stor6[stor12][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                            revert with 0, 34
                        stor6[stor12].field_0 = 0
                        stor6[stor12].field_1 = 6
                        stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                        idx = 0
                        while stor6[stor12].field_1 + 31 / 32 > idx:
                            stor6[stor12][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    s = 0
                    idx = sub_901d331d + 1
                    while idx:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 0, 65
                    mem[128] = s
                    mem[64] = ceil32(s) + 160
                    if not s:
                        t = s
                        idx = sub_901d331d + 1
                        while idx:
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if not t:
                                revert with 0, 17
                            if t - 1 >= mem[128]:
                                revert with 0, 50
                            mem[t + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        _6429 = mem[128]
                        mem[mem[64] + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                        mem[mem[64] + _6429 + 32] = '.json'
                        if ceil32(_6429) <= _6429:
                            _13009 = mem[64]
                            mem[mem[64]] = _6429 + 5
                            mem[64] = mem[64] + _6429 + 37
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = sub_901d331d
                            mem[32] = 6
                            _13082 = mem[_13009]
                            if stor6[stor12].field_0:
                                if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if _13082:
                                    stor6[stor12][].field_0 = Array(len=_13082, data=mem[_13009 + 32 len _13082])
                                else:
                                    stor6[stor12].field_0 = 0
                                    idx = 0
                                    while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                        stor6[stor12][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                    revert with 0, 34
                                if _13082:
                                    stor6[stor12][].field_0 = Array(len=_13082, data=mem[_13009 + 32 len _13082])
                                else:
                                    stor6[stor12].field_0 = 0
                                    idx = 0
                                    while stor6[stor12].field_1 + 31 / 32 > idx:
                                        stor6[stor12][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            _13010 = mem[64]
                            mem[mem[64]] = _6429 + 5
                            mem[64] = mem[64] + _6429 + 37
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = sub_901d331d
                            mem[32] = 6
                            _13085 = mem[_13010]
                            if stor6[stor12].field_0:
                                if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if _13085:
                                    stor6[stor12][].field_0 = Array(len=_13085, data=mem[_13010 + 32 len _13085])
                                else:
                                    stor6[stor12].field_0 = 0
                                    idx = 0
                                    while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                        stor6[stor12][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                    revert with 0, 34
                                if _13085:
                                    stor6[stor12][].field_0 = Array(len=_13085, data=mem[_13010 + 32 len _13085])
                                else:
                                    stor6[stor12].field_0 = 0
                                    idx = 0
                                    while stor6[stor12].field_1 + 31 / 32 > idx:
                                        stor6[stor12][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = sub_901d331d + 1
                        while idx:
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if not t:
                                revert with 0, 17
                            if t - 1 >= mem[128]:
                                revert with 0, 50
                            mem[t + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        _6430 = mem[128]
                        mem[mem[64] + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                        mem[mem[64] + _6430 + 32] = '.json'
                        if ceil32(_6430) <= _6430:
                            _13011 = mem[64]
                            mem[mem[64]] = _6430 + 5
                            mem[64] = mem[64] + _6430 + 37
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = sub_901d331d
                            mem[32] = 6
                            _13088 = mem[_13011]
                            if stor6[stor12].field_0:
                                if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if _13088:
                                    stor6[stor12][].field_0 = Array(len=_13088, data=mem[_13011 + 32 len _13088])
                                else:
                                    stor6[stor12].field_0 = 0
                                    idx = 0
                                    while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                        stor6[stor12][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                    revert with 0, 34
                                if _13088:
                                    stor6[stor12][].field_0 = Array(len=_13088, data=mem[_13011 + 32 len _13088])
                                else:
                                    stor6[stor12].field_0 = 0
                                    idx = 0
                                    while stor6[stor12].field_1 + 31 / 32 > idx:
                                        stor6[stor12][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            _13012 = mem[64]
                            mem[mem[64]] = _6430 + 5
                            mem[64] = mem[64] + _6430 + 37
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = sub_901d331d
                            mem[32] = 6
                            _13091 = mem[_13012]
                            if stor6[stor12].field_0:
                                if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if _13091:
                                    stor6[stor12][].field_0 = Array(len=_13091, data=mem[_13012 + 32 len _13091])
                                else:
                                    stor6[stor12].field_0 = 0
                                    idx = 0
                                    while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                        stor6[stor12][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                    revert with 0, 34
                                if _13091:
                                    stor6[stor12][].field_0 = Array(len=_13091, data=mem[_13012 + 32 len _13091])
                                else:
                                    stor6[stor12].field_0 = 0
                                    idx = 0
                                    while stor6[stor12].field_1 + 31 / 32 > idx:
                                        stor6[stor12][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
            else:
                mem[132] = msg.sender
                mem[164] = 0
                mem[196] = sub_901d331d
                mem[228] = 128
                mem[260] = 0
                mem[292 len 0] = None
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), 0, sub_901d331d, 128, 0
                mem[128] = ext_call.return_data[0]
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
                if 1 > !sub_901d331d:
                    revert with 0, 17
                if not sub_901d331d + 1:
                    if not ownerOf[stor12]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    if stor6[stor12].field_0:
                        if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                            revert with 0, 34
                        stor6[stor12].field_0 = 0
                        stor6[stor12].field_1 = 6
                        stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                        idx = 0
                        while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                            stor6[stor12][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                            revert with 0, 34
                        stor6[stor12].field_0 = 0
                        stor6[stor12].field_1 = 6
                        stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                        idx = 0
                        while stor6[stor12].field_1 + 31 / 32 > idx:
                            stor6[stor12][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    s = 0
                    idx = sub_901d331d + 1
                    while idx:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 0, 65
                    mem[ceil32(return_data.size) + 128] = s
                    if s:
                        mem[ceil32(return_data.size) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = sub_901d331d + 1
                    while idx:
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if not t:
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(return_data.size) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(return_data.size) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(return_data.size) + ceil32(s) + 192 len ceil32(mem[ceil32(return_data.size) + 128])] = mem[ceil32(return_data.size) + 160 len ceil32(mem[ceil32(return_data.size) + 128])]
                    mem[ceil32(return_data.size) + ceil32(s) + mem[ceil32(return_data.size) + 128] + 192] = '.json'
                    if not ownerOf[stor12]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    if stor6[stor12].field_0:
                        if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if mem[ceil32(return_data.size) + 128] + 5:
                            stor6[stor12][].field_0 = Array(len=mem[ceil32(return_data.size) + 128] + 5, data=mem[ceil32(return_data.size) + ceil32(s) + 192 len mem[ceil32(return_data.size) + 128] + 5])
                        else:
                            stor6[stor12].field_0 = 0
                            idx = 0
                            while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                stor6[stor12][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                            revert with 0, 34
                        if mem[ceil32(return_data.size) + 128] + 5:
                            stor6[stor12][].field_0 = Array(len=mem[ceil32(return_data.size) + 128] + 5, data=mem[ceil32(return_data.size) + ceil32(s) + 192 len mem[ceil32(return_data.size) + 128] + 5])
                        else:
                            stor6[stor12].field_0 = 0
                            idx = 0
                            while stor6[stor12].field_1 + 31 / 32 > idx:
                                stor6[stor12][idx].field_0 = 0
                                idx = idx + 1
                                continue 
    else:
        if MAX_SUPPLY < sub_6a1c6e78:
            revert with 0, 17
        if stor13 >= MAX_SUPPLY - sub_6a1c6e78:
            revert with 0, 'All public triangles minted'
        if not enabled:
            revert with 0, 'Not enabled'
        mem[96] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor12]:
            revert with 0, 'ERC721: token already minted'
        stor10[stor12] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = sub_901d331d
        if msg.sender:
            if not msg.sender:
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_901d331d
                ownerOf[stor12] = msg.sender
                emit Transfer(0, msg.sender, sub_901d331d);
                if not ext_code.size(msg.sender):
                    if 1 > !sub_901d331d:
                        revert with 0, 17
                    if not sub_901d331d + 1:
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if stor6[stor12].field_0:
                            if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor6[stor12].field_0 = 0
                            stor6[stor12].field_1 = 6
                            stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                            idx = 0
                            while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                stor6[stor12][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                revert with 0, 34
                            stor6[stor12].field_0 = 0
                            stor6[stor12].field_1 = 6
                            stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                            idx = 0
                            while stor6[stor12].field_1 + 31 / 32 > idx:
                                stor6[stor12][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        s = 0
                        idx = sub_901d331d + 1
                        while idx:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s > test266151307():
                            revert with 0, 65
                        mem[128] = s
                        mem[64] = ceil32(s) + 160
                        if not s:
                            t = s
                            idx = sub_901d331d + 1
                            while idx:
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if not t:
                                    revert with 0, 17
                                if t - 1 >= mem[128]:
                                    revert with 0, 50
                                mem[t + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            _6431 = mem[128]
                            mem[mem[64] + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                            mem[mem[64] + _6431 + 32] = '.json'
                            if ceil32(_6431) <= _6431:
                                _13013 = mem[64]
                                mem[mem[64]] = _6431 + 5
                                mem[64] = mem[64] + _6431 + 37
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = sub_901d331d
                                mem[32] = 6
                                _13098 = mem[_13013]
                                if stor6[stor12].field_0:
                                    if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if _13098:
                                        stor6[stor12][].field_0 = Array(len=_13098, data=mem[_13013 + 32 len _13098])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                        revert with 0, 34
                                    if _13098:
                                        stor6[stor12][].field_0 = Array(len=_13098, data=mem[_13013 + 32 len _13098])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while stor6[stor12].field_1 + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                _13014 = mem[64]
                                mem[mem[64]] = _6431 + 5
                                mem[64] = mem[64] + _6431 + 37
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = sub_901d331d
                                mem[32] = 6
                                _13101 = mem[_13014]
                                if stor6[stor12].field_0:
                                    if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if _13101:
                                        stor6[stor12][].field_0 = Array(len=_13101, data=mem[_13014 + 32 len _13101])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                        revert with 0, 34
                                    if _13101:
                                        stor6[stor12][].field_0 = Array(len=_13101, data=mem[_13014 + 32 len _13101])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while stor6[stor12].field_1 + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            mem[160 len s] = call.data[calldata.size len s]
                            t = s
                            idx = sub_901d331d + 1
                            while idx:
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if not t:
                                    revert with 0, 17
                                if t - 1 >= mem[128]:
                                    revert with 0, 50
                                mem[t + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            _6432 = mem[128]
                            mem[mem[64] + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                            mem[mem[64] + _6432 + 32] = '.json'
                            if ceil32(_6432) <= _6432:
                                _13015 = mem[64]
                                mem[mem[64]] = _6432 + 5
                                mem[64] = mem[64] + _6432 + 37
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = sub_901d331d
                                mem[32] = 6
                                _13104 = mem[_13015]
                                if stor6[stor12].field_0:
                                    if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if _13104:
                                        stor6[stor12][].field_0 = Array(len=_13104, data=mem[_13015 + 32 len _13104])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                        revert with 0, 34
                                    if _13104:
                                        stor6[stor12][].field_0 = Array(len=_13104, data=mem[_13015 + 32 len _13104])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while stor6[stor12].field_1 + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                _13016 = mem[64]
                                mem[mem[64]] = _6432 + 5
                                mem[64] = mem[64] + _6432 + 37
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = sub_901d331d
                                mem[32] = 6
                                _13107 = mem[_13016]
                                if stor6[stor12].field_0:
                                    if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if _13107:
                                        stor6[stor12][].field_0 = Array(len=_13107, data=mem[_13016 + 32 len _13107])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                        revert with 0, 34
                                    if _13107:
                                        stor6[stor12][].field_0 = Array(len=_13107, data=mem[_13016 + 32 len _13107])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while stor6[stor12].field_1 + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                else:
                    mem[132] = msg.sender
                    mem[164] = 0
                    mem[196] = sub_901d331d
                    mem[228] = 128
                    mem[260] = 0
                    mem[292 len 0] = None
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), 0, sub_901d331d, 128, 0
                    mem[128] = ext_call.return_data[0]
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
                    if 1 > !sub_901d331d:
                        revert with 0, 17
                    if not sub_901d331d + 1:
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if stor6[stor12].field_0:
                            if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor6[stor12].field_0 = 0
                            stor6[stor12].field_1 = 6
                            stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                            idx = 0
                            while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                stor6[stor12][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                revert with 0, 34
                            stor6[stor12].field_0 = 0
                            stor6[stor12].field_1 = 6
                            stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                            idx = 0
                            while stor6[stor12].field_1 + 31 / 32 > idx:
                                stor6[stor12][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        s = 0
                        idx = sub_901d331d + 1
                        while idx:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s > test266151307():
                            revert with 0, 65
                        mem[ceil32(return_data.size) + 128] = s
                        if s:
                            mem[ceil32(return_data.size) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = sub_901d331d + 1
                        while idx:
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if not t:
                                revert with 0, 17
                            if t - 1 >= mem[ceil32(return_data.size) + 128]:
                                revert with 0, 50
                            mem[t + ceil32(return_data.size) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(return_data.size) + ceil32(s) + 192 len ceil32(mem[ceil32(return_data.size) + 128])] = mem[ceil32(return_data.size) + 160 len ceil32(mem[ceil32(return_data.size) + 128])]
                        mem[ceil32(return_data.size) + ceil32(s) + mem[ceil32(return_data.size) + 128] + 192] = '.json'
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if stor6[stor12].field_0:
                            if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if mem[ceil32(return_data.size) + 128] + 5:
                                stor6[stor12][].field_0 = Array(len=mem[ceil32(return_data.size) + 128] + 5, data=mem[ceil32(return_data.size) + ceil32(s) + 192 len mem[ceil32(return_data.size) + 128] + 5])
                            else:
                                stor6[stor12].field_0 = 0
                                idx = 0
                                while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                    stor6[stor12][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                revert with 0, 34
                            if mem[ceil32(return_data.size) + 128] + 5:
                                stor6[stor12][].field_0 = Array(len=mem[ceil32(return_data.size) + 128] + 5, data=mem[ceil32(return_data.size) + ceil32(s) + 192 len mem[ceil32(return_data.size) + 128] + 5])
                            else:
                                stor6[stor12].field_0 = 0
                                idx = 0
                                while stor6[stor12].field_1 + 31 / 32 > idx:
                                    stor6[stor12][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_901d331d
                stor8[stor12] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_901d331d
                ownerOf[stor12] = msg.sender
                emit Transfer(0, msg.sender, sub_901d331d);
                if not ext_code.size(msg.sender):
                    if 1 > !sub_901d331d:
                        revert with 0, 17
                    if not sub_901d331d + 1:
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if stor6[stor12].field_0:
                            if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor6[stor12].field_0 = 0
                            stor6[stor12].field_1 = 6
                            stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                            idx = 0
                            while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                stor6[stor12][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                revert with 0, 34
                            stor6[stor12].field_0 = 0
                            stor6[stor12].field_1 = 6
                            stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                            idx = 0
                            while stor6[stor12].field_1 + 31 / 32 > idx:
                                stor6[stor12][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        s = 0
                        idx = sub_901d331d + 1
                        while idx:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s > test266151307():
                            revert with 0, 65
                        mem[128] = s
                        mem[64] = ceil32(s) + 160
                        if not s:
                            t = s
                            idx = sub_901d331d + 1
                            while idx:
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if not t:
                                    revert with 0, 17
                                if t - 1 >= mem[128]:
                                    revert with 0, 50
                                mem[t + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            _6433 = mem[128]
                            mem[mem[64] + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                            mem[mem[64] + _6433 + 32] = '.json'
                            if ceil32(_6433) <= _6433:
                                _13017 = mem[64]
                                mem[mem[64]] = _6433 + 5
                                mem[64] = mem[64] + _6433 + 37
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = sub_901d331d
                                mem[32] = 6
                                _13114 = mem[_13017]
                                if stor6[stor12].field_0:
                                    if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if _13114:
                                        stor6[stor12][].field_0 = Array(len=_13114, data=mem[_13017 + 32 len _13114])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                        revert with 0, 34
                                    if _13114:
                                        stor6[stor12][].field_0 = Array(len=_13114, data=mem[_13017 + 32 len _13114])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while stor6[stor12].field_1 + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                _13018 = mem[64]
                                mem[mem[64]] = _6433 + 5
                                mem[64] = mem[64] + _6433 + 37
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = sub_901d331d
                                mem[32] = 6
                                _13117 = mem[_13018]
                                if stor6[stor12].field_0:
                                    if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if _13117:
                                        stor6[stor12][].field_0 = Array(len=_13117, data=mem[_13018 + 32 len _13117])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                        revert with 0, 34
                                    if _13117:
                                        stor6[stor12][].field_0 = Array(len=_13117, data=mem[_13018 + 32 len _13117])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while stor6[stor12].field_1 + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            mem[160 len s] = call.data[calldata.size len s]
                            t = s
                            idx = sub_901d331d + 1
                            while idx:
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if not t:
                                    revert with 0, 17
                                if t - 1 >= mem[128]:
                                    revert with 0, 50
                                mem[t + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            _6434 = mem[128]
                            mem[mem[64] + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                            mem[mem[64] + _6434 + 32] = '.json'
                            if ceil32(_6434) <= _6434:
                                _13019 = mem[64]
                                mem[mem[64]] = _6434 + 5
                                mem[64] = mem[64] + _6434 + 37
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = sub_901d331d
                                mem[32] = 6
                                _13120 = mem[_13019]
                                if stor6[stor12].field_0:
                                    if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if _13120:
                                        stor6[stor12][].field_0 = Array(len=_13120, data=mem[_13019 + 32 len _13120])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                        revert with 0, 34
                                    if _13120:
                                        stor6[stor12][].field_0 = Array(len=_13120, data=mem[_13019 + 32 len _13120])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while stor6[stor12].field_1 + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                _13020 = mem[64]
                                mem[mem[64]] = _6434 + 5
                                mem[64] = mem[64] + _6434 + 37
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = sub_901d331d
                                mem[32] = 6
                                _13123 = mem[_13020]
                                if stor6[stor12].field_0:
                                    if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if _13123:
                                        stor6[stor12][].field_0 = Array(len=_13123, data=mem[_13020 + 32 len _13123])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                        revert with 0, 34
                                    if _13123:
                                        stor6[stor12][].field_0 = Array(len=_13123, data=mem[_13020 + 32 len _13123])
                                    else:
                                        stor6[stor12].field_0 = 0
                                        idx = 0
                                        while stor6[stor12].field_1 + 31 / 32 > idx:
                                            stor6[stor12][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                else:
                    mem[132] = msg.sender
                    mem[164] = 0
                    mem[196] = sub_901d331d
                    mem[228] = 128
                    mem[260] = 0
                    mem[292 len 0] = None
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), 0, sub_901d331d, 128, 0
                    mem[128] = ext_call.return_data[0]
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
                    if 1 > !sub_901d331d:
                        revert with 0, 17
                    if not sub_901d331d + 1:
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if stor6[stor12].field_0:
                            if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor6[stor12].field_0 = 0
                            stor6[stor12].field_1 = 6
                            stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                            idx = 0
                            while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                stor6[stor12][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                revert with 0, 34
                            stor6[stor12].field_0 = 0
                            stor6[stor12].field_1 = 6
                            stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                            idx = 0
                            while stor6[stor12].field_1 + 31 / 32 > idx:
                                stor6[stor12][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        s = 0
                        idx = sub_901d331d + 1
                        while idx:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s > test266151307():
                            revert with 0, 65
                        mem[ceil32(return_data.size) + 128] = s
                        if s:
                            mem[ceil32(return_data.size) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = sub_901d331d + 1
                        while idx:
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if not t:
                                revert with 0, 17
                            if t - 1 >= mem[ceil32(return_data.size) + 128]:
                                revert with 0, 50
                            mem[t + ceil32(return_data.size) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(return_data.size) + ceil32(s) + 192 len ceil32(mem[ceil32(return_data.size) + 128])] = mem[ceil32(return_data.size) + 160 len ceil32(mem[ceil32(return_data.size) + 128])]
                        mem[ceil32(return_data.size) + ceil32(s) + mem[ceil32(return_data.size) + 128] + 192] = '.json'
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if stor6[stor12].field_0:
                            if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if mem[ceil32(return_data.size) + 128] + 5:
                                stor6[stor12][].field_0 = Array(len=mem[ceil32(return_data.size) + 128] + 5, data=mem[ceil32(return_data.size) + ceil32(s) + 192 len mem[ceil32(return_data.size) + 128] + 5])
                            else:
                                stor6[stor12].field_0 = 0
                                idx = 0
                                while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                    stor6[stor12][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                revert with 0, 34
                            if mem[ceil32(return_data.size) + 128] + 5:
                                stor6[stor12][].field_0 = Array(len=mem[ceil32(return_data.size) + 128] + 5, data=mem[ceil32(return_data.size) + ceil32(s) + 192 len mem[ceil32(return_data.size) + 128] + 5])
                            else:
                                stor6[stor12].field_0 = 0
                                idx = 0
                                while stor6[stor12].field_1 + 31 / 32 > idx:
                                    stor6[stor12][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor10[stor12] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor10[stor12]] = tokenByIndex[tokenByIndex.length]
            stor10[stor9[stor9.length]] = stor10[stor12]
            stor10[stor12] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = sub_901d331d
            ownerOf[stor12] = msg.sender
            emit Transfer(0, msg.sender, sub_901d331d);
            if not ext_code.size(msg.sender):
                if 1 > !sub_901d331d:
                    revert with 0, 17
                if not sub_901d331d + 1:
                    if not ownerOf[stor12]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    if stor6[stor12].field_0:
                        if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                            revert with 0, 34
                        stor6[stor12].field_0 = 0
                        stor6[stor12].field_1 = 6
                        stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                        idx = 0
                        while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                            stor6[stor12][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                            revert with 0, 34
                        stor6[stor12].field_0 = 0
                        stor6[stor12].field_1 = 6
                        stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                        idx = 0
                        while stor6[stor12].field_1 + 31 / 32 > idx:
                            stor6[stor12][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    s = 0
                    idx = sub_901d331d + 1
                    while idx:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 0, 65
                    mem[128] = s
                    mem[64] = ceil32(s) + 160
                    if not s:
                        t = s
                        idx = sub_901d331d + 1
                        while idx:
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if not t:
                                revert with 0, 17
                            if t - 1 >= mem[128]:
                                revert with 0, 50
                            mem[t + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        _6435 = mem[128]
                        mem[mem[64] + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                        mem[mem[64] + _6435 + 32] = '.json'
                        if ceil32(_6435) <= _6435:
                            _13021 = mem[64]
                            mem[mem[64]] = _6435 + 5
                            mem[64] = mem[64] + _6435 + 37
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = sub_901d331d
                            mem[32] = 6
                            _13130 = mem[_13021]
                            if stor6[stor12].field_0:
                                if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if _13130:
                                    stor6[stor12][].field_0 = Array(len=_13130, data=mem[_13021 + 32 len _13130])
                                else:
                                    stor6[stor12].field_0 = 0
                                    idx = 0
                                    while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                        stor6[stor12][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                    revert with 0, 34
                                if _13130:
                                    stor6[stor12][].field_0 = Array(len=_13130, data=mem[_13021 + 32 len _13130])
                                else:
                                    stor6[stor12].field_0 = 0
                                    idx = 0
                                    while stor6[stor12].field_1 + 31 / 32 > idx:
                                        stor6[stor12][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            _13022 = mem[64]
                            mem[mem[64]] = _6435 + 5
                            mem[64] = mem[64] + _6435 + 37
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = sub_901d331d
                            mem[32] = 6
                            _13133 = mem[_13022]
                            if stor6[stor12].field_0:
                                if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if _13133:
                                    stor6[stor12][].field_0 = Array(len=_13133, data=mem[_13022 + 32 len _13133])
                                else:
                                    stor6[stor12].field_0 = 0
                                    idx = 0
                                    while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                        stor6[stor12][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                    revert with 0, 34
                                if _13133:
                                    stor6[stor12][].field_0 = Array(len=_13133, data=mem[_13022 + 32 len _13133])
                                else:
                                    stor6[stor12].field_0 = 0
                                    idx = 0
                                    while stor6[stor12].field_1 + 31 / 32 > idx:
                                        stor6[stor12][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = sub_901d331d + 1
                        while idx:
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if not t:
                                revert with 0, 17
                            if t - 1 >= mem[128]:
                                revert with 0, 50
                            mem[t + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        _6436 = mem[128]
                        mem[mem[64] + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                        mem[mem[64] + _6436 + 32] = '.json'
                        if ceil32(_6436) <= _6436:
                            _13023 = mem[64]
                            mem[mem[64]] = _6436 + 5
                            mem[64] = mem[64] + _6436 + 37
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = sub_901d331d
                            mem[32] = 6
                            _13136 = mem[_13023]
                            if stor6[stor12].field_0:
                                if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if _13136:
                                    stor6[stor12][].field_0 = Array(len=_13136, data=mem[_13023 + 32 len _13136])
                                else:
                                    stor6[stor12].field_0 = 0
                                    idx = 0
                                    while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                        stor6[stor12][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                    revert with 0, 34
                                if _13136:
                                    stor6[stor12][].field_0 = Array(len=_13136, data=mem[_13023 + 32 len _13136])
                                else:
                                    stor6[stor12].field_0 = 0
                                    idx = 0
                                    while stor6[stor12].field_1 + 31 / 32 > idx:
                                        stor6[stor12][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            _13024 = mem[64]
                            mem[mem[64]] = _6436 + 5
                            mem[64] = mem[64] + _6436 + 37
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = sub_901d331d
                            mem[32] = 6
                            _13139 = mem[_13024]
                            if stor6[stor12].field_0:
                                if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if _13139:
                                    stor6[stor12][].field_0 = Array(len=_13139, data=mem[_13024 + 32 len _13139])
                                else:
                                    stor6[stor12].field_0 = 0
                                    idx = 0
                                    while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                        stor6[stor12][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                                    revert with 0, 34
                                if _13139:
                                    stor6[stor12][].field_0 = Array(len=_13139, data=mem[_13024 + 32 len _13139])
                                else:
                                    stor6[stor12].field_0 = 0
                                    idx = 0
                                    while stor6[stor12].field_1 + 31 / 32 > idx:
                                        stor6[stor12][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
            else:
                mem[132] = msg.sender
                mem[164] = 0
                mem[196] = sub_901d331d
                mem[228] = 128
                mem[260] = 0
                mem[292 len 0] = None
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), 0, sub_901d331d, 128, 0
                mem[128] = ext_call.return_data[0]
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
                if 1 > !sub_901d331d:
                    revert with 0, 17
                if not sub_901d331d + 1:
                    if not ownerOf[stor12]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    if stor6[stor12].field_0:
                        if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                            revert with 0, 34
                        stor6[stor12].field_0 = 0
                        stor6[stor12].field_1 = 6
                        stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                        idx = 0
                        while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                            stor6[stor12][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                            revert with 0, 34
                        stor6[stor12].field_0 = 0
                        stor6[stor12].field_1 = 6
                        stor6[stor12].field_8 = '0', Mask(240, 16, '.json') >> 16
                        idx = 0
                        while stor6[stor12].field_1 + 31 / 32 > idx:
                            stor6[stor12][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    s = 0
                    idx = sub_901d331d + 1
                    while idx:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 0, 65
                    mem[ceil32(return_data.size) + 128] = s
                    if s:
                        mem[ceil32(return_data.size) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = sub_901d331d + 1
                    while idx:
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if not t:
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(return_data.size) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(return_data.size) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(return_data.size) + ceil32(s) + 192 len ceil32(mem[ceil32(return_data.size) + 128])] = mem[ceil32(return_data.size) + 160 len ceil32(mem[ceil32(return_data.size) + 128])]
                    mem[ceil32(return_data.size) + ceil32(s) + mem[ceil32(return_data.size) + 128] + 192] = '.json'
                    if not ownerOf[stor12]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    if stor6[stor12].field_0:
                        if stor6[stor12].field_0 == uint255(stor6[stor12].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if mem[ceil32(return_data.size) + 128] + 5:
                            stor6[stor12][].field_0 = Array(len=mem[ceil32(return_data.size) + 128] + 5, data=mem[ceil32(return_data.size) + ceil32(s) + 192 len mem[ceil32(return_data.size) + 128] + 5])
                        else:
                            stor6[stor12].field_0 = 0
                            idx = 0
                            while (uint255(stor6[stor12].field_0) * 0.5) + 31 / 32 > idx:
                                stor6[stor12][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if stor6[stor12].field_0 == stor6[stor12].field_1 < 32:
                            revert with 0, 34
                        if mem[ceil32(return_data.size) + 128] + 5:
                            stor6[stor12][].field_0 = Array(len=mem[ceil32(return_data.size) + 128] + 5, data=mem[ceil32(return_data.size) + ceil32(s) + 192 len mem[ceil32(return_data.size) + 128] + 5])
                        else:
                            stor6[stor12].field_0 = 0
                            idx = 0
                            while stor6[stor12].field_1 + 31 / 32 > idx:
                                stor6[stor12][idx].field_0 = 0
                                idx = idx + 1
                                continue 
    sub_901d331d++
    if owner != msg.sender:
        stor13++
    else:
        stor14++
    emit Mint()
    return sub_901d331d
}



}
