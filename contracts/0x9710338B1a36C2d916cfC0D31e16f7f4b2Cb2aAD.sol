contract main {




// =====================  Runtime code  =====================


const sub_c9cb8a16(?) = 1200

const MAX_MINTABLE_AT_ONCE = 5


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
array of struct stor12;
uint8 isSaleOn;
uint8 saleHasBeenStarted; offset 8
uint16 stor13;
uint256 price;
array of struct stor15;
address stor16;
array of uint256 stor17;
array of uint256 stor18;
uint256 stor4C2;
uint256 stor4C3;
mapping of uint256 sub_6855c86b;
array of uint256 stor1222;

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

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function sub_6855c86b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6855c86b[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function isSaleOn() {
    return bool(isSaleOn)
}

function owner() {
    return owner
}

function getPrice() {
    return price
}

function saleHasBeenStarted() {
    return bool(saleHasBeenStarted)
}

function sub_b3b9b0b7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6855c86b[address(arg1)]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor6[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function endSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isSaleOn = 0
}

function startSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = 257
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price = arg1
}

function withdrawFailsafe() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor6[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_d01af438(?) {
    require calldata.size - 4 >= 32
    if tokenByIndex.length > !arg1:
        revert with 0, 17
    if tokenByIndex.length + arg1 > 1200:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There are not this many AvaLand left.'
    if arg1 > 5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You cannot mint that many AvaLand.'
    if arg1 and price > -1 / arg1:
        revert with 0, 17
    return (arg1 * price)
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

function withdrawTeam() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) / 100 > 0x2aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
        revert with 0, 17
    if eth.balance(this.address) < 6 * eth.balance(this.address) / 100:
        revert with 0, 17
    call stor16 with:
       value 6 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call address(stor17.length) with:
       value eth.balance(this.address) - (6 * eth.balance(this.address) / 100) wei
         gas 2300 * is_zero(value) wei
}

function giveFreeRoll(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor4C3 >= 200:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Already given max number of free rolls'
    if sub_6855c86b[address(arg1)] > !arg2:
        revert with 0, 17
    if sub_6855c86b[address(arg1)] + arg2 >= 51:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot exceed 50 unused free rolls!'
    if sub_6855c86b[address(arg1)] > !arg2:
        revert with 0, 17
    sub_6855c86b[address(arg1)] += arg2
    if stor4C3 > !arg2:
        revert with 0, 17
    stor4C3 += arg2
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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

function sub_e89adf7a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    while idx < balanceOf[address(arg1)]:
        if not address(arg1):
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = idx
        mem[32] = sha3(address(arg1), 7)
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function setImageHash(string arg1) {
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
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor12[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor12.length = 0
            idx = 0
            while (uint255(stor12.length) * 0.5) + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor12[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 % 128 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setContractURI(string arg1) {
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
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while (uint255(stor15.length) * 0.5) + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while stor15.length.field_1 % 128 + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor4C6.length):
        if bool(stor4C6.length) == uint255(stor4C6.length) * 0.5 < 32:
            revert with 0, 34
        if not arg1.length:
            stor4C6.length = 0
            idx = sha3(1222)
            while sha3(1222) + ((uint255(stor4C6.length) * 0.5) + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            stor4C6.length = (2 * arg1.length) + 1
            s = sha3(1222)
            idx = 128
            while arg1.length + 128 > idx:
                stor[s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(1222) + (Mask(251, 0, arg1.length + 31) >> 5)
            while sha3(1222) + ((uint255(stor4C6.length) * 0.5) + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4C6.length) == stor4C6.length.field_1 % 128 < 32:
            revert with 0, 34
        if not arg1.length:
            stor4C6.length = 0
            idx = sha3(1222)
            while sha3(1222) + (stor4C6.length.field_1 % 128 + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            stor4C6.length = (2 * arg1.length) + 1
            s = sha3(1222)
            idx = 128
            while arg1.length + 128 > idx:
                stor[s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(1222) + (Mask(251, 0, arg1.length + 31) >> 5)
            while sha3(1222) + (stor4C6.length.field_1 % 128 + 31 / 32) > idx:
                stor[idx] = 0
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
            if not stor6[stor3[arg3]][address(msg.sender)]:
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
            if not stor6[stor3[arg3]][address(msg.sender)]:
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
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
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
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 0, 34
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
        mem[stor1.length.field_1 % 128 + ceil32(stor1.length.field_1 % 128) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        else:
            if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[(uint255(stor2.length) * 0.5) + ceil32(uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    else:
        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
            revert with 0, 34
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
        mem[stor2.length.field_1 % 128 + ceil32(stor2.length.field_1 % 128) + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)], mem[(2 * ceil32(stor2.length.field_1 % 128)) + 192 len 2 * ceil32(stor2.length.field_1 % 128)]), 
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
            if not stor6[stor3[arg3]][address(msg.sender)]:
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

function imageHash() {
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor12.length):
            if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor12.length):
                if 31 < uint255(stor12.length) * 0.5:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor12.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor12.length.field_8)
        else:
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor12.length.field_1 % 128:
                if 31 < stor12.length.field_1 % 128:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor12.length.field_8)
        mem[ceil32(uint255(stor12.length) * 0.5) + 192 len ceil32(uint255(stor12.length) * 0.5)] = mem[128 len ceil32(uint255(stor12.length) * 0.5)]
        if ceil32(uint255(stor12.length) * 0.5) > uint255(stor12.length) * 0.5:
            mem[(uint255(stor12.length) * 0.5) + ceil32(uint255(stor12.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)], mem[(2 * ceil32(uint255(stor12.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor12.length) * 0.5)]), 
    if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor12.length):
            if 31 < uint255(stor12.length) * 0.5:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while (uint255(stor12.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor12.length.field_8)
    else:
        if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor12.length.field_1 % 128:
            if 31 < stor12.length.field_1 % 128:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor12.length.field_8)
    mem[ceil32(stor12.length.field_1 % 128) + 192 len ceil32(stor12.length.field_1 % 128)] = mem[128 len ceil32(stor12.length.field_1 % 128)]
    if ceil32(stor12.length.field_1 % 128) > stor12.length.field_1 % 128:
        mem[stor12.length.field_1 % 128 + ceil32(stor12.length.field_1 % 128) + 192] = 0
    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1 % 128)], mem[(2 * ceil32(stor12.length.field_1 % 128)) + 192 len 2 * ceil32(stor12.length.field_1 % 128)]), 
}

function contractURI() {
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor15.length):
                if 31 < uint255(stor15.length) * 0.5:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor15.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
        else:
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor15.length.field_1 % 128:
                if 31 < stor15.length.field_1 % 128:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
        mem[ceil32(uint255(stor15.length) * 0.5) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
        if ceil32(uint255(stor15.length) * 0.5) > uint255(stor15.length) * 0.5:
            mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)], mem[(2 * ceil32(uint255(stor15.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor15.length) * 0.5)]), 
    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor15.length):
            if 31 < uint255(stor15.length) * 0.5:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while (uint255(stor15.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
    else:
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor15.length.field_1 % 128:
            if 31 < stor15.length.field_1 % 128:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
    mem[ceil32(stor15.length.field_1 % 128) + 192 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
    if ceil32(stor15.length.field_1 % 128) > stor15.length.field_1 % 128:
        mem[stor15.length.field_1 % 128 + ceil32(stor15.length.field_1 % 128) + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1 % 128)], mem[(2 * ceil32(stor15.length.field_1 % 128)) + 192 len 2 * ceil32(stor15.length.field_1 % 128)]), 
}

function sub_fe85d3c6(?) {
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor15.length):
                if 31 < uint255(stor15.length) * 0.5:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor15.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
        else:
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor15.length.field_1 % 128:
                if 31 < stor15.length.field_1 % 128:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
        mem[ceil32(uint255(stor15.length) * 0.5) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
        if ceil32(uint255(stor15.length) * 0.5) > uint255(stor15.length) * 0.5:
            mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)], mem[(2 * ceil32(uint255(stor15.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor15.length) * 0.5)]), 
    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor15.length):
            if 31 < uint255(stor15.length) * 0.5:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while (uint255(stor15.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
    else:
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor15.length.field_1 % 128:
            if 31 < stor15.length.field_1 % 128:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
    mem[ceil32(stor15.length.field_1 % 128) + 192 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
    if ceil32(stor15.length.field_1 % 128) > stor15.length.field_1 % 128:
        mem[stor15.length.field_1 % 128 + ceil32(stor15.length.field_1 % 128) + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1 % 128)], mem[(2 * ceil32(stor15.length.field_1 % 128)) + 192 len 2 * ceil32(stor15.length.field_1 % 128)]), 
}

function freeRollMint() payable {
    mem[64] = 96
    require not msg.value
    if stor11 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor11 = 2
    if not sub_6855c86b[msg.sender]:
        revert with 0, 'You don't have any free rolls!'
    mem[0] = msg.sender
    mem[32] = 1220
    sub_6855c86b[msg.sender] = 0
    if 1200 < tokenByIndex.length:
        revert with 0, 17
    if sub_6855c86b[msg.sender] <= -tokenByIndex.length + 1200:
        if sub_6855c86b[msg.sender] > 5:
            revert with 0, 'Minting too many at once.'
        idx = 0
        s = stor4C2
        while idx < sub_6855c86b[msg.sender]:
            if block.number < 1:
                revert with 0, 17
            _1471 = mem[64]
            mem[mem[64] + 32] = msg.sender
            mem[mem[64] + 64] = block.gasprice
            mem[mem[64] + 96] = block.number
            mem[mem[64] + 128] = block.timestamp
            mem[mem[64] + 160] = block.hash(block.number - 1)
            mem[mem[64] + 192] = sub_6855c86b[msg.sender]
            mem[mem[64] + 224] = idx
            _1472 = mem[64]
            mem[mem[64]] = 224
            mem[64] = mem[64] + 256
            _1474 = sha3(mem[_1472 + 32 len mem[_1472]])
            if not stor4C2:
                revert with 0, 18
            if sha3(mem[_1472 + 32 len mem[_1472]]) % stor4C2 >= 1200:
                revert with 0, 50
            if stor4C2 < 1:
                revert with 0, 17
            if sha3(mem[_1472 + 32 len mem[_1472]]) % stor4C2 != stor4C2 - 1:
                if stor4C2 - 1 >= 1200:
                    revert with 0, 50
                if sha3(mem[_1472 + 32 len mem[_1472]]) % stor4C2 >= 1200:
                    revert with 0, 50
                if uint256(stor17[stor4C2]):
                    stor18[sha3(mem[_1472 + 32 len mem[_1472]]) % stor4C2] = uint256(stor17[stor4C2])
                else:
                    stor18[sha3(mem[_1472 + 32 len mem[_1472]]) % stor4C2] = stor4C2 - 1
            if not stor4C2:
                revert with 0, 17
            stor4C2--
            mem[64] = _1471 + 288
            mem[_1471 + 256] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if stor18[sha3(mem[_1472 + 32 len mem[_1472]]) % stor4C2]:
                if ownerOf[stor18[_1474 % stor4C2]]:
                    revert with 0, 'ERC721: token already minted'
                stor10[stor18[_1474 % stor4C2]] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = stor18[_1474 % stor4C2]
                if msg.sender:
                    if msg.sender:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = stor18[_1474 % stor4C2]
                        stor8[stor18[_1474 % stor4C2]] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor10[stor18[_1474 % stor4C2]] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor10[stor18[_1474 % stor4C2]]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[stor18[_1474 % stor4C2]]
                    stor10[stor18[_1474 % stor4C2]] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor18[_1474 % stor4C2]
                mem[32] = 3
                ownerOf[stor18[_1474 % stor4C2]] = msg.sender
                emit Transfer(0, msg.sender, stor18[_1474 % stor4C2]);
                if ext_code.size(msg.sender):
                    mem[_1471 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_1471 + 292] = msg.sender
                    mem[_1471 + 324] = 0
                    mem[_1471 + 356] = stor18[_1474 % stor4C2]
                    mem[_1471 + 388] = 128
                    mem[_1471 + 420] = 0
                    t = 0
                    while t < 0:
                        mem[t + _1471 + 452] = mem[t + _1471 + 288]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor18[_1474 % stor4C2], 128, 0
                    mem[_1471 + 288] = ext_call.return_data[0]
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
                    mem[64] = _1471 + ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if ownerOf[_1474 % stor4C2]:
                    revert with 0, 'ERC721: token already minted'
                stor10[_1474 % stor4C2] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = _1474 % stor4C2
                if msg.sender:
                    if msg.sender:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = _1474 % stor4C2
                        stor8[_1474 % stor4C2] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor10[_1474 % stor4C2] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor10[_1474 % stor4C2]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[_1474 % stor4C2]
                    stor10[_1474 % stor4C2] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = _1474 % stor4C2
                mem[32] = 3
                ownerOf[_1474 % stor4C2] = msg.sender
                emit Transfer(0, msg.sender, _1474 % stor4C2);
                if ext_code.size(msg.sender):
                    mem[_1471 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_1471 + 292] = msg.sender
                    mem[_1471 + 324] = 0
                    mem[_1471 + 356] = _1474 % stor4C2
                    mem[_1471 + 388] = 128
                    mem[_1471 + 420] = 0
                    t = 0
                    while t < 0:
                        mem[t + _1471 + 452] = mem[t + _1471 + 288]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, _1474 % stor4C2, 128, 0
                    mem[_1471 + 288] = ext_call.return_data[0]
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
                    mem[64] = _1471 + ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not s:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - 1
            continue 
    else:
        if -tokenByIndex.length + 1200 > 5:
            revert with 0, 'Minting too many at once.'
        idx = 0
        s = stor4C2
        while idx < -tokenByIndex.length + 1200:
            if block.number < 1:
                revert with 0, 17
            _1475 = mem[64]
            mem[mem[64] + 32] = msg.sender
            mem[mem[64] + 64] = block.gasprice
            mem[mem[64] + 96] = block.number
            mem[mem[64] + 128] = block.timestamp
            mem[mem[64] + 160] = block.hash(block.number - 1)
            mem[mem[64] + 192] = -tokenByIndex.length + 1200
            mem[mem[64] + 224] = idx
            _1476 = mem[64]
            mem[mem[64]] = 224
            mem[64] = mem[64] + 256
            _1478 = sha3(mem[_1476 + 32 len mem[_1476]])
            if not stor4C2:
                revert with 0, 18
            if sha3(mem[_1476 + 32 len mem[_1476]]) % stor4C2 >= 1200:
                revert with 0, 50
            if stor4C2 < 1:
                revert with 0, 17
            if sha3(mem[_1476 + 32 len mem[_1476]]) % stor4C2 != stor4C2 - 1:
                if stor4C2 - 1 >= 1200:
                    revert with 0, 50
                if sha3(mem[_1476 + 32 len mem[_1476]]) % stor4C2 >= 1200:
                    revert with 0, 50
                if uint256(stor17[stor4C2]):
                    stor18[sha3(mem[_1476 + 32 len mem[_1476]]) % stor4C2] = uint256(stor17[stor4C2])
                else:
                    stor18[sha3(mem[_1476 + 32 len mem[_1476]]) % stor4C2] = stor4C2 - 1
            if not stor4C2:
                revert with 0, 17
            stor4C2--
            mem[64] = _1475 + 288
            mem[_1475 + 256] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if stor18[sha3(mem[_1476 + 32 len mem[_1476]]) % stor4C2]:
                if ownerOf[stor18[_1478 % stor4C2]]:
                    revert with 0, 'ERC721: token already minted'
                stor10[stor18[_1478 % stor4C2]] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = stor18[_1478 % stor4C2]
                if msg.sender:
                    if msg.sender:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = stor18[_1478 % stor4C2]
                        stor8[stor18[_1478 % stor4C2]] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor10[stor18[_1478 % stor4C2]] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor10[stor18[_1478 % stor4C2]]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[stor18[_1478 % stor4C2]]
                    stor10[stor18[_1478 % stor4C2]] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor18[_1478 % stor4C2]
                mem[32] = 3
                ownerOf[stor18[_1478 % stor4C2]] = msg.sender
                emit Transfer(0, msg.sender, stor18[_1478 % stor4C2]);
                if ext_code.size(msg.sender):
                    mem[_1475 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_1475 + 292] = msg.sender
                    mem[_1475 + 324] = 0
                    mem[_1475 + 356] = stor18[_1478 % stor4C2]
                    mem[_1475 + 388] = 128
                    mem[_1475 + 420] = 0
                    t = 0
                    while t < 0:
                        mem[t + _1475 + 452] = mem[t + _1475 + 288]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor18[_1478 % stor4C2], 128, 0
                    mem[_1475 + 288] = ext_call.return_data[0]
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
                    mem[64] = _1475 + ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if ownerOf[_1478 % stor4C2]:
                    revert with 0, 'ERC721: token already minted'
                stor10[_1478 % stor4C2] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = _1478 % stor4C2
                if msg.sender:
                    if msg.sender:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = _1478 % stor4C2
                        stor8[_1478 % stor4C2] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor10[_1478 % stor4C2] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor10[_1478 % stor4C2]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[_1478 % stor4C2]
                    stor10[_1478 % stor4C2] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = _1478 % stor4C2
                mem[32] = 3
                ownerOf[_1478 % stor4C2] = msg.sender
                emit Transfer(0, msg.sender, _1478 % stor4C2);
                if ext_code.size(msg.sender):
                    mem[_1475 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_1475 + 292] = msg.sender
                    mem[_1475 + 324] = 0
                    mem[_1475 + 356] = _1478 % stor4C2
                    mem[_1475 + 388] = 128
                    mem[_1475 + 420] = 0
                    t = 0
                    while t < 0:
                        mem[t + _1475 + 452] = mem[t + _1475 + 288]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, _1478 % stor4C2, 128, 0
                    mem[_1475 + 288] = ext_call.return_data[0]
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
                    mem[64] = _1475 + ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not s:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - 1
            continue 
    stor4C2 = s
    stor11 = 1
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor11 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor11 = 2
    if not isSaleOn:
        revert with 0, 'Sale hasn't started.'
    if tokenByIndex.length > !arg1:
        revert with 0, 17
    if tokenByIndex.length + arg1 > 1200:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There aren't this many AvaLand left.'
    if price and arg1 > -1 / price:
        revert with 0, 17
    if msg.value < price * arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Too little sent, please send more AVAX.'
    if msg.value <= price * arg1:
        if arg1 > 5:
            revert with 0, 'Minting too many at once.'
        idx = 0
        s = stor4C2
        while idx < arg1:
            if block.number < 1:
                revert with 0, 17
            _1474 = mem[64]
            mem[mem[64] + 32] = msg.sender
            mem[mem[64] + 64] = block.gasprice
            mem[mem[64] + 96] = block.number
            mem[mem[64] + 128] = block.timestamp
            mem[mem[64] + 160] = block.hash(block.number - 1)
            mem[mem[64] + 192] = arg1
            mem[mem[64] + 224] = idx
            _1475 = mem[64]
            mem[mem[64]] = 224
            mem[64] = mem[64] + 256
            _1477 = sha3(mem[_1475 + 32 len mem[_1475]])
            if not stor4C2:
                revert with 0, 18
            if sha3(mem[_1475 + 32 len mem[_1475]]) % stor4C2 >= 1200:
                revert with 0, 50
            if stor4C2 < 1:
                revert with 0, 17
            if sha3(mem[_1475 + 32 len mem[_1475]]) % stor4C2 != stor4C2 - 1:
                if stor4C2 - 1 >= 1200:
                    revert with 0, 50
                if sha3(mem[_1475 + 32 len mem[_1475]]) % stor4C2 >= 1200:
                    revert with 0, 50
                if uint256(stor17[stor4C2]):
                    stor18[sha3(mem[_1475 + 32 len mem[_1475]]) % stor4C2] = uint256(stor17[stor4C2])
                else:
                    stor18[sha3(mem[_1475 + 32 len mem[_1475]]) % stor4C2] = stor4C2 - 1
            if not stor4C2:
                revert with 0, 17
            stor4C2--
            mem[64] = _1474 + 288
            mem[_1474 + 256] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if stor18[sha3(mem[_1475 + 32 len mem[_1475]]) % stor4C2]:
                if ownerOf[stor18[_1477 % stor4C2]]:
                    revert with 0, 'ERC721: token already minted'
                stor10[stor18[_1477 % stor4C2]] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = stor18[_1477 % stor4C2]
                if msg.sender:
                    if msg.sender:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = stor18[_1477 % stor4C2]
                        stor8[stor18[_1477 % stor4C2]] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor10[stor18[_1477 % stor4C2]] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor10[stor18[_1477 % stor4C2]]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[stor18[_1477 % stor4C2]]
                    stor10[stor18[_1477 % stor4C2]] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor18[_1477 % stor4C2]
                mem[32] = 3
                ownerOf[stor18[_1477 % stor4C2]] = msg.sender
                emit Transfer(0, msg.sender, stor18[_1477 % stor4C2]);
                if ext_code.size(msg.sender):
                    mem[_1474 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_1474 + 292] = msg.sender
                    mem[_1474 + 324] = 0
                    mem[_1474 + 356] = stor18[_1477 % stor4C2]
                    mem[_1474 + 388] = 128
                    mem[_1474 + 420] = 0
                    t = 0
                    while t < 0:
                        mem[t + _1474 + 452] = mem[t + _1474 + 288]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor18[_1477 % stor4C2], 128, 0
                    mem[_1474 + 288] = ext_call.return_data[0]
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
                    mem[64] = _1474 + ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if ownerOf[_1477 % stor4C2]:
                    revert with 0, 'ERC721: token already minted'
                stor10[_1477 % stor4C2] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = _1477 % stor4C2
                if msg.sender:
                    if msg.sender:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = _1477 % stor4C2
                        stor8[_1477 % stor4C2] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor10[_1477 % stor4C2] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor10[_1477 % stor4C2]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[_1477 % stor4C2]
                    stor10[_1477 % stor4C2] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = _1477 % stor4C2
                mem[32] = 3
                ownerOf[_1477 % stor4C2] = msg.sender
                emit Transfer(0, msg.sender, _1477 % stor4C2);
                if ext_code.size(msg.sender):
                    mem[_1474 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_1474 + 292] = msg.sender
                    mem[_1474 + 324] = 0
                    mem[_1474 + 356] = _1477 % stor4C2
                    mem[_1474 + 388] = 128
                    mem[_1474 + 420] = 0
                    t = 0
                    while t < 0:
                        mem[t + _1474 + 452] = mem[t + _1474 + 288]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, _1477 % stor4C2, 128, 0
                    mem[_1474 + 288] = ext_call.return_data[0]
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
                    mem[64] = _1474 + ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not s:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - 1
            continue 
    else:
        if msg.value < price * arg1:
            revert with 0, 17
        call msg.sender with:
           value msg.value - (price * arg1) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 > 5:
            revert with 0, 'Minting too many at once.'
        idx = 0
        s = stor4C2
        while idx < arg1:
            if block.number < 1:
                revert with 0, 17
            _1478 = mem[64]
            mem[mem[64] + 32] = msg.sender
            mem[mem[64] + 64] = block.gasprice
            mem[mem[64] + 96] = block.number
            mem[mem[64] + 128] = block.timestamp
            mem[mem[64] + 160] = block.hash(block.number - 1)
            mem[mem[64] + 192] = arg1
            mem[mem[64] + 224] = idx
            _1479 = mem[64]
            mem[mem[64]] = 224
            mem[64] = mem[64] + 256
            _1481 = sha3(mem[_1479 + 32 len mem[_1479]])
            if not stor4C2:
                revert with 0, 18
            if sha3(mem[_1479 + 32 len mem[_1479]]) % stor4C2 >= 1200:
                revert with 0, 50
            if stor4C2 < 1:
                revert with 0, 17
            if sha3(mem[_1479 + 32 len mem[_1479]]) % stor4C2 != stor4C2 - 1:
                if stor4C2 - 1 >= 1200:
                    revert with 0, 50
                if sha3(mem[_1479 + 32 len mem[_1479]]) % stor4C2 >= 1200:
                    revert with 0, 50
                if uint256(stor17[stor4C2]):
                    stor18[sha3(mem[_1479 + 32 len mem[_1479]]) % stor4C2] = uint256(stor17[stor4C2])
                else:
                    stor18[sha3(mem[_1479 + 32 len mem[_1479]]) % stor4C2] = stor4C2 - 1
            if not stor4C2:
                revert with 0, 17
            stor4C2--
            mem[64] = _1478 + 288
            mem[_1478 + 256] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if stor18[sha3(mem[_1479 + 32 len mem[_1479]]) % stor4C2]:
                if ownerOf[stor18[_1481 % stor4C2]]:
                    revert with 0, 'ERC721: token already minted'
                stor10[stor18[_1481 % stor4C2]] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = stor18[_1481 % stor4C2]
                if msg.sender:
                    if msg.sender:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = stor18[_1481 % stor4C2]
                        stor8[stor18[_1481 % stor4C2]] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor10[stor18[_1481 % stor4C2]] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor10[stor18[_1481 % stor4C2]]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[stor18[_1481 % stor4C2]]
                    stor10[stor18[_1481 % stor4C2]] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor18[_1481 % stor4C2]
                mem[32] = 3
                ownerOf[stor18[_1481 % stor4C2]] = msg.sender
                emit Transfer(0, msg.sender, stor18[_1481 % stor4C2]);
                if ext_code.size(msg.sender):
                    mem[_1478 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_1478 + 292] = msg.sender
                    mem[_1478 + 324] = 0
                    mem[_1478 + 356] = stor18[_1481 % stor4C2]
                    mem[_1478 + 388] = 128
                    mem[_1478 + 420] = 0
                    t = 0
                    while t < 0:
                        mem[t + _1478 + 452] = mem[t + _1478 + 288]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor18[_1481 % stor4C2], 128, 0
                    mem[_1478 + 288] = ext_call.return_data[0]
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
                    mem[64] = _1478 + ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if ownerOf[_1481 % stor4C2]:
                    revert with 0, 'ERC721: token already minted'
                stor10[_1481 % stor4C2] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = _1481 % stor4C2
                if msg.sender:
                    if msg.sender:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = _1481 % stor4C2
                        stor8[_1481 % stor4C2] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor10[_1481 % stor4C2] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor10[_1481 % stor4C2]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[_1481 % stor4C2]
                    stor10[_1481 % stor4C2] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = _1481 % stor4C2
                mem[32] = 3
                ownerOf[_1481 % stor4C2] = msg.sender
                emit Transfer(0, msg.sender, _1481 % stor4C2);
                if ext_code.size(msg.sender):
                    mem[_1478 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_1478 + 292] = msg.sender
                    mem[_1478 + 324] = 0
                    mem[_1478 + 356] = _1481 % stor4C2
                    mem[_1478 + 388] = 128
                    mem[_1478 + 420] = 0
                    t = 0
                    while t < 0:
                        mem[t + _1478 + 452] = mem[t + _1478 + 288]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, _1481 % stor4C2, 128, 0
                    mem[_1478 + 288] = ext_call.return_data[0]
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
                    mem[64] = _1478 + ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not s:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - 1
            continue 
    stor4C2 = s
    stor11 = 1
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor4C6.length):
        if bool(stor4C6.length) == uint255(stor4C6.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4C6.length):
            if bool(stor4C6.length) == uint255(stor4C6.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor4C6.length):
                if not arg1:
                    if not uint255(stor4C6.length) * 0.5:
                        return '', 0
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + 288 len ceil32(uint255(stor4C6.length) * 0.5)] = mem[128 len ceil32(uint255(stor4C6.length) * 0.5)]
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 288] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 289] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 294] = 32
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 326] = mem[ceil32(uint255(stor4C6.length) * 0.5) + 256]
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 358 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256])] = mem[ceil32(uint255(stor4C6.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256])]
                    if ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256]) > mem[ceil32(uint255(stor4C6.length) * 0.5) + 256]:
                        mem[mem[ceil32(uint255(stor4C6.length) * 0.5) + 256] + ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 358] = 0
                    return Array(len=mem[ceil32(uint255(stor4C6.length) * 0.5) + 256], data=mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 358 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256])]), 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] = s
                if s:
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor4C6.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor4C6.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 160] = 5
                mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 192] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if not uint255(stor4C6.length) * 0.5:
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224] = 32
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 256] = mem[ceil32(uint255(stor4C6.length) * 0.5) + 128]
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 288 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 128])] = mem[ceil32(uint255(stor4C6.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 128])]
                    if ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 128]) > mem[ceil32(uint255(stor4C6.length) * 0.5) + 128]:
                        mem[mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 288] = 0
                    return Array(len=mem[ceil32(uint255(stor4C6.length) * 0.5) + 128], data=mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 288 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 128])]), 
                mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 256 len ceil32(uint255(stor4C6.length) * 0.5)] = mem[128 len ceil32(uint255(stor4C6.length) * 0.5)]
                if ceil32(uint255(stor4C6.length) * 0.5) > uint255(stor4C6.length) * 0.5:
                    mem[(uint255(stor4C6.length) * 0.5) + ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 256] = 0
                mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 128])] = mem[ceil32(uint255(stor4C6.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 128])]
                mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + 261] = 32
                mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + 293] = mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224]
                mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + 325 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224])] = mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224]) <= mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224]:
                    return Array(len=mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224], data=mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + 325 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224])]), 
                mem[mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224] + ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + 325] = 0
                return 32, mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + 293 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224]) + 32], 
            if 31 >= uint255(stor4C6.length) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor4C6.length.field_8)
                if not arg1:
                    if not uint255(stor4C6.length) * 0.5:
                        return '', 0
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + 288 len ceil32(uint255(stor4C6.length) * 0.5)] = mem[128 len ceil32(uint255(stor4C6.length) * 0.5)]
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 288] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 289] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 294] = 32
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 326] = mem[ceil32(uint255(stor4C6.length) * 0.5) + 256]
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 358 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256])] = mem[ceil32(uint255(stor4C6.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256])]
                    if ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256]) > mem[ceil32(uint255(stor4C6.length) * 0.5) + 256]:
                        mem[mem[ceil32(uint255(stor4C6.length) * 0.5) + 256] + ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 358] = 0
                    return Array(len=mem[ceil32(uint255(stor4C6.length) * 0.5) + 256], data=mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 358 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256])]), 
            else:
                mem[128] = uint256(stor4C6.field_0)
                idx = 128
                s = sha3(1222)
                while (uint255(stor4C6.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not arg1:
                    if not uint255(stor4C6.length) * 0.5:
                        var33001 = 32
                        return '', 0
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + 288 len ceil32(uint255(stor4C6.length) * 0.5)] = mem[128 len ceil32(uint255(stor4C6.length) * 0.5)]
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 288] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 289] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 294] = 32
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 326] = mem[ceil32(uint255(stor4C6.length) * 0.5) + 256]
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 358 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256])] = mem[ceil32(uint255(stor4C6.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256])]
                    if ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256]) > mem[ceil32(uint255(stor4C6.length) * 0.5) + 256]:
                        mem[mem[ceil32(uint255(stor4C6.length) * 0.5) + 256] + ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 358] = 0
                    return Array(len=mem[ceil32(uint255(stor4C6.length) * 0.5) + 256], data=mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 358 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256])]), 
            ('param', 'arg1')
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] = s
            if s:
                mem[ceil32(uint255(stor4C6.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor4C6.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor4C6.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 160] = 5
            mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 192] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if not uint255(stor4C6.length) * 0.5:
                mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224] = 32
                mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 256] = mem[ceil32(uint255(stor4C6.length) * 0.5) + 128]
                mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 288 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 128])] = mem[ceil32(uint255(stor4C6.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 128])]
                if ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 128]) > mem[ceil32(uint255(stor4C6.length) * 0.5) + 128]:
                    mem[mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 288] = 0
                return Array(len=mem[ceil32(uint255(stor4C6.length) * 0.5) + 128], data=mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 288 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 128])]), 
            mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 256 len ceil32(uint255(stor4C6.length) * 0.5)] = mem[128 len ceil32(uint255(stor4C6.length) * 0.5)]
            if ceil32(uint255(stor4C6.length) * 0.5) > uint255(stor4C6.length) * 0.5:
                mem[(uint255(stor4C6.length) * 0.5) + ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 256] = 0
            mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 128])] = mem[ceil32(uint255(stor4C6.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 128])]
            mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + 261] = 32
            mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + 293] = mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224]
            mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + 325 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224])] = mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224]) > mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224]:
                mem[mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224] + ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + 325] = 0
            return Array(len=mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224], data=mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + 325 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224])]), 
        if bool(stor4C6.length) == stor4C6.length.field_1 % 128 < 32:
            revert with 0, 34
        if not stor4C6.length.field_1 % 128:
            if not arg1:
                if not uint255(stor4C6.length) * 0.5:
                    return '', 0
                mem[ceil32(uint255(stor4C6.length) * 0.5) + 288 len ceil32(uint255(stor4C6.length) * 0.5)] = mem[128 len ceil32(uint255(stor4C6.length) * 0.5)]
                mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 288] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 289] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 294] = 32
                mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 326] = mem[ceil32(uint255(stor4C6.length) * 0.5) + 256]
                mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 358 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256])] = mem[ceil32(uint255(stor4C6.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256])]
                if ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256]) > mem[ceil32(uint255(stor4C6.length) * 0.5) + 256]:
                    mem[mem[ceil32(uint255(stor4C6.length) * 0.5) + 256] + ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 358] = 0
                return Array(len=mem[ceil32(uint255(stor4C6.length) * 0.5) + 256], data=mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 358 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256])]), 
        else:
            if 31 >= stor4C6.length.field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor4C6.length.field_8)
                if not arg1:
                    if not uint255(stor4C6.length) * 0.5:
                        return '', 0
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + 288 len ceil32(uint255(stor4C6.length) * 0.5)] = mem[128 len ceil32(uint255(stor4C6.length) * 0.5)]
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 288] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 289] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 294] = 32
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 326] = mem[ceil32(uint255(stor4C6.length) * 0.5) + 256]
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 358 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256])] = mem[ceil32(uint255(stor4C6.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256])]
                    if ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256]) > mem[ceil32(uint255(stor4C6.length) * 0.5) + 256]:
                        mem[mem[ceil32(uint255(stor4C6.length) * 0.5) + 256] + ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 358] = 0
                    return Array(len=mem[ceil32(uint255(stor4C6.length) * 0.5) + 256], data=mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 358 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256])]), 
            else:
                mem[128] = uint256(stor4C6.field_0)
                idx = 128
                s = sha3(1222)
                while stor4C6.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not arg1:
                    if not uint255(stor4C6.length) * 0.5:
                        var34001 = 32
                        return '', 0
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + 288 len ceil32(uint255(stor4C6.length) * 0.5)] = mem[128 len ceil32(uint255(stor4C6.length) * 0.5)]
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 288] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 289] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 294] = 32
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 326] = mem[ceil32(uint255(stor4C6.length) * 0.5) + 256]
                    mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 358 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256])] = mem[ceil32(uint255(stor4C6.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256])]
                    if ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256]) > mem[ceil32(uint255(stor4C6.length) * 0.5) + 256]:
                        mem[mem[ceil32(uint255(stor4C6.length) * 0.5) + 256] + ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 358] = 0
                    return Array(len=mem[ceil32(uint255(stor4C6.length) * 0.5) + 256], data=mem[ceil32(uint255(stor4C6.length) * 0.5) + (uint255(stor4C6.length) * 0.5) + 358 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 256])]), 
        ('param', 'arg1')
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] = s
        if s:
            mem[ceil32(uint255(stor4C6.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor4C6.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor4C6.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 160] = 5
        mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 192] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if not uint255(stor4C6.length) * 0.5:
            mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224] = 32
            mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 256] = mem[ceil32(uint255(stor4C6.length) * 0.5) + 128]
            mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 288 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 128])] = mem[ceil32(uint255(stor4C6.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 128])]
            if ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 128]) > mem[ceil32(uint255(stor4C6.length) * 0.5) + 128]:
                mem[mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 288] = 0
            return Array(len=mem[ceil32(uint255(stor4C6.length) * 0.5) + 128], data=mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 288 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 128])]), 
        mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 256 len ceil32(uint255(stor4C6.length) * 0.5)] = mem[128 len ceil32(uint255(stor4C6.length) * 0.5)]
        if ceil32(uint255(stor4C6.length) * 0.5) > uint255(stor4C6.length) * 0.5:
            mem[(uint255(stor4C6.length) * 0.5) + ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 256] = 0
        mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 128])] = mem[ceil32(uint255(stor4C6.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + 128])]
        mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + 261] = 32
        mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + 293] = mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224]
        mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + 325 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224])] = mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224])]
        if ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224]) <= mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224]:
            return Array(len=mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224], data=mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + 325 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224])]), 
        mem[mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224] + ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + 325] = 0
        return 32, mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + (uint255(stor4C6.length) * 0.5) + mem[ceil32(uint255(stor4C6.length) * 0.5) + 128] + 293 len ceil32(mem[ceil32(uint255(stor4C6.length) * 0.5) + ceil32(s) + 224]) + 32], 
    if bool(stor4C6.length) == stor4C6.length.field_1 % 128 < 32:
        revert with 0, 34
    mem[96] = stor4C6.length.field_1 % 128
    if bool(stor4C6.length):
        if bool(stor4C6.length) == uint255(stor4C6.length) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor4C6.length):
            if not arg1:
                if not stor4C6.length.field_1 % 128:
                    return '', 0
                mem[ceil32(stor4C6.length.field_1 % 128) + 288 len ceil32(stor4C6.length.field_1 % 128)] = mem[128 len ceil32(stor4C6.length.field_1 % 128)]
                mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 288] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 289] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 294] = 32
                mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 326] = mem[ceil32(stor4C6.length.field_1 % 128) + 256]
                mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256])] = mem[ceil32(stor4C6.length.field_1 % 128) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256])]
                if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 256]:
                    return Array(len=mem[ceil32(stor4C6.length.field_1 % 128) + 256], data=mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256])]), 
                mem[mem[ceil32(stor4C6.length.field_1 % 128) + 256] + ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 358] = 0
                return 32, mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 326 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor4C6.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor4C6.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 160] = 5
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 192] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if not stor4C6.length.field_1 % 128:
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224] = 32
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = mem[ceil32(stor4C6.length.field_1 % 128) + 128]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) > mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                        mem[mem[ceil32(stor4C6.length.field_1 % 128) + 128] + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288] = 0
                    return Array(len=mem[ceil32(stor4C6.length.field_1 % 128) + 128], data=mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]), 
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(stor4C6.length.field_1 % 128)] = mem[128 len ceil32(stor4C6.length.field_1 % 128)]
                if ceil32(stor4C6.length.field_1 % 128) <= stor4C6.length.field_1 % 128:
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
                    if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                        _9868 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9868)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9868)]
                        if ceil32(_9868) > _9868:
                            mem[_9868 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                        return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9868) + 32], 
                    _9870 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9870)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9870)]
                    if ceil32(_9870) > _9870:
                        mem[_9870 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                    return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9870) + 32], 
                mem[stor4C6.length.field_1 % 128 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = 0
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
                if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                    _9872 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9872)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9872)]
                    if ceil32(_9872) > _9872:
                        mem[_9872 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                    return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9872) + 32], 
                _9874 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9874)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9874)]
                if ceil32(_9874) > _9874:
                    mem[_9874 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9874) + 32], 
            mem[ceil32(stor4C6.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor4C6.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 160] = 5
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 192] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if not stor4C6.length.field_1 % 128:
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224] = 32
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = mem[ceil32(stor4C6.length.field_1 % 128) + 128]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) > mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                    mem[mem[ceil32(stor4C6.length.field_1 % 128) + 128] + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288] = 0
                return Array(len=mem[ceil32(stor4C6.length.field_1 % 128) + 128], data=mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]), 
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(stor4C6.length.field_1 % 128)] = mem[128 len ceil32(stor4C6.length.field_1 % 128)]
            if ceil32(stor4C6.length.field_1 % 128) <= stor4C6.length.field_1 % 128:
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
                if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                    _9876 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9876)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9876)]
                    if ceil32(_9876) > _9876:
                        mem[_9876 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                    return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9876) + 32], 
                _9878 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9878)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9878)]
                if ceil32(_9878) > _9878:
                    mem[_9878 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9878) + 32], 
            mem[stor4C6.length.field_1 % 128 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = 0
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
            if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                _9880 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9880)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9880)]
                if ceil32(_9880) > _9880:
                    mem[_9880 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9880) + 32], 
            _9882 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9882)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9882)]
            if ceil32(_9882) > _9882:
                mem[_9882 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
            return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9882) + 32], 
        if 31 >= uint255(stor4C6.length) * 0.5:
            mem[128] = 256 * Mask(248, 0, stor4C6.length.field_8)
            if not arg1:
                if not stor4C6.length.field_1 % 128:
                    return '', 0
                mem[ceil32(stor4C6.length.field_1 % 128) + 288 len ceil32(stor4C6.length.field_1 % 128)] = mem[128 len ceil32(stor4C6.length.field_1 % 128)]
                mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 288] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 289] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 294] = 32
                mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 326] = mem[ceil32(stor4C6.length.field_1 % 128) + 256]
                mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256])] = mem[ceil32(stor4C6.length.field_1 % 128) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256])]
                if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 256]:
                    return Array(len=mem[ceil32(stor4C6.length.field_1 % 128) + 256], data=mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256])]), 
                mem[mem[ceil32(stor4C6.length.field_1 % 128) + 256] + ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 358] = 0
                return 32, mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 326 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor4C6.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor4C6.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 160] = 5
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 192] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if not stor4C6.length.field_1 % 128:
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224] = 32
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = mem[ceil32(stor4C6.length.field_1 % 128) + 128]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) > mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                        mem[mem[ceil32(stor4C6.length.field_1 % 128) + 128] + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288] = 0
                    return Array(len=mem[ceil32(stor4C6.length.field_1 % 128) + 128], data=mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]), 
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(stor4C6.length.field_1 % 128)] = mem[128 len ceil32(stor4C6.length.field_1 % 128)]
                if ceil32(stor4C6.length.field_1 % 128) <= stor4C6.length.field_1 % 128:
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
                    if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                        _9884 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9884)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9884)]
                        if ceil32(_9884) > _9884:
                            mem[_9884 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                        return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9884) + 32], 
                    _9886 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9886)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9886)]
                    if ceil32(_9886) > _9886:
                        mem[_9886 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                    return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9886) + 32], 
                mem[stor4C6.length.field_1 % 128 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = 0
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
                if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                    _9888 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9888)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9888)]
                    if ceil32(_9888) > _9888:
                        mem[_9888 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                    return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9888) + 32], 
                _9890 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9890)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9890)]
                if ceil32(_9890) > _9890:
                    mem[_9890 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9890) + 32], 
            mem[ceil32(stor4C6.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor4C6.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 160] = 5
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 192] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if not stor4C6.length.field_1 % 128:
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224] = 32
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = mem[ceil32(stor4C6.length.field_1 % 128) + 128]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) > mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                    mem[mem[ceil32(stor4C6.length.field_1 % 128) + 128] + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288] = 0
                return Array(len=mem[ceil32(stor4C6.length.field_1 % 128) + 128], data=mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]), 
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(stor4C6.length.field_1 % 128)] = mem[128 len ceil32(stor4C6.length.field_1 % 128)]
            if ceil32(stor4C6.length.field_1 % 128) <= stor4C6.length.field_1 % 128:
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
                if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                    _9892 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9892)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9892)]
                    if ceil32(_9892) > _9892:
                        mem[_9892 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                    return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9892) + 32], 
                _9894 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9894)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9894)]
                if ceil32(_9894) > _9894:
                    mem[_9894 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9894) + 32], 
            mem[stor4C6.length.field_1 % 128 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = 0
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
            if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                _9896 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9896)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9896)]
                if ceil32(_9896) > _9896:
                    mem[_9896 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9896) + 32], 
            _9898 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9898)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9898)]
            if ceil32(_9898) > _9898:
                mem[_9898 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
            return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9898) + 32], 
        mem[0] = 1222
        mem[128] = uint256(stor4C6.field_0)
        idx = 128
        s = sha3(1222)
        while (uint255(stor4C6.length) * 0.5) + 96 > idx:
            mem[idx + 32] = stor1[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        if not arg1:
            if not stor4C6.length.field_1 % 128:
                var34001 = 32
                return '', 0
            mem[ceil32(stor4C6.length.field_1 % 128) + 288 len ceil32(stor4C6.length.field_1 % 128)] = mem[128 len ceil32(stor4C6.length.field_1 % 128)]
            mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 288] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 289] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 294] = 32
            mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 326] = mem[ceil32(stor4C6.length.field_1 % 128) + 256]
            mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256])] = mem[ceil32(stor4C6.length.field_1 % 128) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256])]
            if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 256]:
                return Array(len=mem[ceil32(stor4C6.length.field_1 % 128) + 256], data=mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256])]), 
            mem[mem[ceil32(stor4C6.length.field_1 % 128) + 256] + ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 358] = 0
            return 32, mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 326 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor4C6.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor4C6.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 160] = 5
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 192] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if not stor4C6.length.field_1 % 128:
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224] = 32
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = mem[ceil32(stor4C6.length.field_1 % 128) + 128]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) > mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                    mem[mem[ceil32(stor4C6.length.field_1 % 128) + 128] + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288] = 0
                return Array(len=mem[ceil32(stor4C6.length.field_1 % 128) + 128], data=mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]), 
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(stor4C6.length.field_1 % 128)] = mem[128 len ceil32(stor4C6.length.field_1 % 128)]
            if ceil32(stor4C6.length.field_1 % 128) <= stor4C6.length.field_1 % 128:
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 0
                mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
                if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                    _11276 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_11276)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_11276)]
                    if ceil32(_11276) > _11276:
                        mem[_11276 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                    return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_11276) + 32], 
                _11278 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_11278)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_11278)]
                if ceil32(_11278) > _11278:
                    mem[_11278 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_11278) + 32], 
            mem[stor4C6.length.field_1 % 128 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = 0
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
            if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                _11280 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_11280)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_11280)]
                if ceil32(_11280) > _11280:
                    mem[_11280 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_11280) + 32], 
            _11282 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_11282)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_11282)]
            if ceil32(_11282) > _11282:
                mem[_11282 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
            return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_11282) + 32], 
        mem[ceil32(stor4C6.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor4C6.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 160] = 5
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 192] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if not stor4C6.length.field_1 % 128:
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224] = 32
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = mem[ceil32(stor4C6.length.field_1 % 128) + 128]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) > mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                mem[mem[ceil32(stor4C6.length.field_1 % 128) + 128] + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288] = 0
            return Array(len=mem[ceil32(stor4C6.length.field_1 % 128) + 128], data=mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]), 
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(stor4C6.length.field_1 % 128)] = mem[128 len ceil32(stor4C6.length.field_1 % 128)]
        if ceil32(stor4C6.length.field_1 % 128) <= stor4C6.length.field_1 % 128:
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 0
            mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
            if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                _11284 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_11284)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_11284)]
                if ceil32(_11284) > _11284:
                    mem[_11284 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_11284) + 32], 
            _11286 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_11286)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_11286)]
            if ceil32(_11286) > _11286:
                mem[_11286 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
            return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_11286) + 32], 
        mem[stor4C6.length.field_1 % 128 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = 0
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
        if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
            _11288 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_11288)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_11288)]
            if ceil32(_11288) > _11288:
                mem[_11288 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
            return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_11288) + 32], 
        _11290 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_11290)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_11290)]
        if ceil32(_11290) > _11290:
            mem[_11290 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
        return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_11290) + 32], 
    if bool(stor4C6.length) == stor4C6.length.field_1 % 128 < 32:
        revert with 0, 34
    if not stor4C6.length.field_1 % 128:
        if not arg1:
            if not stor4C6.length.field_1 % 128:
                return '', 0
            mem[ceil32(stor4C6.length.field_1 % 128) + 288 len ceil32(stor4C6.length.field_1 % 128)] = mem[128 len ceil32(stor4C6.length.field_1 % 128)]
            mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 288] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 289] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 294] = 32
            mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 326] = mem[ceil32(stor4C6.length.field_1 % 128) + 256]
            mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256])] = mem[ceil32(stor4C6.length.field_1 % 128) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256])]
            if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 256]:
                return Array(len=mem[ceil32(stor4C6.length.field_1 % 128) + 256], data=mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256])]), 
            mem[mem[ceil32(stor4C6.length.field_1 % 128) + 256] + ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 358] = 0
            return 32, mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 326 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor4C6.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor4C6.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 160] = 5
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 192] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if not stor4C6.length.field_1 % 128:
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224] = 32
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = mem[ceil32(stor4C6.length.field_1 % 128) + 128]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) > mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                    mem[mem[ceil32(stor4C6.length.field_1 % 128) + 128] + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288] = 0
                return Array(len=mem[ceil32(stor4C6.length.field_1 % 128) + 128], data=mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]), 
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(stor4C6.length.field_1 % 128)] = mem[128 len ceil32(stor4C6.length.field_1 % 128)]
            if ceil32(stor4C6.length.field_1 % 128) <= stor4C6.length.field_1 % 128:
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
                if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                    _9900 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9900)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9900)]
                    if ceil32(_9900) > _9900:
                        mem[_9900 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                    return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9900) + 32], 
                _9902 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9902)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9902)]
                if ceil32(_9902) > _9902:
                    mem[_9902 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9902) + 32], 
            mem[stor4C6.length.field_1 % 128 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = 0
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
            if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                _9904 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9904)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9904)]
                if ceil32(_9904) > _9904:
                    mem[_9904 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9904) + 32], 
            _9906 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9906)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9906)]
            if ceil32(_9906) > _9906:
                mem[_9906 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
            return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9906) + 32], 
        mem[ceil32(stor4C6.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor4C6.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 160] = 5
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 192] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if not stor4C6.length.field_1 % 128:
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224] = 32
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = mem[ceil32(stor4C6.length.field_1 % 128) + 128]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) > mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                mem[mem[ceil32(stor4C6.length.field_1 % 128) + 128] + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288] = 0
            return Array(len=mem[ceil32(stor4C6.length.field_1 % 128) + 128], data=mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]), 
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(stor4C6.length.field_1 % 128)] = mem[128 len ceil32(stor4C6.length.field_1 % 128)]
        if ceil32(stor4C6.length.field_1 % 128) <= stor4C6.length.field_1 % 128:
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
            if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                _9908 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9908)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9908)]
                if ceil32(_9908) > _9908:
                    mem[_9908 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9908) + 32], 
            _9910 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9910)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9910)]
            if ceil32(_9910) > _9910:
                mem[_9910 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
            return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9910) + 32], 
        mem[stor4C6.length.field_1 % 128 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = 0
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
        if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
            _9912 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9912)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9912)]
            if ceil32(_9912) > _9912:
                mem[_9912 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
            return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9912) + 32], 
        _9914 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9914)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9914)]
        if ceil32(_9914) > _9914:
            mem[_9914 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
        return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9914) + 32], 
    if 31 >= stor4C6.length.field_1 % 128:
        mem[128] = 256 * Mask(248, 0, stor4C6.length.field_8)
        if not arg1:
            if not stor4C6.length.field_1 % 128:
                return '', 0
            mem[ceil32(stor4C6.length.field_1 % 128) + 288 len ceil32(stor4C6.length.field_1 % 128)] = mem[128 len ceil32(stor4C6.length.field_1 % 128)]
            mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 288] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 289] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 294] = 32
            mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 326] = mem[ceil32(stor4C6.length.field_1 % 128) + 256]
            mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256])] = mem[ceil32(stor4C6.length.field_1 % 128) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256])]
            if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 256]:
                return Array(len=mem[ceil32(stor4C6.length.field_1 % 128) + 256], data=mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256])]), 
            mem[mem[ceil32(stor4C6.length.field_1 % 128) + 256] + ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 358] = 0
            return 32, mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 326 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor4C6.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor4C6.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 160] = 5
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 192] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if not stor4C6.length.field_1 % 128:
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224] = 32
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = mem[ceil32(stor4C6.length.field_1 % 128) + 128]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) > mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                    mem[mem[ceil32(stor4C6.length.field_1 % 128) + 128] + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288] = 0
                return Array(len=mem[ceil32(stor4C6.length.field_1 % 128) + 128], data=mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]), 
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(stor4C6.length.field_1 % 128)] = mem[128 len ceil32(stor4C6.length.field_1 % 128)]
            if ceil32(stor4C6.length.field_1 % 128) <= stor4C6.length.field_1 % 128:
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
                if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                    _9916 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9916)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9916)]
                    if ceil32(_9916) > _9916:
                        mem[_9916 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                    return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9916) + 32], 
                _9918 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9918)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9918)]
                if ceil32(_9918) > _9918:
                    mem[_9918 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9918) + 32], 
            mem[stor4C6.length.field_1 % 128 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = 0
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
            if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                _9920 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9920)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9920)]
                if ceil32(_9920) > _9920:
                    mem[_9920 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9920) + 32], 
            _9922 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9922)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9922)]
            if ceil32(_9922) > _9922:
                mem[_9922 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
            return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9922) + 32], 
        mem[ceil32(stor4C6.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor4C6.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 160] = 5
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 192] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if not stor4C6.length.field_1 % 128:
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224] = 32
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = mem[ceil32(stor4C6.length.field_1 % 128) + 128]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) > mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                mem[mem[ceil32(stor4C6.length.field_1 % 128) + 128] + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288] = 0
            return Array(len=mem[ceil32(stor4C6.length.field_1 % 128) + 128], data=mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]), 
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(stor4C6.length.field_1 % 128)] = mem[128 len ceil32(stor4C6.length.field_1 % 128)]
        if ceil32(stor4C6.length.field_1 % 128) <= stor4C6.length.field_1 % 128:
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
            if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                _9924 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9924)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9924)]
                if ceil32(_9924) > _9924:
                    mem[_9924 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9924) + 32], 
            _9926 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9926)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9926)]
            if ceil32(_9926) > _9926:
                mem[_9926 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
            return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9926) + 32], 
        mem[stor4C6.length.field_1 % 128 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = 0
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
        if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
            _9928 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9928)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9928)]
            if ceil32(_9928) > _9928:
                mem[_9928 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
            return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9928) + 32], 
        _9930 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_9930)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_9930)]
        if ceil32(_9930) > _9930:
            mem[_9930 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
        return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_9930) + 32], 
    mem[0] = 1222
    mem[128] = uint256(stor4C6.field_0)
    idx = 128
    s = sha3(1222)
    while stor4C6.length.field_1 % 128 + 96 > idx:
        mem[idx + 32] = stor1[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    if not arg1:
        if not stor4C6.length.field_1 % 128:
            var35001 = 32
            return '', 0
        mem[ceil32(stor4C6.length.field_1 % 128) + 288 len ceil32(stor4C6.length.field_1 % 128)] = mem[128 len ceil32(stor4C6.length.field_1 % 128)]
        mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 288] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 289] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 294] = 32
        mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 326] = mem[ceil32(stor4C6.length.field_1 % 128) + 256]
        mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256])] = mem[ceil32(stor4C6.length.field_1 % 128) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256])]
        if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 256]:
            return Array(len=mem[ceil32(stor4C6.length.field_1 % 128) + 256], data=mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256])]), 
        mem[mem[ceil32(stor4C6.length.field_1 % 128) + 256] + ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 358] = 0
        return 32, mem[ceil32(stor4C6.length.field_1 % 128) + stor4C6.length.field_1 % 128 + 326 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 256]) + 32], 
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[ceil32(stor4C6.length.field_1 % 128) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor4C6.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 160] = 5
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 192] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if not stor4C6.length.field_1 % 128:
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224] = 32
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = mem[ceil32(stor4C6.length.field_1 % 128) + 128]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) > mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                mem[mem[ceil32(stor4C6.length.field_1 % 128) + 128] + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288] = 0
            return Array(len=mem[ceil32(stor4C6.length.field_1 % 128) + 128], data=mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]), 
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(stor4C6.length.field_1 % 128)] = mem[128 len ceil32(stor4C6.length.field_1 % 128)]
        if ceil32(stor4C6.length.field_1 % 128) <= stor4C6.length.field_1 % 128:
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 0
            mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
            if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
                _11292 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_11292)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_11292)]
                if ceil32(_11292) > _11292:
                    mem[_11292 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
                return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_11292) + 32], 
            _11294 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_11294)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_11294)]
            if ceil32(_11294) > _11294:
                mem[_11294 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
            return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_11294) + 32], 
        mem[stor4C6.length.field_1 % 128 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = 0
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
        if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
            _11296 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_11296)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_11296)]
            if ceil32(_11296) > _11296:
                mem[_11296 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
            return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_11296) + 32], 
        _11298 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_11298)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_11298)]
        if ceil32(_11298) > _11298:
            mem[_11298 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
        return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_11298) + 32], 
    mem[ceil32(stor4C6.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
            revert with 0, 50
        mem[t + ceil32(stor4C6.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 160] = 5
    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 192] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
    if not stor4C6.length.field_1 % 128:
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224] = 32
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = mem[ceil32(stor4C6.length.field_1 % 128) + 128]
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
        if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) > mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
            mem[mem[ceil32(stor4C6.length.field_1 % 128) + 128] + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288] = 0
        return Array(len=mem[ceil32(stor4C6.length.field_1 % 128) + 128], data=mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 288 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]), 
    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(stor4C6.length.field_1 % 128)] = mem[128 len ceil32(stor4C6.length.field_1 % 128)]
    if ceil32(stor4C6.length.field_1 % 128) <= stor4C6.length.field_1 % 128:
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 0
        mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
        if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
            _11300 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_11300)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_11300)]
            if ceil32(_11300) > _11300:
                mem[_11300 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
            return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_11300) + 32], 
        _11302 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_11302)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_11302)]
        if ceil32(_11302) > _11302:
            mem[_11302 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
        return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_11302) + 32], 
    mem[stor4C6.length.field_1 % 128 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256] = 0
    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])] = mem[ceil32(stor4C6.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128])]
    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
    mem[64] = ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261
    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 261] = 32
    if ceil32(mem[ceil32(stor4C6.length.field_1 % 128) + 128]) <= mem[ceil32(stor4C6.length.field_1 % 128) + 128]:
        _11304 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
        mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_11304)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_11304)]
        if ceil32(_11304) > _11304:
            mem[_11304 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
        return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_11304) + 32], 
    _11306 = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 224]
    mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325 len ceil32(_11306)] = mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + 256 len ceil32(_11306)]
    if ceil32(_11306) > _11306:
        mem[_11306 + ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 325] = 0
    return 32, mem[ceil32(stor4C6.length.field_1 % 128) + ceil32(s) + stor4C6.length.field_1 % 128 + mem[ceil32(stor4C6.length.field_1 % 128) + 128] + 293 len ceil32(_11306) + 32], 
}



}
