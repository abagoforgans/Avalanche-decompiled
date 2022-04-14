contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const MAX_ghosts = 2500

const maxghostPurchase = 10


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
array of struct stor12;
uint256 ghostPrice;
uint8 saleIsActive;
uint256 stor15;
mapping of struct stor16;
uint256 ghostsReserve;

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

function saleIsActive() {
    return bool(uint8(saleIsActive))
}

function ghostsReserve() {
    return ghostsReserve
}

function ghostPrice() {
    return ghostPrice
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

function flipSaleState() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor15) = not bool(uint8(saleIsActive)) or Mask(248, 8, uint256(stor15))
}

function _Price(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    ghostPrice = arg1
}

function withdraw() payable {
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

function tokensOfOwner(address arg1) {
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
        mem[32] = sha3(address(arg1), 6)
        if idx >= balanceOf[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
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
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor12[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor12[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setProvenanceHash(string arg1) {
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

function baseURI() {
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        else:
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) > stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
    if ceil32(stor12.length.field_1) > stor12.length.field_1:
        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
}

function ghosts_PROVENANCE() {
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

function ghostNames(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor16[arg1].field_0:
        if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor16[arg1].field_0:
            if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor16[arg1].field_1), data=mem[128 len ceil32(stor16[arg1].field_1)])
                mem[128] = 256 * stor16[arg1].field_8
        else:
            if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor16[arg1].field_1), data=mem[128 len ceil32(stor16[arg1].field_1)])
                mem[128] = 256 * stor16[arg1].field_8
        mem[ceil32(stor16[arg1].field_1) + 192 len ceil32(stor16[arg1].field_1)] = mem[128 len ceil32(stor16[arg1].field_1)]
        if ceil32(stor16[arg1].field_1) > stor16[arg1].field_1:
            mem[ceil32(stor16[arg1].field_1) + stor16[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor16[arg1].field_1), data=mem[128 len ceil32(stor16[arg1].field_1)], mem[(2 * ceil32(stor16[arg1].field_1)) + 192 len 2 * ceil32(stor16[arg1].field_1)]), 
    if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor16[arg1].field_0:
        if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor16[arg1].field_1) + stor16[arg1].field_1 + 192] = 0
    return Array(len=stor16[arg1].field_0, data=mem[128 len ceil32(stor16[arg1].field_1)], mem[(2 * ceil32(stor16[arg1].field_1)) + 192 len 2 * ceil32(stor16[arg1].field_1)]), 
}

function viewGhostName(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0, 'Choose a ghost within range'
    if stor16[arg1].field_0:
        if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor16[arg1].field_0:
            if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor16[arg1].field_1), data=mem[128 len ceil32(stor16[arg1].field_1)])
                mem[128] = 256 * stor16[arg1].field_8
        else:
            if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor16[arg1].field_1), data=mem[128 len ceil32(stor16[arg1].field_1)])
                mem[128] = 256 * stor16[arg1].field_8
        mem[ceil32(stor16[arg1].field_1) + 192 len ceil32(stor16[arg1].field_1)] = mem[128 len ceil32(stor16[arg1].field_1)]
        if ceil32(stor16[arg1].field_1) > stor16[arg1].field_1:
            mem[ceil32(stor16[arg1].field_1) + stor16[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor16[arg1].field_1), data=mem[128 len ceil32(stor16[arg1].field_1)], mem[(2 * ceil32(stor16[arg1].field_1)) + 192 len 2 * ceil32(stor16[arg1].field_1)]), 
    if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor16[arg1].field_0:
        if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor16[arg1].field_1) + stor16[arg1].field_1 + 192] = 0
    return Array(len=stor16[arg1].field_0, data=mem[128 len ceil32(stor16[arg1].field_1)], mem[(2 * ceil32(stor16[arg1].field_1)) + 192 len 2 * ceil32(stor16[arg1].field_1)]), 
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

function reserveghosts(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0, 'Not enough reserve left for team'
    if arg2 > ghostsReserve:
        revert with 0, 'Not enough reserve left for team'
    idx = 0
    while idx < arg2:
        if tokenByIndex.length > -idx - 1:
            revert with 'NH{q', 17
        _95 = mem[64]
        mem[64] = mem[64] + 32
        mem[_95] = 0
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor8.length + idx]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor8.length + idx] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
        if arg1:
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = tokenByIndex.length + idx
            stor7[stor8.length + idx] = balanceOf[address(arg1)]
            if balanceOf[address(arg1)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg1)]++
            mem[0] = tokenByIndex.length + idx
            mem[32] = 2
            ownerOf[stor8.length + idx] = arg1
            emit Transfer(0, arg1, tokenByIndex.length + idx);
            if ext_code.size(arg1) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = tokenByIndex.length + idx
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_95 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg1)
                call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
            if stor9[stor8.length + idx] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
            stor9[stor8.length + idx] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(arg1)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg1)]++
            mem[0] = tokenByIndex.length + idx
            mem[32] = 2
            ownerOf[stor8.length + idx] = arg1
            emit Transfer(0, arg1, tokenByIndex.length + idx);
            if ext_code.size(arg1) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = tokenByIndex.length + idx
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_95 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg1)
                call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
    if ghostsReserve < arg2:
        revert with 'NH{q', 17
    ghostsReserve -= arg2
}

function mintGhosts(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(saleIsActive):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sale must be active to mint ghost'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only mint 10 tokens at a time'
    if arg1 > 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only mint 10 tokens at a time'
    if tokenByIndex.length > -arg1 - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length + arg1 > 2500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchase would exceed max supply of ghosts'
    if ghostPrice and arg1 > -1 / ghostPrice:
        revert with 'NH{q', 17
    if msg.value < ghostPrice * arg1:
        revert with 0, 'Avax value sent is not correct'
    idx = 0
    while idx < arg1:
        if tokenByIndex.length < 2500:
            _99 = mem[64]
            mem[64] = mem[64] + 32
            mem[_99] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor8.length]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor8.length] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = tokenByIndex.length
            if msg.sender:
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length
                stor7[stor8.length] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenByIndex.length
                mem[32] = 2
                ownerOf[stor8.length] = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length);
                if ext_code.size(msg.sender) > 0:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_99 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                    _193 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_193] == Mask(32, 224, mem[_193])
                    if Mask(32, 224, mem[_193]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor9[stor8.length] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor9[tokenByIndex.length]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor8.length]
                stor9[stor8.length] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenByIndex.length
                mem[32] = 2
                ownerOf[stor8.length] = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length);
                if ext_code.size(msg.sender) > 0:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_99 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                    _194 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_194] == Mask(32, 224, mem[_194])
                    if Mask(32, 224, mem[_194]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function ghostNamesOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = arg1
    mem[32] = 3
    if not balanceOf[address(arg1)]:
        mem[96] = 0
        mem[64] = 128
        mem[128] = 32
        mem[160] = 0
        idx = 0
        s = 128
        t = (32 * mem[96]) + 192
        u = 192
        while idx < 0:
            mem[u] = t - 192
            _76 = mem[s]
            _81 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _81:
                mem[t + v + 32] = mem[_76 + v + 32]
                v = v + 32
                continue 
            if ceil32(_81) > _81:
                mem[t + _81 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_81) + 32
            u = u + 32
            continue 
    else:
        if balanceOf[address(arg1)] > test266151307():
            revert with 'NH{q', 65
        mem[96] = balanceOf[address(arg1)]
        mem[64] = (32 * balanceOf[address(arg1)]) + 128
        if not balanceOf[address(arg1)]:
            idx = 0
            while idx < balanceOf[address(arg1)]:
                if not arg1:
                    revert with 0, 'ERC721: balance query for the zero address'
                if idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
                mem[32] = 16
                if stor16[stor6[address(arg1)][idx]].field_0:
                    if stor16[stor6[address(arg1)][idx]].field_0 == stor16[stor6[address(arg1)][idx]].field_1 < 32:
                        revert with 'NH{q', 34
                    _96 = mem[64]
                    mem[64] = mem[64] + ceil32(stor16[stor6[address(arg1)][idx]].field_1) + 32
                    mem[_96] = stor16[stor6[address(arg1)][idx]].field_1
                    if stor16[stor6[address(arg1)][idx]].field_0:
                        if stor16[stor6[address(arg1)][idx]].field_0 == stor16[stor6[address(arg1)][idx]].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor16[stor6[address(arg1)][idx]].field_1:
                            if 31 >= stor16[stor6[address(arg1)][idx]].field_1:
                                mem[_96 + 32] = 256 * stor16[stor6[address(arg1)][idx]].field_8
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 16)
                                mem[_96 + 32] = stor16[stor6[address(arg1)][idx]].field_0
                                s = _96 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 16))
                                while _96 + stor16[stor6[address(arg1)][idx]].field_1 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if stor16[stor6[address(arg1)][idx]].field_0 == stor16[stor6[address(arg1)][idx]].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor16[stor6[address(arg1)][idx]].field_1:
                            if 31 >= stor16[stor6[address(arg1)][idx]].field_1:
                                mem[_96 + 32] = 256 * stor16[stor6[address(arg1)][idx]].field_8
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 16)
                                mem[_96 + 32] = stor16[stor6[address(arg1)][idx]].field_0
                                s = _96 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 16))
                                while _96 + stor16[stor6[address(arg1)][idx]].field_1 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _96
                else:
                    if stor16[stor6[address(arg1)][idx]].field_0 == stor16[stor6[address(arg1)][idx]].field_1 < 32:
                        revert with 'NH{q', 34
                    _97 = mem[64]
                    mem[64] = mem[64] + ceil32(stor16[stor6[address(arg1)][idx]].field_1) + 32
                    mem[_97] = stor16[stor6[address(arg1)][idx]].field_1
                    if stor16[stor6[address(arg1)][idx]].field_0:
                        if stor16[stor6[address(arg1)][idx]].field_0 == stor16[stor6[address(arg1)][idx]].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor16[stor6[address(arg1)][idx]].field_1:
                            if 31 >= stor16[stor6[address(arg1)][idx]].field_1:
                                mem[_97 + 32] = 256 * stor16[stor6[address(arg1)][idx]].field_8
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 16)
                                mem[_97 + 32] = stor16[stor6[address(arg1)][idx]].field_0
                                s = _97 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 16))
                                while _97 + stor16[stor6[address(arg1)][idx]].field_1 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if stor16[stor6[address(arg1)][idx]].field_0 == stor16[stor6[address(arg1)][idx]].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor16[stor6[address(arg1)][idx]].field_1:
                            if 31 >= stor16[stor6[address(arg1)][idx]].field_1:
                                mem[_97 + 32] = 256 * stor16[stor6[address(arg1)][idx]].field_8
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 16)
                                mem[_97 + 32] = stor16[stor6[address(arg1)][idx]].field_0
                                s = _97 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 16))
                                while _97 + stor16[stor6[address(arg1)][idx]].field_1 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _97
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _77 = mem[64]
            mem[mem[64]] = 32
            _82 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _82:
                mem[u] = t + -_77 - 64
                _144 = mem[s]
                _152 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _152:
                    mem[t + v + 32] = mem[_144 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_152) > _152:
                    mem[t + _152 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_152) + 32
                u = u + 32
                continue 
        else:
            mem[128] = 96
            s = 128
            idx = balanceOf[address(arg1)]
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < balanceOf[address(arg1)]:
                if not arg1:
                    revert with 0, 'ERC721: balance query for the zero address'
                if idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
                mem[32] = 16
                if stor16[stor6[address(arg1)][idx]].field_0:
                    if stor16[stor6[address(arg1)][idx]].field_0 == stor16[stor6[address(arg1)][idx]].field_1 < 32:
                        revert with 'NH{q', 34
                    _161 = mem[64]
                    mem[64] = mem[64] + ceil32(stor16[stor6[address(arg1)][idx]].field_1) + 32
                    mem[_161] = stor16[stor6[address(arg1)][idx]].field_1
                    if stor16[stor6[address(arg1)][idx]].field_0:
                        if stor16[stor6[address(arg1)][idx]].field_0 == stor16[stor6[address(arg1)][idx]].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor16[stor6[address(arg1)][idx]].field_1:
                            if 31 >= stor16[stor6[address(arg1)][idx]].field_1:
                                mem[_161 + 32] = 256 * stor16[stor6[address(arg1)][idx]].field_8
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 16)
                                mem[_161 + 32] = stor16[stor6[address(arg1)][idx]].field_0
                                s = _161 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 16))
                                while _161 + stor16[stor6[address(arg1)][idx]].field_1 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if stor16[stor6[address(arg1)][idx]].field_0 == stor16[stor6[address(arg1)][idx]].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor16[stor6[address(arg1)][idx]].field_1:
                            if 31 >= stor16[stor6[address(arg1)][idx]].field_1:
                                mem[_161 + 32] = 256 * stor16[stor6[address(arg1)][idx]].field_8
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 16)
                                mem[_161 + 32] = stor16[stor6[address(arg1)][idx]].field_0
                                s = _161 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 16))
                                while _161 + stor16[stor6[address(arg1)][idx]].field_1 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _161
                else:
                    if stor16[stor6[address(arg1)][idx]].field_0 == stor16[stor6[address(arg1)][idx]].field_1 < 32:
                        revert with 'NH{q', 34
                    _162 = mem[64]
                    mem[64] = mem[64] + ceil32(stor16[stor6[address(arg1)][idx]].field_1) + 32
                    mem[_162] = stor16[stor6[address(arg1)][idx]].field_1
                    if stor16[stor6[address(arg1)][idx]].field_0:
                        if stor16[stor6[address(arg1)][idx]].field_0 == stor16[stor6[address(arg1)][idx]].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor16[stor6[address(arg1)][idx]].field_1:
                            if 31 >= stor16[stor6[address(arg1)][idx]].field_1:
                                mem[_162 + 32] = 256 * stor16[stor6[address(arg1)][idx]].field_8
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 16)
                                mem[_162 + 32] = stor16[stor6[address(arg1)][idx]].field_0
                                s = _162 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 16))
                                while _162 + stor16[stor6[address(arg1)][idx]].field_1 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if stor16[stor6[address(arg1)][idx]].field_0 == stor16[stor6[address(arg1)][idx]].field_1 < 32:
                            revert with 'NH{q', 34
                        if stor16[stor6[address(arg1)][idx]].field_1:
                            if 31 >= stor16[stor6[address(arg1)][idx]].field_1:
                                mem[_162 + 32] = 256 * stor16[stor6[address(arg1)][idx]].field_8
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 16)
                                mem[_162 + 32] = stor16[stor6[address(arg1)][idx]].field_0
                                s = _162 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 16))
                                while _162 + stor16[stor6[address(arg1)][idx]].field_1 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _162
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _151 = mem[64]
            mem[mem[64]] = 32
            _155 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _155:
                mem[u] = t + -_151 - 64
                _186 = mem[s]
                _192 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _192:
                    mem[t + v + 32] = mem[_186 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_192) > _192:
                    mem[t + _192 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_192) + 32
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function changeGhostsName(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Hey, your wallet doesn't own this ghosts!'
    if stor16[arg1].field_0:
        if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if not stor16[arg1].field_0:
            mem[ceil32(ceil32(arg2.length)) + 97] = Mask(248, 8, stor16[arg1].field_0)
            hash = sha256hash(mem[ceil32(ceil32(arg2.length)) + 97 len stor16[arg1].field_1]) 
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require hash == hash
            hash = sha256hash(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, hash) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256) 
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require hash == hash
            if hash == hash:
                revert with 0, 'New name is same as the current one'
            if stor16[arg1].field_0:
                if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if arg2.length:
                    stor16[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
                else:
                    stor16[arg1].field_0 = 0
                    idx = 0
                    while stor16[arg1].field_1 + 31 / 32 > idx:
                        stor16[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if arg2.length:
                    stor16[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
                else:
                    stor16[arg1].field_0 = 0
                    idx = 0
                    while stor16[arg1].field_1 + 31 / 32 > idx:
                        stor16[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            emit 0x6aa13858: msg.sender, arg1, Array(len=arg2.length, data=arg2[all])
        else:
            if stor16[arg1].field_0 != 1:
                hash = sha256hash(mem[ceil32(ceil32(arg2.length)) + 97 len -ceil32(ceil32(arg2.length)) - 97]) 
                if not sha256hash.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require hash == hash
                hash = sha256hash(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, hash) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256) 
                if not sha256hash.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require hash == hash
                if hash == hash:
                    revert with 0, 'New name is same as the current one'
                if stor16[arg1].field_0:
                    if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if arg2.length:
                        stor16[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
                    else:
                        stor16[arg1].field_0 = 0
                        idx = 0
                        while stor16[arg1].field_1 + 31 / 32 > idx:
                            stor16[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if arg2.length:
                        stor16[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
                    else:
                        stor16[arg1].field_0 = 0
                        idx = 0
                        while stor16[arg1].field_1 + 31 / 32 > idx:
                            stor16[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                emit 0x6aa13858: msg.sender, arg1, Array(len=arg2.length, data=arg2[all])
            else:
                idx = 0
                s = 0
                while idx < stor16[arg1].field_1:
                    mem[ceil32(ceil32(arg2.length)) + idx + 97] = stor16[arg1][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                hash = sha256hash(mem[ceil32(ceil32(arg2.length)) + 97 len stor16[arg1].field_1]) 
                mem[ceil32(ceil32(arg2.length)) + 97] = hash
                if not sha256hash.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require hash == hash
                _734 = mem[96]
                mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 97 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_734) > _734:
                    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + _734 + 97] = 0
                hash = sha256hash(mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 97 len _734]) 
                mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 97] = hash
                if not sha256hash.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require hash == hash
                if hash == hash:
                    revert with 0, 'New name is same as the current one'
                if stor16[arg1].field_0:
                    if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if mem[96]:
                        stor16[arg1][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
                    else:
                        stor16[arg1].field_0 = 0
                        idx = 0
                        while stor16[arg1].field_1 + 31 / 32 > idx:
                            stor16[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if mem[96]:
                        stor16[arg1][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
                    else:
                        stor16[arg1].field_0 = 0
                        idx = 0
                        while stor16[arg1].field_1 + 31 / 32 > idx:
                            stor16[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 97] = msg.sender
                mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 129] = arg1
                mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 161] = 96
                mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 193] = mem[96]
                mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 225 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) > mem[96]:
                    mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + mem[96] + 225] = 0
                emit 0x6aa13858: msg.sender, arg1, Array(len=mem[96], data=mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 225 len ceil32(mem[96])])
    else:
        if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if not stor16[arg1].field_0:
            mem[ceil32(ceil32(arg2.length)) + 97] = Mask(248, 8, stor16[arg1].field_0)
            hash = sha256hash(mem[ceil32(ceil32(arg2.length)) + 97 len stor16[arg1].field_1]) 
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require hash == hash
            hash = sha256hash(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, hash) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256) 
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require hash == hash
            if hash == hash:
                revert with 0, 'New name is same as the current one'
            if stor16[arg1].field_0:
                if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if arg2.length:
                    stor16[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
                else:
                    stor16[arg1].field_0 = 0
                    idx = 0
                    while stor16[arg1].field_1 + 31 / 32 > idx:
                        stor16[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if arg2.length:
                    stor16[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
                else:
                    stor16[arg1].field_0 = 0
                    idx = 0
                    while stor16[arg1].field_1 + 31 / 32 > idx:
                        stor16[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            emit 0x6aa13858: msg.sender, arg1, Array(len=arg2.length, data=arg2[all])
        else:
            if stor16[arg1].field_0 != 1:
                hash = sha256hash(mem[ceil32(ceil32(arg2.length)) + 97 len -ceil32(ceil32(arg2.length)) - 97]) 
                if not sha256hash.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require hash == hash
                hash = sha256hash(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, hash) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256) 
                if not sha256hash.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require hash == hash
                if hash == hash:
                    revert with 0, 'New name is same as the current one'
                if stor16[arg1].field_0:
                    if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if arg2.length:
                        stor16[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
                    else:
                        stor16[arg1].field_0 = 0
                        idx = 0
                        while stor16[arg1].field_1 + 31 / 32 > idx:
                            stor16[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if arg2.length:
                        stor16[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
                    else:
                        stor16[arg1].field_0 = 0
                        idx = 0
                        while stor16[arg1].field_1 + 31 / 32 > idx:
                            stor16[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                emit 0x6aa13858: msg.sender, arg1, Array(len=arg2.length, data=arg2[all])
            else:
                idx = 0
                s = 0
                while idx < stor16[arg1].field_1:
                    mem[ceil32(ceil32(arg2.length)) + idx + 97] = stor16[arg1][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                hash = sha256hash(mem[ceil32(ceil32(arg2.length)) + 97 len stor16[arg1].field_1]) 
                mem[ceil32(ceil32(arg2.length)) + 97] = hash
                if not sha256hash.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require hash == hash
                _741 = mem[96]
                mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 97 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_741) > _741:
                    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + _741 + 97] = 0
                hash = sha256hash(mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 97 len _741]) 
                mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 97] = hash
                if not sha256hash.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require hash == hash
                if hash == hash:
                    revert with 0, 'New name is same as the current one'
                if stor16[arg1].field_0:
                    if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if mem[96]:
                        stor16[arg1][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
                    else:
                        stor16[arg1].field_0 = 0
                        idx = 0
                        while stor16[arg1].field_1 + 31 / 32 > idx:
                            stor16[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if mem[96]:
                        stor16[arg1][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
                    else:
                        stor16[arg1].field_0 = 0
                        idx = 0
                        while stor16[arg1].field_1 + 31 / 32 > idx:
                            stor16[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 97] = msg.sender
                mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 129] = arg1
                mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 161] = 96
                mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 193] = mem[96]
                mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 225 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) > mem[96]:
                    mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + mem[96] + 225] = 0
                emit 0x6aa13858: msg.sender, arg1, Array(len=mem[96], data=mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 225 len ceil32(mem[96])])
}



}
