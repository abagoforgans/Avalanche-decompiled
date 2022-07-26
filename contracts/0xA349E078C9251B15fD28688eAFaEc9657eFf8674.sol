contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
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
array of struct stor11;
uint256 MAXSUPPLY;
array of uint256 sub_46832349;
uint256 stor14;
uint256 stor15;
uint256 stor16;
array of uint256 sub_5dc357d7;
uint256 stor18;
uint8 isOn;
array of struct sub_f28ba601;
mapping of struct accounts;
array of address stor22;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function isOn() {
    return bool(isOn)
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_46832349(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 4
    return sub_46832349[arg1]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function sub_5dc357d7(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 2
    return sub_5dc357d7[arg1]
}

function accounts(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return accounts[arg1].field_0, accounts[arg1].field_256
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
    return balanceOf[address(arg1)]
}

function MAXSUPPLY() {
    return MAXSUPPLY
}

function owner() {
    return owner
}

function sub_90f928be(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return accounts[address(arg1)].field_0, accounts[address(arg1)].field_256
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function sub_f28ba601(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_f28ba601[arg1].field_0
    return sub_f28ba601[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function sub_7751d80c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return (balanceOf[address(arg1)] > 0)
}

function sub_1d6f6678(?) {
    if MAXSUPPLY < tokenByIndex.length:
        revert with 'NH{q', 17
    return (MAXSUPPLY - tokenByIndex.length)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_3923aada(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isOn = uint8(bool(arg1))
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
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

function sub_4f4e43f1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_f28ba601[address(arg1)].field_0:
        mem[128] = sub_f28ba601[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_f28ba601[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_f28ba601[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_f28ba601[address(arg1)].field_0, data=mem[128 len 32 * sub_f28ba601[address(arg1)].field_0])
    mem[(32 * sub_f28ba601[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_f28ba601[address(arg1)].field_0) + 160] = sub_f28ba601[address(arg1)].field_0
    mem[(32 * sub_f28ba601[address(arg1)].field_0) + 192 len 32 * sub_f28ba601[address(arg1)].field_0] = mem[128 len 32 * sub_f28ba601[address(arg1)].field_0]
    return memory
      from (32 * sub_f28ba601[address(arg1)].field_0) + 128
       len (96 * sub_f28ba601[address(arg1)].field_0) + 64
}

function setBaseURI(string arg1) {
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
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
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
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
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
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if not bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor11.length):
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor11.length.field_1:
                if stor11.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
                mem[ceil32(stor11.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                if ceil32(stor11.length.field_1) > stor11.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
            if 31 >= stor11.length.field_1:
                mem[128] = 256 * stor11.length.field_8
            else:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor11.length.field_1:
                if stor11.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
                mem[ceil32(stor11.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                if ceil32(stor11.length.field_1) > stor11.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
            if 31 >= stor11.length.field_1:
                mem[128] = 256 * stor11.length.field_8
            else:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
        if stor11.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
        mem[ceil32(stor11.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) > stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor11.length.field_1
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor11.length.field_1:
            if stor11.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
            mem[ceil32(stor11.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        _3670 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3670)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3670)]
                        if ceil32(_3670) > _3670:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3670 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3670) + 32], 
                    _3702 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3702)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3702)]
                    if ceil32(_3702) > _3702:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3702 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3702) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3671 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3671)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3671)]
                    if ceil32(_3671) > _3671:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3671 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3671) + 32], 
                _3703 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3703)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3703)]
                if ceil32(_3703) > _3703:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3703 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3703) + 32], 
            mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3672 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3672)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3672)]
                    if ceil32(_3672) > _3672:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3672 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3672) + 32], 
                _3704 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3704)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3704)]
                if ceil32(_3704) > _3704:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3704 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3704) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3673 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3673)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3673)]
                if ceil32(_3673) > _3673:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3673 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3673) + 32], 
            _3705 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3705)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3705)]
            if ceil32(_3705) > _3705:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3705 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3705) + 32], 
        if 31 >= stor11.length.field_1:
            mem[128] = 256 * stor11.length.field_8
            if stor11.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
            mem[ceil32(stor11.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        _3674 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3674)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3674)]
                        if ceil32(_3674) > _3674:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3674 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3674) + 32], 
                    _3706 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3706)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3706)]
                    if ceil32(_3706) > _3706:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3706 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3706) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3675 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3675)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3675)]
                    if ceil32(_3675) > _3675:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3675 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3675) + 32], 
                _3707 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3707)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3707)]
                if ceil32(_3707) > _3707:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3707 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3707) + 32], 
            mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3676 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3676)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3676)]
                    if ceil32(_3676) > _3676:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3676 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3676) + 32], 
                _3708 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3708)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3708)]
                if ceil32(_3708) > _3708:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3708 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3708) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3677 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3677)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3677)]
                if ceil32(_3677) > _3677:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3677 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3677) + 32], 
            _3709 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3709)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3709)]
            if ceil32(_3709) > _3709:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3709 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3709) + 32], 
        mem[0] = 11
        mem[128] = uint256(stor11.field_0)
        idx = 128
        s = 0
        while stor11.length.field_1 + 96 > idx:
            mem[idx + 32] = stor11[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor11.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
        mem[ceil32(stor11.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                    _4406 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4406)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4406)]
                    if ceil32(_4406) > _4406:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4406 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4406) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                _4422 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4422)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4422)]
                if ceil32(_4422) > _4422:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4422 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4422) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                _4407 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4407)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4407)]
                if ceil32(_4407) > _4407:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4407 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4407) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            _4423 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4423)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4423)]
            if ceil32(_4423) > _4423:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4423 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4423) + 32], 
        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                _4408 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4408)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4408)]
                if ceil32(_4408) > _4408:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4408 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4408) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            _4424 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4424)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4424)]
            if ceil32(_4424) > _4424:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4424 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4424) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            _4409 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4409)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4409)]
            if ceil32(_4409) > _4409:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4409 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4409) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
        _4425 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4425)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4425)]
        if ceil32(_4425) > _4425:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4425 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4425) + 32], 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    if not stor11.length.field_1:
        if stor11.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
        mem[ceil32(stor11.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3678 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3678)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3678)]
                    if ceil32(_3678) > _3678:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3678 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3678) + 32], 
                _3710 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3710)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3710)]
                if ceil32(_3710) > _3710:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3710 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3710) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3679 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3679)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3679)]
                if ceil32(_3679) > _3679:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3679 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3679) + 32], 
            _3711 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3711)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3711)]
            if ceil32(_3711) > _3711:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3711 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3711) + 32], 
        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3680 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3680)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3680)]
                if ceil32(_3680) > _3680:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3680 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3680) + 32], 
            _3712 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3712)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3712)]
            if ceil32(_3712) > _3712:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3712 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3712) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            _3681 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3681)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3681)]
            if ceil32(_3681) > _3681:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3681 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3681) + 32], 
        _3713 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3713)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3713)]
        if ceil32(_3713) > _3713:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3713 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3713) + 32], 
    if 31 >= stor11.length.field_1:
        mem[128] = 256 * stor11.length.field_8
        if stor11.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
        mem[ceil32(stor11.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3682 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3682)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3682)]
                    if ceil32(_3682) > _3682:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3682 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3682) + 32], 
                _3714 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3714)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3714)]
                if ceil32(_3714) > _3714:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3714 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3714) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3683 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3683)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3683)]
                if ceil32(_3683) > _3683:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3683 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3683) + 32], 
            _3715 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3715)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3715)]
            if ceil32(_3715) > _3715:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3715 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3715) + 32], 
        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3684 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3684)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3684)]
                if ceil32(_3684) > _3684:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3684 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3684) + 32], 
            _3716 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3716)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3716)]
            if ceil32(_3716) > _3716:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3716 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3716) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            _3685 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3685)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3685)]
            if ceil32(_3685) > _3685:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3685 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3685) + 32], 
        _3717 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3717)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3717)]
        if ceil32(_3717) > _3717:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3717 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3717) + 32], 
    mem[0] = 11
    mem[128] = uint256(stor11.field_0)
    idx = 128
    s = 0
    while stor11.length.field_1 + 96 > idx:
        mem[idx + 32] = stor11[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor11.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
    mem[ceil32(stor11.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                _4410 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4410)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4410)]
                if ceil32(_4410) > _4410:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4410 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4410) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            _4426 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4426)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4426)]
            if ceil32(_4426) > _4426:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4426 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4426) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            _4411 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4411)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4411)]
            if ceil32(_4411) > _4411:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4411 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4411) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
        _4427 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4427)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4427)]
        if ceil32(_4427) > _4427:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4427 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4427) + 32], 
    mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            _4412 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4412)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4412)]
            if ceil32(_4412) > _4412:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4412 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4412) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
        _4428 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4428)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4428)]
        if ceil32(_4428) > _4428:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4428 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4428) + 32], 
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
        _4413 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4413)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4413)]
        if ceil32(_4413) > _4413:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4413 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4413) + 32], 
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
    _4429 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4429)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4429)]
    if ceil32(_4429) > _4429:
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4429 + 256] = 0
    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4429) + 32], 
}

function mint(uint256 arg1, address arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not isOn:
        revert with 0, 'Minting process not started'
    if arg1 == sub_46832349.length:
        if tokenByIndex.length > -arg1 - 1:
            revert with 'NH{q', 17
        if tokenByIndex.length + arg1 > MAXSUPPLY:
            revert with 0, 'Purchase would exceed max tokens'
        mem[0] = arg2
        mem[32] = 3
        if balanceOf[address(arg2)] > 0:
            if arg1 == stor16:
                if stor18 > msg.value:
                    revert with 0, 'AVAX value sent is not correct'
                idx = 0
                while idx < arg1:
                    if tokenByIndex.length > -idx - 1:
                        revert with 'NH{q', 17
                    _1818 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1818] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor8.length + idx]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[stor8.length + idx] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                        stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = tokenByIndex.length + idx
                        mem[32] = 2
                        ownerOf[stor8.length + idx] = msg.sender
                        emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                        if ext_code.size(msg.sender) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length + idx
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 164] = mem[_1818 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                            _3579 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3579] == Mask(32, 224, mem[_3579])
                            if Mask(32, 224, mem[_3579]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor9[stor8.length + idx] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                        stor9[stor8.length + idx] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = tokenByIndex.length + idx
                        mem[32] = 2
                        ownerOf[stor8.length + idx] = msg.sender
                        emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                        if ext_code.size(msg.sender) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length + idx
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 164] = mem[_1818 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                            _3580 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3580] == Mask(32, 224, mem[_3580])
                            if Mask(32, 224, mem[_3580]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[32] = 20
                    if tokenByIndex.length > -idx - 1:
                        revert with 'NH{q', 17
                    sub_f28ba601[address(msg.sender)].field_0++
                    mem[0] = sha3(address(msg.sender), 20)
                    sub_f28ba601[address(msg.sender)][sub_f28ba601[address(msg.sender)].field_0].field_0 = tokenByIndex.length + idx
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                stor22.length++
                stor22[stor22.length] = msg.sender
                if accounts[address(msg.sender)].field_256 > -arg1 - 1:
                    revert with 'NH{q', 17
                accounts[address(msg.sender)].field_256 += arg1
                if accounts[address(arg2)].field_0 == -1:
                    revert with 'NH{q', 17
                accounts[address(arg2)].field_0++
                call arg2 with:
                   value stor18 / 10 wei
                     gas 2300 * is_zero(value) wei
            else:
                if sub_5dc357d7.length and arg1 > -1 / sub_5dc357d7.length:
                    revert with 'NH{q', 17
                if sub_5dc357d7.length * arg1 > msg.value:
                    revert with 0, 'AVAX value sent is not correct'
                idx = 0
                while idx < arg1:
                    if tokenByIndex.length > -idx - 1:
                        revert with 'NH{q', 17
                    _1817 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1817] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor8.length + idx]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[stor8.length + idx] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                        stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = tokenByIndex.length + idx
                        mem[32] = 2
                        ownerOf[stor8.length + idx] = msg.sender
                        emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                        if ext_code.size(msg.sender) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length + idx
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 164] = mem[_1817 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                            _3577 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3577] == Mask(32, 224, mem[_3577])
                            if Mask(32, 224, mem[_3577]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor9[stor8.length + idx] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                        stor9[stor8.length + idx] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = tokenByIndex.length + idx
                        mem[32] = 2
                        ownerOf[stor8.length + idx] = msg.sender
                        emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                        if ext_code.size(msg.sender) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length + idx
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 164] = mem[_1817 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                            _3578 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3578] == Mask(32, 224, mem[_3578])
                            if Mask(32, 224, mem[_3578]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[32] = 20
                    if tokenByIndex.length > -idx - 1:
                        revert with 'NH{q', 17
                    sub_f28ba601[address(msg.sender)].field_0++
                    mem[0] = sha3(address(msg.sender), 20)
                    sub_f28ba601[address(msg.sender)][sub_f28ba601[address(msg.sender)].field_0].field_0 = tokenByIndex.length + idx
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                stor22.length++
                stor22[stor22.length] = msg.sender
                if accounts[address(msg.sender)].field_256 > -arg1 - 1:
                    revert with 'NH{q', 17
                accounts[address(msg.sender)].field_256 += arg1
                if accounts[address(arg2)].field_0 == -1:
                    revert with 'NH{q', 17
                accounts[address(arg2)].field_0++
                call arg2 with:
                   value sub_5dc357d7.length * arg1 / 10 wei
                     gas 2300 * is_zero(value) wei
        else:
            if arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The Referrer Address is not valid'
            if arg1 == stor16:
                if stor18 > msg.value:
                    revert with 0, 'AVAX value sent is not correct'
                idx = 0
                while idx < arg1:
                    if tokenByIndex.length > -idx - 1:
                        revert with 'NH{q', 17
                    _1820 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1820] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor8.length + idx]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[stor8.length + idx] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                        stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = tokenByIndex.length + idx
                        mem[32] = 2
                        ownerOf[stor8.length + idx] = msg.sender
                        emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                        if ext_code.size(msg.sender) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length + idx
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 164] = mem[_1820 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                            _3583 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3583] == Mask(32, 224, mem[_3583])
                            if Mask(32, 224, mem[_3583]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor9[stor8.length + idx] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                        stor9[stor8.length + idx] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = tokenByIndex.length + idx
                        mem[32] = 2
                        ownerOf[stor8.length + idx] = msg.sender
                        emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                        if ext_code.size(msg.sender) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length + idx
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 164] = mem[_1820 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                            _3584 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3584] == Mask(32, 224, mem[_3584])
                            if Mask(32, 224, mem[_3584]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[32] = 20
                    if tokenByIndex.length > -idx - 1:
                        revert with 'NH{q', 17
                    sub_f28ba601[address(msg.sender)].field_0++
                    mem[0] = sha3(address(msg.sender), 20)
                    sub_f28ba601[address(msg.sender)][sub_f28ba601[address(msg.sender)].field_0].field_0 = tokenByIndex.length + idx
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                stor22.length++
                stor22[stor22.length] = msg.sender
                if accounts[address(msg.sender)].field_256 > -arg1 - 1:
                    revert with 'NH{q', 17
                accounts[address(msg.sender)].field_256 += arg1
                if accounts[address(arg2)].field_0 == -1:
                    revert with 'NH{q', 17
                accounts[address(arg2)].field_0++
                call arg2 with:
                   value stor18 / 10 wei
                     gas 2300 * is_zero(value) wei
            else:
                if sub_5dc357d7.length and arg1 > -1 / sub_5dc357d7.length:
                    revert with 'NH{q', 17
                if sub_5dc357d7.length * arg1 > msg.value:
                    revert with 0, 'AVAX value sent is not correct'
                idx = 0
                while idx < arg1:
                    if tokenByIndex.length > -idx - 1:
                        revert with 'NH{q', 17
                    _1819 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1819] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor8.length + idx]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[stor8.length + idx] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                        stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = tokenByIndex.length + idx
                        mem[32] = 2
                        ownerOf[stor8.length + idx] = msg.sender
                        emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                        if ext_code.size(msg.sender) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length + idx
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 164] = mem[_1819 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                            _3581 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3581] == Mask(32, 224, mem[_3581])
                            if Mask(32, 224, mem[_3581]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor9[stor8.length + idx] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                        stor9[stor8.length + idx] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = tokenByIndex.length + idx
                        mem[32] = 2
                        ownerOf[stor8.length + idx] = msg.sender
                        emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                        if ext_code.size(msg.sender) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length + idx
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 164] = mem[_1819 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                            _3582 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3582] == Mask(32, 224, mem[_3582])
                            if Mask(32, 224, mem[_3582]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[32] = 20
                    if tokenByIndex.length > -idx - 1:
                        revert with 'NH{q', 17
                    sub_f28ba601[address(msg.sender)].field_0++
                    mem[0] = sha3(address(msg.sender), 20)
                    sub_f28ba601[address(msg.sender)][sub_f28ba601[address(msg.sender)].field_0].field_0 = tokenByIndex.length + idx
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                stor22.length++
                stor22[stor22.length] = msg.sender
                if accounts[address(msg.sender)].field_256 > -arg1 - 1:
                    revert with 'NH{q', 17
                accounts[address(msg.sender)].field_256 += arg1
                if accounts[address(arg2)].field_0 == -1:
                    revert with 'NH{q', 17
                accounts[address(arg2)].field_0++
                call arg2 with:
                   value sub_5dc357d7.length * arg1 / 10 wei
                     gas 2300 * is_zero(value) wei
    else:
        if arg1 == stor14:
            if tokenByIndex.length > -arg1 - 1:
                revert with 'NH{q', 17
            if tokenByIndex.length + arg1 > MAXSUPPLY:
                revert with 0, 'Purchase would exceed max tokens'
            mem[0] = arg2
            mem[32] = 3
            if balanceOf[address(arg2)] > 0:
                if arg1 == stor16:
                    if stor18 > msg.value:
                        revert with 0, 'AVAX value sent is not correct'
                    idx = 0
                    while idx < arg1:
                        if tokenByIndex.length > -idx - 1:
                            revert with 'NH{q', 17
                        _1822 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1822] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor8.length + idx]:
                            revert with 0, 'ERC721: token already minted'
                        stor9[stor8.length + idx] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                            stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_1822 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                _3587 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3587] == Mask(32, 224, mem[_3587])
                                if Mask(32, 224, mem[_3587]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor9[stor8.length + idx] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                            stor9[stor8.length + idx] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_1822 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                _3588 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3588] == Mask(32, 224, mem[_3588])
                                if Mask(32, 224, mem[_3588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        mem[32] = 20
                        if tokenByIndex.length > -idx - 1:
                            revert with 'NH{q', 17
                        sub_f28ba601[address(msg.sender)].field_0++
                        mem[0] = sha3(address(msg.sender), 20)
                        sub_f28ba601[address(msg.sender)][sub_f28ba601[address(msg.sender)].field_0].field_0 = tokenByIndex.length + idx
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    stor22.length++
                    stor22[stor22.length] = msg.sender
                    if accounts[address(msg.sender)].field_256 > -arg1 - 1:
                        revert with 'NH{q', 17
                    accounts[address(msg.sender)].field_256 += arg1
                    if accounts[address(arg2)].field_0 == -1:
                        revert with 'NH{q', 17
                    accounts[address(arg2)].field_0++
                    call arg2 with:
                       value stor18 / 10 wei
                         gas 2300 * is_zero(value) wei
                else:
                    if sub_5dc357d7.length and arg1 > -1 / sub_5dc357d7.length:
                        revert with 'NH{q', 17
                    if sub_5dc357d7.length * arg1 > msg.value:
                        revert with 0, 'AVAX value sent is not correct'
                    idx = 0
                    while idx < arg1:
                        if tokenByIndex.length > -idx - 1:
                            revert with 'NH{q', 17
                        _1821 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1821] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor8.length + idx]:
                            revert with 0, 'ERC721: token already minted'
                        stor9[stor8.length + idx] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                            stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_1821 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                _3585 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3585] == Mask(32, 224, mem[_3585])
                                if Mask(32, 224, mem[_3585]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor9[stor8.length + idx] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                            stor9[stor8.length + idx] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_1821 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                _3586 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3586] == Mask(32, 224, mem[_3586])
                                if Mask(32, 224, mem[_3586]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        mem[32] = 20
                        if tokenByIndex.length > -idx - 1:
                            revert with 'NH{q', 17
                        sub_f28ba601[address(msg.sender)].field_0++
                        mem[0] = sha3(address(msg.sender), 20)
                        sub_f28ba601[address(msg.sender)][sub_f28ba601[address(msg.sender)].field_0].field_0 = tokenByIndex.length + idx
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    stor22.length++
                    stor22[stor22.length] = msg.sender
                    if accounts[address(msg.sender)].field_256 > -arg1 - 1:
                        revert with 'NH{q', 17
                    accounts[address(msg.sender)].field_256 += arg1
                    if accounts[address(arg2)].field_0 == -1:
                        revert with 'NH{q', 17
                    accounts[address(arg2)].field_0++
                    call arg2 with:
                       value sub_5dc357d7.length * arg1 / 10 wei
                         gas 2300 * is_zero(value) wei
            else:
                if arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The Referrer Address is not valid'
                if arg1 == stor16:
                    if stor18 > msg.value:
                        revert with 0, 'AVAX value sent is not correct'
                    idx = 0
                    while idx < arg1:
                        if tokenByIndex.length > -idx - 1:
                            revert with 'NH{q', 17
                        _1824 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1824] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor8.length + idx]:
                            revert with 0, 'ERC721: token already minted'
                        stor9[stor8.length + idx] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                            stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_1824 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                _3591 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3591] == Mask(32, 224, mem[_3591])
                                if Mask(32, 224, mem[_3591]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor9[stor8.length + idx] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                            stor9[stor8.length + idx] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_1824 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                _3592 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3592] == Mask(32, 224, mem[_3592])
                                if Mask(32, 224, mem[_3592]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        mem[32] = 20
                        if tokenByIndex.length > -idx - 1:
                            revert with 'NH{q', 17
                        sub_f28ba601[address(msg.sender)].field_0++
                        mem[0] = sha3(address(msg.sender), 20)
                        sub_f28ba601[address(msg.sender)][sub_f28ba601[address(msg.sender)].field_0].field_0 = tokenByIndex.length + idx
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    stor22.length++
                    stor22[stor22.length] = msg.sender
                    if accounts[address(msg.sender)].field_256 > -arg1 - 1:
                        revert with 'NH{q', 17
                    accounts[address(msg.sender)].field_256 += arg1
                    if accounts[address(arg2)].field_0 == -1:
                        revert with 'NH{q', 17
                    accounts[address(arg2)].field_0++
                    call arg2 with:
                       value stor18 / 10 wei
                         gas 2300 * is_zero(value) wei
                else:
                    if sub_5dc357d7.length and arg1 > -1 / sub_5dc357d7.length:
                        revert with 'NH{q', 17
                    if sub_5dc357d7.length * arg1 > msg.value:
                        revert with 0, 'AVAX value sent is not correct'
                    idx = 0
                    while idx < arg1:
                        if tokenByIndex.length > -idx - 1:
                            revert with 'NH{q', 17
                        _1823 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1823] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor8.length + idx]:
                            revert with 0, 'ERC721: token already minted'
                        stor9[stor8.length + idx] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                            stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_1823 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                _3589 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3589] == Mask(32, 224, mem[_3589])
                                if Mask(32, 224, mem[_3589]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor9[stor8.length + idx] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                            stor9[stor8.length + idx] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_1823 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                _3590 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3590] == Mask(32, 224, mem[_3590])
                                if Mask(32, 224, mem[_3590]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        mem[32] = 20
                        if tokenByIndex.length > -idx - 1:
                            revert with 'NH{q', 17
                        sub_f28ba601[address(msg.sender)].field_0++
                        mem[0] = sha3(address(msg.sender), 20)
                        sub_f28ba601[address(msg.sender)][sub_f28ba601[address(msg.sender)].field_0].field_0 = tokenByIndex.length + idx
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    stor22.length++
                    stor22[stor22.length] = msg.sender
                    if accounts[address(msg.sender)].field_256 > -arg1 - 1:
                        revert with 'NH{q', 17
                    accounts[address(msg.sender)].field_256 += arg1
                    if accounts[address(arg2)].field_0 == -1:
                        revert with 'NH{q', 17
                    accounts[address(arg2)].field_0++
                    call arg2 with:
                       value sub_5dc357d7.length * arg1 / 10 wei
                         gas 2300 * is_zero(value) wei
        else:
            if arg1 == stor15:
                if tokenByIndex.length > -arg1 - 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length + arg1 > MAXSUPPLY:
                    revert with 0, 'Purchase would exceed max tokens'
                mem[0] = arg2
                mem[32] = 3
                if balanceOf[address(arg2)] > 0:
                    if arg1 == stor16:
                        if stor18 > msg.value:
                            revert with 0, 'AVAX value sent is not correct'
                        idx = 0
                        while idx < arg1:
                            if tokenByIndex.length > -idx - 1:
                                revert with 'NH{q', 17
                            _1826 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1826] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor8.length + idx]:
                                revert with 0, 'ERC721: token already minted'
                            stor9[stor8.length + idx] = tokenByIndex.length
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                            if msg.sender:
                                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                                stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]++
                                mem[0] = tokenByIndex.length + idx
                                mem[32] = 2
                                ownerOf[stor8.length + idx] = msg.sender
                                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length + idx
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1826 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                    _3595 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3595] == Mask(32, 224, mem[_3595])
                                    if Mask(32, 224, mem[_3595]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if tokenByIndex.length < 1:
                                    revert with 'NH{q', 17
                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                if stor9[stor8.length + idx] >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                                stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                                stor9[stor8.length + idx] = 0
                                if not tokenByIndex.length:
                                    revert with 'NH{q', 49
                                tokenByIndex[tokenByIndex.length] = 0
                                tokenByIndex.length--
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]++
                                mem[0] = tokenByIndex.length + idx
                                mem[32] = 2
                                ownerOf[stor8.length + idx] = msg.sender
                                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length + idx
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1826 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                    _3596 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3596] == Mask(32, 224, mem[_3596])
                                    if Mask(32, 224, mem[_3596]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[32] = 20
                            if tokenByIndex.length > -idx - 1:
                                revert with 'NH{q', 17
                            sub_f28ba601[address(msg.sender)].field_0++
                            mem[0] = sha3(address(msg.sender), 20)
                            sub_f28ba601[address(msg.sender)][sub_f28ba601[address(msg.sender)].field_0].field_0 = tokenByIndex.length + idx
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        stor22.length++
                        stor22[stor22.length] = msg.sender
                        if accounts[address(msg.sender)].field_256 > -arg1 - 1:
                            revert with 'NH{q', 17
                        accounts[address(msg.sender)].field_256 += arg1
                        if accounts[address(arg2)].field_0 == -1:
                            revert with 'NH{q', 17
                        accounts[address(arg2)].field_0++
                        call arg2 with:
                           value stor18 / 10 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if sub_5dc357d7.length and arg1 > -1 / sub_5dc357d7.length:
                            revert with 'NH{q', 17
                        if sub_5dc357d7.length * arg1 > msg.value:
                            revert with 0, 'AVAX value sent is not correct'
                        idx = 0
                        while idx < arg1:
                            if tokenByIndex.length > -idx - 1:
                                revert with 'NH{q', 17
                            _1825 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1825] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor8.length + idx]:
                                revert with 0, 'ERC721: token already minted'
                            stor9[stor8.length + idx] = tokenByIndex.length
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                            if msg.sender:
                                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                                stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]++
                                mem[0] = tokenByIndex.length + idx
                                mem[32] = 2
                                ownerOf[stor8.length + idx] = msg.sender
                                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length + idx
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1825 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                    _3593 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3593] == Mask(32, 224, mem[_3593])
                                    if Mask(32, 224, mem[_3593]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if tokenByIndex.length < 1:
                                    revert with 'NH{q', 17
                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                if stor9[stor8.length + idx] >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                                stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                                stor9[stor8.length + idx] = 0
                                if not tokenByIndex.length:
                                    revert with 'NH{q', 49
                                tokenByIndex[tokenByIndex.length] = 0
                                tokenByIndex.length--
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]++
                                mem[0] = tokenByIndex.length + idx
                                mem[32] = 2
                                ownerOf[stor8.length + idx] = msg.sender
                                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length + idx
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1825 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                    _3594 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3594] == Mask(32, 224, mem[_3594])
                                    if Mask(32, 224, mem[_3594]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[32] = 20
                            if tokenByIndex.length > -idx - 1:
                                revert with 'NH{q', 17
                            sub_f28ba601[address(msg.sender)].field_0++
                            mem[0] = sha3(address(msg.sender), 20)
                            sub_f28ba601[address(msg.sender)][sub_f28ba601[address(msg.sender)].field_0].field_0 = tokenByIndex.length + idx
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        stor22.length++
                        stor22[stor22.length] = msg.sender
                        if accounts[address(msg.sender)].field_256 > -arg1 - 1:
                            revert with 'NH{q', 17
                        accounts[address(msg.sender)].field_256 += arg1
                        if accounts[address(arg2)].field_0 == -1:
                            revert with 'NH{q', 17
                        accounts[address(arg2)].field_0++
                        call arg2 with:
                           value sub_5dc357d7.length * arg1 / 10 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The Referrer Address is not valid'
                    if arg1 == stor16:
                        if stor18 > msg.value:
                            revert with 0, 'AVAX value sent is not correct'
                        idx = 0
                        while idx < arg1:
                            if tokenByIndex.length > -idx - 1:
                                revert with 'NH{q', 17
                            _1828 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1828] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor8.length + idx]:
                                revert with 0, 'ERC721: token already minted'
                            stor9[stor8.length + idx] = tokenByIndex.length
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                            if msg.sender:
                                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                                stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]++
                                mem[0] = tokenByIndex.length + idx
                                mem[32] = 2
                                ownerOf[stor8.length + idx] = msg.sender
                                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length + idx
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1828 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                    _3599 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3599] == Mask(32, 224, mem[_3599])
                                    if Mask(32, 224, mem[_3599]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if tokenByIndex.length < 1:
                                    revert with 'NH{q', 17
                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                if stor9[stor8.length + idx] >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                                stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                                stor9[stor8.length + idx] = 0
                                if not tokenByIndex.length:
                                    revert with 'NH{q', 49
                                tokenByIndex[tokenByIndex.length] = 0
                                tokenByIndex.length--
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]++
                                mem[0] = tokenByIndex.length + idx
                                mem[32] = 2
                                ownerOf[stor8.length + idx] = msg.sender
                                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length + idx
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1828 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                    _3600 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3600] == Mask(32, 224, mem[_3600])
                                    if Mask(32, 224, mem[_3600]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[32] = 20
                            if tokenByIndex.length > -idx - 1:
                                revert with 'NH{q', 17
                            sub_f28ba601[address(msg.sender)].field_0++
                            mem[0] = sha3(address(msg.sender), 20)
                            sub_f28ba601[address(msg.sender)][sub_f28ba601[address(msg.sender)].field_0].field_0 = tokenByIndex.length + idx
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        stor22.length++
                        stor22[stor22.length] = msg.sender
                        if accounts[address(msg.sender)].field_256 > -arg1 - 1:
                            revert with 'NH{q', 17
                        accounts[address(msg.sender)].field_256 += arg1
                        if accounts[address(arg2)].field_0 == -1:
                            revert with 'NH{q', 17
                        accounts[address(arg2)].field_0++
                        call arg2 with:
                           value stor18 / 10 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if sub_5dc357d7.length and arg1 > -1 / sub_5dc357d7.length:
                            revert with 'NH{q', 17
                        if sub_5dc357d7.length * arg1 > msg.value:
                            revert with 0, 'AVAX value sent is not correct'
                        idx = 0
                        while idx < arg1:
                            if tokenByIndex.length > -idx - 1:
                                revert with 'NH{q', 17
                            _1827 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1827] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor8.length + idx]:
                                revert with 0, 'ERC721: token already minted'
                            stor9[stor8.length + idx] = tokenByIndex.length
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                            if msg.sender:
                                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                                stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]++
                                mem[0] = tokenByIndex.length + idx
                                mem[32] = 2
                                ownerOf[stor8.length + idx] = msg.sender
                                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length + idx
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1827 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                    _3597 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3597] == Mask(32, 224, mem[_3597])
                                    if Mask(32, 224, mem[_3597]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if tokenByIndex.length < 1:
                                    revert with 'NH{q', 17
                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                if stor9[stor8.length + idx] >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                                stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                                stor9[stor8.length + idx] = 0
                                if not tokenByIndex.length:
                                    revert with 'NH{q', 49
                                tokenByIndex[tokenByIndex.length] = 0
                                tokenByIndex.length--
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]++
                                mem[0] = tokenByIndex.length + idx
                                mem[32] = 2
                                ownerOf[stor8.length + idx] = msg.sender
                                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length + idx
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1827 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                    _3598 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3598] == Mask(32, 224, mem[_3598])
                                    if Mask(32, 224, mem[_3598]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[32] = 20
                            if tokenByIndex.length > -idx - 1:
                                revert with 'NH{q', 17
                            sub_f28ba601[address(msg.sender)].field_0++
                            mem[0] = sha3(address(msg.sender), 20)
                            sub_f28ba601[address(msg.sender)][sub_f28ba601[address(msg.sender)].field_0].field_0 = tokenByIndex.length + idx
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        stor22.length++
                        stor22[stor22.length] = msg.sender
                        if accounts[address(msg.sender)].field_256 > -arg1 - 1:
                            revert with 'NH{q', 17
                        accounts[address(msg.sender)].field_256 += arg1
                        if accounts[address(arg2)].field_0 == -1:
                            revert with 'NH{q', 17
                        accounts[address(arg2)].field_0++
                        call arg2 with:
                           value sub_5dc357d7.length * arg1 / 10 wei
                             gas 2300 * is_zero(value) wei
            else:
                if arg1 != stor16:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please Choose between The package'
                if tokenByIndex.length > -arg1 - 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length + arg1 > MAXSUPPLY:
                    revert with 0, 'Purchase would exceed max tokens'
                mem[0] = arg2
                mem[32] = 3
                if balanceOf[address(arg2)] > 0:
                    if arg1 == stor16:
                        if stor18 > msg.value:
                            revert with 0, 'AVAX value sent is not correct'
                        idx = 0
                        while idx < arg1:
                            if tokenByIndex.length > -idx - 1:
                                revert with 'NH{q', 17
                            _1830 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1830] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor8.length + idx]:
                                revert with 0, 'ERC721: token already minted'
                            stor9[stor8.length + idx] = tokenByIndex.length
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                            if msg.sender:
                                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                                stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]++
                                mem[0] = tokenByIndex.length + idx
                                mem[32] = 2
                                ownerOf[stor8.length + idx] = msg.sender
                                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length + idx
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1830 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                    _3603 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3603] == Mask(32, 224, mem[_3603])
                                    if Mask(32, 224, mem[_3603]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if tokenByIndex.length < 1:
                                    revert with 'NH{q', 17
                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                if stor9[stor8.length + idx] >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                                stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                                stor9[stor8.length + idx] = 0
                                if not tokenByIndex.length:
                                    revert with 'NH{q', 49
                                tokenByIndex[tokenByIndex.length] = 0
                                tokenByIndex.length--
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]++
                                mem[0] = tokenByIndex.length + idx
                                mem[32] = 2
                                ownerOf[stor8.length + idx] = msg.sender
                                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length + idx
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1830 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                    _3604 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3604] == Mask(32, 224, mem[_3604])
                                    if Mask(32, 224, mem[_3604]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[32] = 20
                            if tokenByIndex.length > -idx - 1:
                                revert with 'NH{q', 17
                            sub_f28ba601[address(msg.sender)].field_0++
                            mem[0] = sha3(address(msg.sender), 20)
                            sub_f28ba601[address(msg.sender)][sub_f28ba601[address(msg.sender)].field_0].field_0 = tokenByIndex.length + idx
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        stor22.length++
                        stor22[stor22.length] = msg.sender
                        if accounts[address(msg.sender)].field_256 > -arg1 - 1:
                            revert with 'NH{q', 17
                        accounts[address(msg.sender)].field_256 += arg1
                        if accounts[address(arg2)].field_0 == -1:
                            revert with 'NH{q', 17
                        accounts[address(arg2)].field_0++
                        call arg2 with:
                           value stor18 / 10 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if sub_5dc357d7.length and arg1 > -1 / sub_5dc357d7.length:
                            revert with 'NH{q', 17
                        if sub_5dc357d7.length * arg1 > msg.value:
                            revert with 0, 'AVAX value sent is not correct'
                        idx = 0
                        while idx < arg1:
                            if tokenByIndex.length > -idx - 1:
                                revert with 'NH{q', 17
                            _1829 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1829] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor8.length + idx]:
                                revert with 0, 'ERC721: token already minted'
                            stor9[stor8.length + idx] = tokenByIndex.length
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                            if msg.sender:
                                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                                stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]++
                                mem[0] = tokenByIndex.length + idx
                                mem[32] = 2
                                ownerOf[stor8.length + idx] = msg.sender
                                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length + idx
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1829 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                    _3601 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3601] == Mask(32, 224, mem[_3601])
                                    if Mask(32, 224, mem[_3601]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if tokenByIndex.length < 1:
                                    revert with 'NH{q', 17
                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                if stor9[stor8.length + idx] >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                                stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                                stor9[stor8.length + idx] = 0
                                if not tokenByIndex.length:
                                    revert with 'NH{q', 49
                                tokenByIndex[tokenByIndex.length] = 0
                                tokenByIndex.length--
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]++
                                mem[0] = tokenByIndex.length + idx
                                mem[32] = 2
                                ownerOf[stor8.length + idx] = msg.sender
                                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length + idx
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1829 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                    _3602 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3602] == Mask(32, 224, mem[_3602])
                                    if Mask(32, 224, mem[_3602]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[32] = 20
                            if tokenByIndex.length > -idx - 1:
                                revert with 'NH{q', 17
                            sub_f28ba601[address(msg.sender)].field_0++
                            mem[0] = sha3(address(msg.sender), 20)
                            sub_f28ba601[address(msg.sender)][sub_f28ba601[address(msg.sender)].field_0].field_0 = tokenByIndex.length + idx
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        stor22.length++
                        stor22[stor22.length] = msg.sender
                        if accounts[address(msg.sender)].field_256 > -arg1 - 1:
                            revert with 'NH{q', 17
                        accounts[address(msg.sender)].field_256 += arg1
                        if accounts[address(arg2)].field_0 == -1:
                            revert with 'NH{q', 17
                        accounts[address(arg2)].field_0++
                        call arg2 with:
                           value sub_5dc357d7.length * arg1 / 10 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The Referrer Address is not valid'
                    if arg1 == stor16:
                        if stor18 > msg.value:
                            revert with 0, 'AVAX value sent is not correct'
                        idx = 0
                        while idx < arg1:
                            if tokenByIndex.length > -idx - 1:
                                revert with 'NH{q', 17
                            _1832 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1832] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor8.length + idx]:
                                revert with 0, 'ERC721: token already minted'
                            stor9[stor8.length + idx] = tokenByIndex.length
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                            if msg.sender:
                                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                                stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]++
                                mem[0] = tokenByIndex.length + idx
                                mem[32] = 2
                                ownerOf[stor8.length + idx] = msg.sender
                                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length + idx
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1832 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                    _3607 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3607] == Mask(32, 224, mem[_3607])
                                    if Mask(32, 224, mem[_3607]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if tokenByIndex.length < 1:
                                    revert with 'NH{q', 17
                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                if stor9[stor8.length + idx] >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                                stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                                stor9[stor8.length + idx] = 0
                                if not tokenByIndex.length:
                                    revert with 'NH{q', 49
                                tokenByIndex[tokenByIndex.length] = 0
                                tokenByIndex.length--
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]++
                                mem[0] = tokenByIndex.length + idx
                                mem[32] = 2
                                ownerOf[stor8.length + idx] = msg.sender
                                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length + idx
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1832 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                    _3608 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3608] == Mask(32, 224, mem[_3608])
                                    if Mask(32, 224, mem[_3608]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[32] = 20
                            if tokenByIndex.length > -idx - 1:
                                revert with 'NH{q', 17
                            sub_f28ba601[address(msg.sender)].field_0++
                            mem[0] = sha3(address(msg.sender), 20)
                            sub_f28ba601[address(msg.sender)][sub_f28ba601[address(msg.sender)].field_0].field_0 = tokenByIndex.length + idx
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        stor22.length++
                        stor22[stor22.length] = msg.sender
                        if accounts[address(msg.sender)].field_256 > -arg1 - 1:
                            revert with 'NH{q', 17
                        accounts[address(msg.sender)].field_256 += arg1
                        if accounts[address(arg2)].field_0 == -1:
                            revert with 'NH{q', 17
                        accounts[address(arg2)].field_0++
                        call arg2 with:
                           value stor18 / 10 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if sub_5dc357d7.length and arg1 > -1 / sub_5dc357d7.length:
                            revert with 'NH{q', 17
                        if sub_5dc357d7.length * arg1 > msg.value:
                            revert with 0, 'AVAX value sent is not correct'
                        idx = 0
                        while idx < arg1:
                            if tokenByIndex.length > -idx - 1:
                                revert with 'NH{q', 17
                            _1831 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1831] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor8.length + idx]:
                                revert with 0, 'ERC721: token already minted'
                            stor9[stor8.length + idx] = tokenByIndex.length
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                            if msg.sender:
                                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                                stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]++
                                mem[0] = tokenByIndex.length + idx
                                mem[32] = 2
                                ownerOf[stor8.length + idx] = msg.sender
                                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length + idx
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1831 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                    _3605 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3605] == Mask(32, 224, mem[_3605])
                                    if Mask(32, 224, mem[_3605]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if tokenByIndex.length < 1:
                                    revert with 'NH{q', 17
                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                if stor9[stor8.length + idx] >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                                stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                                stor9[stor8.length + idx] = 0
                                if not tokenByIndex.length:
                                    revert with 'NH{q', 49
                                tokenByIndex[tokenByIndex.length] = 0
                                tokenByIndex.length--
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]++
                                mem[0] = tokenByIndex.length + idx
                                mem[32] = 2
                                ownerOf[stor8.length + idx] = msg.sender
                                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length + idx
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_1831 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                                    _3606 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3606] == Mask(32, 224, mem[_3606])
                                    if Mask(32, 224, mem[_3606]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[32] = 20
                            if tokenByIndex.length > -idx - 1:
                                revert with 'NH{q', 17
                            sub_f28ba601[address(msg.sender)].field_0++
                            mem[0] = sha3(address(msg.sender), 20)
                            sub_f28ba601[address(msg.sender)][sub_f28ba601[address(msg.sender)].field_0].field_0 = tokenByIndex.length + idx
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        stor22.length++
                        stor22[stor22.length] = msg.sender
                        if accounts[address(msg.sender)].field_256 > -arg1 - 1:
                            revert with 'NH{q', 17
                        accounts[address(msg.sender)].field_256 += arg1
                        if accounts[address(arg2)].field_0 == -1:
                            revert with 'NH{q', 17
                        accounts[address(arg2)].field_0++
                        call arg2 with:
                           value sub_5dc357d7.length * arg1 / 10 wei
                             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if tokenByIndex.length > -arg1 - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length + arg1 < 1:
        revert with 'NH{q', 17
    emit Minted(arg1, tokenByIndex.length + arg1 - 1, msg.sender, arg2);
}



}
