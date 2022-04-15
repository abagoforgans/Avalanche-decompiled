contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const numTotalHunks = 1000

const MAX_MINTABLE_AT_ONCE = 50


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
uint256 stor13; offset 8
uint256 price;
array of struct stor15;
address stor16;
array of uint256 stor17;
array of uint256 stor18;
uint256 stor3FA;
uint256 stor3FB;
mapping of uint256 numFreeRollCats;
bool stor3FE;
uint8 stor3FE; offset 1
uint256 stor3FE; offset 1
uint256 stor3FE;

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

function getNumFreeRollCats(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return numFreeRollCats[address(arg1)]
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

function freeRollHunks(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return numFreeRollCats[arg1]
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
    isSaleOn = 1
    stor13 = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor6[address(msg.sender)][address(arg1)] = uint8(arg2)
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

function getCostForMintingCats(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenByIndex.length > -arg1 - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length + arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There are not this many Hunks left.'
    if arg1 > 50:
        revert with 0, 'You cannot mint that many Hunks.'
    if arg1 and price > -1 / arg1:
        revert with 'NH{q', 17
    return (arg1 * price)
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

function withdrawTeam() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) / 100 and 6 > -1 / eth.balance(this.address) / 100:
        revert with 'NH{q', 17
    if eth.balance(this.address) < 6 * eth.balance(this.address) / 100:
        revert with 'NH{q', 17
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
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3FB >= 500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Already given max number of free rolls'
    if numFreeRollCats[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if numFreeRollCats[address(arg1)] + arg2 >= 51:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot exceed 50 unused free rolls!'
    if numFreeRollCats[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    numFreeRollCats[address(arg1)] += arg2
    if stor3FB > -arg2 - 1:
        revert with 'NH{q', 17
    stor3FB += arg2
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
        if not stor6[stor3[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function getCatsBelongingToOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    while idx < balanceOf[address(arg1)]:
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = idx
        mem[32] = sha3(address(arg1), 7)
        if idx >= balanceOf[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function setImageHash(string arg1) {
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
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor12[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor12.length = 0
            idx = 0
            while uint255(stor12.length.field_1) + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
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
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while uint255(stor15.length.field_1) + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
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
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor3FE.field_0):
        if bool(stor3FE.field_0) == uint255(stor3FE.field_1) < 32:
            revert with 'NH{q', 34
        if not arg1.length:
            uint256(stor3FE.field_0) = 0
            idx = sha3(1022)
            while sha3(1022) + (uint255(stor3FE.field_1) + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            uint256(stor3FE.field_0) = (2 * arg1.length) + 1
            s = sha3(1022)
            idx = 128
            while arg1.length + 128 > idx:
                stor[s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(1022) + (Mask(251, 0, arg1.length + 31) >> 5)
            while sha3(1022) + (uint255(stor3FE.field_1) + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor3FE.field_0) == stor3FE.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not arg1.length:
            uint256(stor3FE.field_0) = 0
            idx = sha3(1022)
            while sha3(1022) + (stor3FE.field_1 % 128 + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            uint256(stor3FE.field_0) = (2 * arg1.length) + 1
            s = sha3(1022)
            idx = 128
            while arg1.length + 128 > idx:
                stor[s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(1022) + (Mask(251, 0, arg1.length + 31) >> 5)
            while sha3(1022) + (stor3FE.field_1 % 128 + 31 / 32) > idx:
                stor[idx] = 0
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
                revert with 'NH{q', 17
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
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
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
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
                revert with 'NH{q', 17
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
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
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
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

function name() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor1.length.field_1):
                if 31 < uint255(stor1.length.field_1):
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor1.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length.field_1)) + 192 len ceil32(uint255(stor1.length.field_1))] = mem[128 len ceil32(uint255(stor1.length.field_1))]
        if ceil32(uint255(stor1.length.field_1)) > uint255(stor1.length.field_1):
            mem[ceil32(uint255(stor1.length.field_1)) + uint255(stor1.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))], mem[(2 * ceil32(uint255(stor1.length.field_1))) + 192 len 2 * ceil32(uint255(stor1.length.field_1))]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor1.length.field_1):
            if 31 < uint255(stor1.length.field_1):
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while uint255(stor1.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor1.length.field_1 % 128) + stor1.length.field_1 % 128 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor2.length.field_1):
                if 31 < uint255(stor2.length.field_1):
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor2.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        else:
            if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        mem[ceil32(uint255(stor2.length.field_1)) + 192 len ceil32(uint255(stor2.length.field_1))] = mem[128 len ceil32(uint255(stor2.length.field_1))]
        if ceil32(uint255(stor2.length.field_1)) > uint255(stor2.length.field_1):
            mem[ceil32(uint255(stor2.length.field_1)) + uint255(stor2.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))], mem[(2 * ceil32(uint255(stor2.length.field_1))) + 192 len 2 * ceil32(uint255(stor2.length.field_1))]), 
    if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor2.length.field_1):
            if 31 < uint255(stor2.length.field_1):
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while uint255(stor2.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    else:
        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor2.length.field_1 % 128) + stor2.length.field_1 % 128 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)], mem[(2 * ceil32(stor2.length.field_1 % 128)) + 192 len 2 * ceil32(stor2.length.field_1 % 128)]), 
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
                revert with 'NH{q', 17
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
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
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
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

function imageHash() {
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor12.length):
            if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor12.length.field_1):
                if 31 < uint255(stor12.length.field_1):
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor12.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor12.length.field_1)), data=mem[128 len ceil32(uint255(stor12.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor12.length.field_8)
        else:
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, uint255(stor12.length.field_1)), data=mem[128 len ceil32(uint255(stor12.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor12.length.field_8)
        mem[ceil32(uint255(stor12.length.field_1)) + 192 len ceil32(uint255(stor12.length.field_1))] = mem[128 len ceil32(uint255(stor12.length.field_1))]
        if ceil32(uint255(stor12.length.field_1)) > uint255(stor12.length.field_1):
            mem[ceil32(uint255(stor12.length.field_1)) + uint255(stor12.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor12.length.field_1)), data=mem[128 len ceil32(uint255(stor12.length.field_1))], mem[(2 * ceil32(uint255(stor12.length.field_1))) + 192 len 2 * ceil32(uint255(stor12.length.field_1))]), 
    if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor12.length.field_1):
            if 31 < uint255(stor12.length.field_1):
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while uint255(stor12.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor12.length.field_8)
    else:
        if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor12.length.field_1 % 128) + stor12.length.field_1 % 128 + 192] = 0
    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1 % 128)], mem[(2 * ceil32(stor12.length.field_1 % 128)) + 192 len 2 * ceil32(stor12.length.field_1 % 128)]), 
}

function contractURI() {
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor15.length.field_1):
                if 31 < uint255(stor15.length.field_1):
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor15.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor15.length.field_1)), data=mem[128 len ceil32(uint255(stor15.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
        else:
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, uint255(stor15.length.field_1)), data=mem[128 len ceil32(uint255(stor15.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
        mem[ceil32(uint255(stor15.length.field_1)) + 192 len ceil32(uint255(stor15.length.field_1))] = mem[128 len ceil32(uint255(stor15.length.field_1))]
        if ceil32(uint255(stor15.length.field_1)) > uint255(stor15.length.field_1):
            mem[ceil32(uint255(stor15.length.field_1)) + uint255(stor15.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor15.length.field_1)), data=mem[128 len ceil32(uint255(stor15.length.field_1))], mem[(2 * ceil32(uint255(stor15.length.field_1))) + 192 len 2 * ceil32(uint255(stor15.length.field_1))]), 
    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor15.length.field_1):
            if 31 < uint255(stor15.length.field_1):
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while uint255(stor15.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
    else:
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1 % 128)], mem[(2 * ceil32(stor15.length.field_1 % 128)) + 192 len 2 * ceil32(stor15.length.field_1 % 128)]), 
}

function catcontractURI() {
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor15.length.field_1):
                if 31 < uint255(stor15.length.field_1):
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor15.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor15.length.field_1)), data=mem[128 len ceil32(uint255(stor15.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
        else:
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, uint255(stor15.length.field_1)), data=mem[128 len ceil32(uint255(stor15.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
        mem[ceil32(uint255(stor15.length.field_1)) + 192 len ceil32(uint255(stor15.length.field_1))] = mem[128 len ceil32(uint255(stor15.length.field_1))]
        if ceil32(uint255(stor15.length.field_1)) > uint255(stor15.length.field_1):
            mem[ceil32(uint255(stor15.length.field_1)) + uint255(stor15.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor15.length.field_1)), data=mem[128 len ceil32(uint255(stor15.length.field_1))], mem[(2 * ceil32(uint255(stor15.length.field_1))) + 192 len 2 * ceil32(uint255(stor15.length.field_1))]), 
    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor15.length.field_1):
            if 31 < uint255(stor15.length.field_1):
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while uint255(stor15.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
    else:
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1 % 128)], mem[(2 * ceil32(stor15.length.field_1 % 128)) + 192 len 2 * ceil32(stor15.length.field_1 % 128)]), 
}

function freeRollMint() payable {
    mem[64] = 96
    require not msg.value
    if stor11 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor11 = 2
    if numFreeRollCats[address(msg.sender)] <= 0:
        revert with 0, 'You don't have any free rolls!'
    mem[0] = msg.sender
    mem[32] = 1020
    numFreeRollCats[address(msg.sender)] = 0
    if 1000 < tokenByIndex.length:
        revert with 'NH{q', 17
    if numFreeRollCats[address(msg.sender)] <= -tokenByIndex.length + 1000:
        if numFreeRollCats[address(msg.sender)] > 50:
            revert with 0, 'Minting too many at once.'
        idx = 0
        s = stor3FA
        while idx < numFreeRollCats[address(msg.sender)]:
            if block.number < 1:
                revert with 'NH{q', 17
            _1076 = mem[64]
            mem[mem[64] + 32] = msg.sender
            mem[mem[64] + 64] = block.gasprice
            mem[mem[64] + 96] = block.number
            mem[mem[64] + 128] = block.timestamp
            mem[mem[64] + 160] = block.hash(block.number - 1)
            mem[mem[64] + 192] = numFreeRollCats[address(msg.sender)]
            mem[mem[64] + 224] = idx
            _1078 = mem[64]
            mem[mem[64]] = 224
            mem[64] = mem[64] + 256
            _1080 = sha3(mem[_1078 + 32 len mem[_1078]])
            if not stor3FA:
                revert with 'NH{q', 18
            if sha3(mem[_1078 + 32 len mem[_1078]]) % stor3FA >= 1000:
                revert with 'NH{q', 50
            if stor3FA < 1:
                revert with 'NH{q', 17
            if sha3(mem[_1078 + 32 len mem[_1078]]) % stor3FA != stor3FA - 1:
                if stor3FA - 1 >= 1000:
                    revert with 'NH{q', 50
                if sha3(mem[_1078 + 32 len mem[_1078]]) % stor3FA >= 1000:
                    revert with 'NH{q', 50
                if uint256(stor17[stor3FA]):
                    stor18[sha3(mem[_1078 + 32 len mem[_1078]]) % stor3FA] = uint256(stor17[stor3FA])
                else:
                    stor18[sha3(mem[_1078 + 32 len mem[_1078]]) % stor3FA] = stor3FA - 1
            if not stor3FA:
                revert with 'NH{q', 17
            stor3FA--
            mem[64] = _1076 + 288
            mem[_1076 + 256] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if stor18[sha3(mem[_1078 + 32 len mem[_1078]]) % stor3FA]:
                if ownerOf[stor18[_1080 % stor3FA]]:
                    revert with 0, 'ERC721: token already minted'
                stor10[stor18[_1080 % stor3FA]] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = stor18[_1080 % stor3FA]
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = stor18[_1080 % stor3FA]
                    stor8[stor18[_1080 % stor3FA]] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor10[stor18[_1080 % stor3FA]] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor10[stor18[_1080 % stor3FA]]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[stor18[_1080 % stor3FA]]
                    stor10[stor18[_1080 % stor3FA]] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor18[_1080 % stor3FA]
                mem[32] = 3
                ownerOf[stor18[_1080 % stor3FA]] = msg.sender
                emit Transfer(0, msg.sender, stor18[_1080 % stor3FA]);
                if ext_code.size(msg.sender) > 0:
                    mem[_1076 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_1076 + 292] = msg.sender
                    mem[_1076 + 324] = 0
                    mem[_1076 + 356] = stor18[_1080 % stor3FA]
                    mem[_1076 + 388] = 128
                    mem[_1076 + 420] = 0
                    t = 0
                    while t < 0:
                        mem[_1076 + t + 452] = mem[_1076 + t + 288]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor18[_1080 % stor3FA], 128, 0
                    mem[_1076 + 288] = ext_call.return_data[0]
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
                    mem[64] = _1076 + ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if ownerOf[_1080 % stor3FA]:
                    revert with 0, 'ERC721: token already minted'
                stor10[_1080 % stor3FA] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = _1080 % stor3FA
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = _1080 % stor3FA
                    stor8[_1080 % stor3FA] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor10[_1080 % stor3FA] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor10[_1080 % stor3FA]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[_1080 % stor3FA]
                    stor10[_1080 % stor3FA] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = _1080 % stor3FA
                mem[32] = 3
                ownerOf[_1080 % stor3FA] = msg.sender
                emit Transfer(0, msg.sender, _1080 % stor3FA);
                if ext_code.size(msg.sender) > 0:
                    mem[_1076 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_1076 + 292] = msg.sender
                    mem[_1076 + 324] = 0
                    mem[_1076 + 356] = _1080 % stor3FA
                    mem[_1076 + 388] = 128
                    mem[_1076 + 420] = 0
                    t = 0
                    while t < 0:
                        mem[_1076 + t + 452] = mem[_1076 + t + 288]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, _1080 % stor3FA, 128, 0
                    mem[_1076 + 288] = ext_call.return_data[0]
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
                    mem[64] = _1076 + ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not s:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - 1
            continue 
    else:
        if -tokenByIndex.length + 1000 > 50:
            revert with 0, 'Minting too many at once.'
        idx = 0
        s = stor3FA
        while idx < -tokenByIndex.length + 1000:
            if block.number < 1:
                revert with 'NH{q', 17
            _1077 = mem[64]
            mem[mem[64] + 32] = msg.sender
            mem[mem[64] + 64] = block.gasprice
            mem[mem[64] + 96] = block.number
            mem[mem[64] + 128] = block.timestamp
            mem[mem[64] + 160] = block.hash(block.number - 1)
            mem[mem[64] + 192] = -tokenByIndex.length + 1000
            mem[mem[64] + 224] = idx
            _1081 = mem[64]
            mem[mem[64]] = 224
            mem[64] = mem[64] + 256
            _1083 = sha3(mem[_1081 + 32 len mem[_1081]])
            if not stor3FA:
                revert with 'NH{q', 18
            if sha3(mem[_1081 + 32 len mem[_1081]]) % stor3FA >= 1000:
                revert with 'NH{q', 50
            if stor3FA < 1:
                revert with 'NH{q', 17
            if sha3(mem[_1081 + 32 len mem[_1081]]) % stor3FA != stor3FA - 1:
                if stor3FA - 1 >= 1000:
                    revert with 'NH{q', 50
                if sha3(mem[_1081 + 32 len mem[_1081]]) % stor3FA >= 1000:
                    revert with 'NH{q', 50
                if uint256(stor17[stor3FA]):
                    stor18[sha3(mem[_1081 + 32 len mem[_1081]]) % stor3FA] = uint256(stor17[stor3FA])
                else:
                    stor18[sha3(mem[_1081 + 32 len mem[_1081]]) % stor3FA] = stor3FA - 1
            if not stor3FA:
                revert with 'NH{q', 17
            stor3FA--
            mem[64] = _1077 + 288
            mem[_1077 + 256] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if stor18[sha3(mem[_1081 + 32 len mem[_1081]]) % stor3FA]:
                if ownerOf[stor18[_1083 % stor3FA]]:
                    revert with 0, 'ERC721: token already minted'
                stor10[stor18[_1083 % stor3FA]] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = stor18[_1083 % stor3FA]
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = stor18[_1083 % stor3FA]
                    stor8[stor18[_1083 % stor3FA]] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor10[stor18[_1083 % stor3FA]] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor10[stor18[_1083 % stor3FA]]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[stor18[_1083 % stor3FA]]
                    stor10[stor18[_1083 % stor3FA]] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor18[_1083 % stor3FA]
                mem[32] = 3
                ownerOf[stor18[_1083 % stor3FA]] = msg.sender
                emit Transfer(0, msg.sender, stor18[_1083 % stor3FA]);
                if ext_code.size(msg.sender) > 0:
                    mem[_1077 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_1077 + 292] = msg.sender
                    mem[_1077 + 324] = 0
                    mem[_1077 + 356] = stor18[_1083 % stor3FA]
                    mem[_1077 + 388] = 128
                    mem[_1077 + 420] = 0
                    t = 0
                    while t < 0:
                        mem[_1077 + t + 452] = mem[_1077 + t + 288]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor18[_1083 % stor3FA], 128, 0
                    mem[_1077 + 288] = ext_call.return_data[0]
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
                    mem[64] = _1077 + ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if ownerOf[_1083 % stor3FA]:
                    revert with 0, 'ERC721: token already minted'
                stor10[_1083 % stor3FA] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = _1083 % stor3FA
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = _1083 % stor3FA
                    stor8[_1083 % stor3FA] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor10[_1083 % stor3FA] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor10[_1083 % stor3FA]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[_1083 % stor3FA]
                    stor10[_1083 % stor3FA] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = _1083 % stor3FA
                mem[32] = 3
                ownerOf[_1083 % stor3FA] = msg.sender
                emit Transfer(0, msg.sender, _1083 % stor3FA);
                if ext_code.size(msg.sender) > 0:
                    mem[_1077 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_1077 + 292] = msg.sender
                    mem[_1077 + 324] = 0
                    mem[_1077 + 356] = _1083 % stor3FA
                    mem[_1077 + 388] = 128
                    mem[_1077 + 420] = 0
                    t = 0
                    while t < 0:
                        mem[_1077 + t + 452] = mem[_1077 + t + 288]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, _1083 % stor3FA, 128, 0
                    mem[_1077 + 288] = ext_call.return_data[0]
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
                    mem[64] = _1077 + ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not s:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - 1
            continue 
    stor3FA = s
    stor11 = 1
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor11 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor11 = 2
    if not isSaleOn:
        revert with 0, 'Sale hasn't started.'
    if tokenByIndex.length > -arg1 - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length + arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There aren't this many Hunks left.'
    if price and arg1 > -1 / price:
        revert with 'NH{q', 17
    if msg.value < price * arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Too little sent, please send more AVAX.'
    if msg.value <= price * arg1:
        if arg1 > 50:
            revert with 0, 'Minting too many at once.'
        idx = 0
        s = stor3FA
        while idx < arg1:
            if block.number < 1:
                revert with 'NH{q', 17
            _907 = mem[64]
            mem[mem[64] + 32] = msg.sender
            mem[mem[64] + 64] = block.gasprice
            mem[mem[64] + 96] = block.number
            mem[mem[64] + 128] = block.timestamp
            mem[mem[64] + 160] = block.hash(block.number - 1)
            mem[mem[64] + 192] = arg1
            mem[mem[64] + 224] = idx
            _909 = mem[64]
            mem[mem[64]] = 224
            mem[64] = mem[64] + 256
            _911 = sha3(mem[_909 + 32 len mem[_909]])
            if not stor3FA:
                revert with 'NH{q', 18
            if sha3(mem[_909 + 32 len mem[_909]]) % stor3FA >= 1000:
                revert with 'NH{q', 50
            if stor3FA < 1:
                revert with 'NH{q', 17
            if sha3(mem[_909 + 32 len mem[_909]]) % stor3FA != stor3FA - 1:
                if stor3FA - 1 >= 1000:
                    revert with 'NH{q', 50
                if sha3(mem[_909 + 32 len mem[_909]]) % stor3FA >= 1000:
                    revert with 'NH{q', 50
                if uint256(stor17[stor3FA]):
                    stor18[sha3(mem[_909 + 32 len mem[_909]]) % stor3FA] = uint256(stor17[stor3FA])
                else:
                    stor18[sha3(mem[_909 + 32 len mem[_909]]) % stor3FA] = stor3FA - 1
            if not stor3FA:
                revert with 'NH{q', 17
            stor3FA--
            mem[64] = _907 + 288
            mem[_907 + 256] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if stor18[sha3(mem[_909 + 32 len mem[_909]]) % stor3FA]:
                if ownerOf[stor18[_911 % stor3FA]]:
                    revert with 0, 'ERC721: token already minted'
                stor10[stor18[_911 % stor3FA]] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = stor18[_911 % stor3FA]
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = stor18[_911 % stor3FA]
                    stor8[stor18[_911 % stor3FA]] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor10[stor18[_911 % stor3FA]] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor10[stor18[_911 % stor3FA]]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[stor18[_911 % stor3FA]]
                    stor10[stor18[_911 % stor3FA]] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor18[_911 % stor3FA]
                mem[32] = 3
                ownerOf[stor18[_911 % stor3FA]] = msg.sender
                emit Transfer(0, msg.sender, stor18[_911 % stor3FA]);
                if ext_code.size(msg.sender) > 0:
                    mem[_907 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_907 + 292] = msg.sender
                    mem[_907 + 324] = 0
                    mem[_907 + 356] = stor18[_911 % stor3FA]
                    mem[_907 + 388] = 128
                    mem[_907 + 420] = 0
                    t = 0
                    while t < 0:
                        mem[_907 + t + 452] = mem[_907 + t + 288]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor18[_911 % stor3FA], 128, 0
                    mem[_907 + 288] = ext_call.return_data[0]
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
                    mem[64] = _907 + ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if ownerOf[_911 % stor3FA]:
                    revert with 0, 'ERC721: token already minted'
                stor10[_911 % stor3FA] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = _911 % stor3FA
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = _911 % stor3FA
                    stor8[_911 % stor3FA] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor10[_911 % stor3FA] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor10[_911 % stor3FA]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[_911 % stor3FA]
                    stor10[_911 % stor3FA] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = _911 % stor3FA
                mem[32] = 3
                ownerOf[_911 % stor3FA] = msg.sender
                emit Transfer(0, msg.sender, _911 % stor3FA);
                if ext_code.size(msg.sender) > 0:
                    mem[_907 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_907 + 292] = msg.sender
                    mem[_907 + 324] = 0
                    mem[_907 + 356] = _911 % stor3FA
                    mem[_907 + 388] = 128
                    mem[_907 + 420] = 0
                    t = 0
                    while t < 0:
                        mem[_907 + t + 452] = mem[_907 + t + 288]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, _911 % stor3FA, 128, 0
                    mem[_907 + 288] = ext_call.return_data[0]
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
                    mem[64] = _907 + ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not s:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - 1
            continue 
    else:
        if msg.value < price * arg1:
            revert with 'NH{q', 17
        call msg.sender with:
           value msg.value - (price * arg1) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 > 50:
            revert with 0, 'Minting too many at once.'
        idx = 0
        s = stor3FA
        while idx < arg1:
            if block.number < 1:
                revert with 'NH{q', 17
            _908 = mem[64]
            mem[mem[64] + 32] = msg.sender
            mem[mem[64] + 64] = block.gasprice
            mem[mem[64] + 96] = block.number
            mem[mem[64] + 128] = block.timestamp
            mem[mem[64] + 160] = block.hash(block.number - 1)
            mem[mem[64] + 192] = arg1
            mem[mem[64] + 224] = idx
            _912 = mem[64]
            mem[mem[64]] = 224
            mem[64] = mem[64] + 256
            _914 = sha3(mem[_912 + 32 len mem[_912]])
            if not stor3FA:
                revert with 'NH{q', 18
            if sha3(mem[_912 + 32 len mem[_912]]) % stor3FA >= 1000:
                revert with 'NH{q', 50
            if stor3FA < 1:
                revert with 'NH{q', 17
            if sha3(mem[_912 + 32 len mem[_912]]) % stor3FA != stor3FA - 1:
                if stor3FA - 1 >= 1000:
                    revert with 'NH{q', 50
                if sha3(mem[_912 + 32 len mem[_912]]) % stor3FA >= 1000:
                    revert with 'NH{q', 50
                if uint256(stor17[stor3FA]):
                    stor18[sha3(mem[_912 + 32 len mem[_912]]) % stor3FA] = uint256(stor17[stor3FA])
                else:
                    stor18[sha3(mem[_912 + 32 len mem[_912]]) % stor3FA] = stor3FA - 1
            if not stor3FA:
                revert with 'NH{q', 17
            stor3FA--
            mem[64] = _908 + 288
            mem[_908 + 256] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if stor18[sha3(mem[_912 + 32 len mem[_912]]) % stor3FA]:
                if ownerOf[stor18[_914 % stor3FA]]:
                    revert with 0, 'ERC721: token already minted'
                stor10[stor18[_914 % stor3FA]] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = stor18[_914 % stor3FA]
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = stor18[_914 % stor3FA]
                    stor8[stor18[_914 % stor3FA]] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor10[stor18[_914 % stor3FA]] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor10[stor18[_914 % stor3FA]]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[stor18[_914 % stor3FA]]
                    stor10[stor18[_914 % stor3FA]] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor18[_914 % stor3FA]
                mem[32] = 3
                ownerOf[stor18[_914 % stor3FA]] = msg.sender
                emit Transfer(0, msg.sender, stor18[_914 % stor3FA]);
                if ext_code.size(msg.sender) > 0:
                    mem[_908 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_908 + 292] = msg.sender
                    mem[_908 + 324] = 0
                    mem[_908 + 356] = stor18[_914 % stor3FA]
                    mem[_908 + 388] = 128
                    mem[_908 + 420] = 0
                    t = 0
                    while t < 0:
                        mem[_908 + t + 452] = mem[_908 + t + 288]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor18[_914 % stor3FA], 128, 0
                    mem[_908 + 288] = ext_call.return_data[0]
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
                    mem[64] = _908 + ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if ownerOf[_914 % stor3FA]:
                    revert with 0, 'ERC721: token already minted'
                stor10[_914 % stor3FA] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = _914 % stor3FA
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = _914 % stor3FA
                    stor8[_914 % stor3FA] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor10[_914 % stor3FA] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor10[_914 % stor3FA]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[_914 % stor3FA]
                    stor10[_914 % stor3FA] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = _914 % stor3FA
                mem[32] = 3
                ownerOf[_914 % stor3FA] = msg.sender
                emit Transfer(0, msg.sender, _914 % stor3FA);
                if ext_code.size(msg.sender) > 0:
                    mem[_908 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_908 + 292] = msg.sender
                    mem[_908 + 324] = 0
                    mem[_908 + 356] = _914 % stor3FA
                    mem[_908 + 388] = 128
                    mem[_908 + 420] = 0
                    t = 0
                    while t < 0:
                        mem[_908 + t + 452] = mem[_908 + t + 288]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, _914 % stor3FA, 128, 0
                    mem[_908 + 288] = ext_call.return_data[0]
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
                    mem[64] = _908 + ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not s:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - 1
            continue 
    stor3FA = s
    stor11 = 1
}



}
