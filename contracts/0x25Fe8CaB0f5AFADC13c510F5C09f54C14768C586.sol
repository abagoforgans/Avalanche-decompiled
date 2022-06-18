contract main {




// =====================  Runtime code  =====================


const getEthBalance = eth.balance(this.address)


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
uint256 sub_340754ed;
mapping of uint256 stor11;
uint256 stor12;
uint256 maxNFT;
uint256 minPrice;
uint256 maxPrice;
address stor16;
array of struct stor18;

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

function sub_340754ed(?) {
    return sub_340754ed
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

function maxPrice() {
    return maxPrice
}

function maxNFT() {
    return maxNFT
}

function minPrice() {
    return minPrice
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

function sub_2c1ba839(?) payable {
    if stor16 != msg.sender:
        revert with 0, 'only manager can reach  here'
    return eth.balance(this.address)
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
    minPrice = arg1
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

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
        if not stor6[stor3[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_fd6cba46(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)] > test266151307():
        revert with 'NH{q', 65
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
    if bool(stor18.length):
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor18[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor18.length = 0
            idx = 0
            while stor18.length.field_1 + 31 / 32 > idx:
                stor18[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor18[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor18.length = 0
            idx = 0
            while stor18.length.field_1 + 31 / 32 > idx:
                stor18[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function _burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if balanceOf[stor3[arg1]] < 1:
        revert with 'NH{q', 17
    if stor8[arg1] != balanceOf[stor3[arg1]] - 1:
        tokenOfOwnerByIndex[stor3[arg1]][stor8[arg1]] = tokenOfOwnerByIndex[stor3[arg1]][stor4[stor3[arg1]] - 1]
        stor8[stor7[stor3[arg1]][stor4[stor3[arg1]] - 1]] = stor8[arg1]
    stor8[arg1] = 0
    tokenOfOwnerByIndex[stor3[arg1]][stor4[stor3[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 'NH{q', 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if stor11[arg1] >= tokenByIndex.length:
        revert with 'NH{q', 50
    tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
    stor11[stor9[stor9.length]] = stor11[arg1]
    stor11[arg1] = 0
    if not tokenByIndex.length:
        revert with 'NH{q', 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor3[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor3[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
}

function sub_35b26af9(?) payable {
    if stor12 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor12 = 2
    if tokenByIndex.length > -2:
        revert with 'NH{q', 17
    require tokenByIndex.length + 1 <= maxNFT
    if sub_340754ed > -2:
        revert with 'NH{q', 17
    sub_340754ed++
    if ext_code.size(msg.sender) > 0:
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, sub_340754ed, 128, 0
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
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor10]:
        revert with 0, 'ERC721: token already minted'
    stor11[stor10] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = sub_340754ed
    if msg.sender:
        tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = sub_340754ed
        stor8[stor10] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor11[stor10] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor11[stor10]] = tokenByIndex[tokenByIndex.length]
        stor11[stor9[stor9.length]] = stor11[stor10]
        stor11[stor10] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor10] = msg.sender
    emit Transfer(0, msg.sender, sub_340754ed);
    call stor16 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor12 = 1
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
        stor11[arg3] = tokenByIndex.length
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
        if stor11[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor9[stor9.length]] = stor11[arg3]
        stor11[arg3] = 0
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

function symbol() {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
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
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor11[arg3] = tokenByIndex.length
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
        if stor11[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor9[stor9.length]] = stor11[arg3]
        stor11[arg3] = 0
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
    if ext_code.size(arg2) > 0:
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
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor11[arg3] = tokenByIndex.length
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
        if stor11[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor9[stor9.length]] = stor11[arg3]
        stor11[arg3] = 0
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
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor18.length):
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor18.length):
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor18.length.field_1:
                if not arg1:
                    if not stor18.length.field_1:
                        return '0', 0
                    mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 32
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 256] = mem[ceil32(stor18.length.field_1) + 192]
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor18.length.field_1) + 192]) > mem[ceil32(stor18.length.field_1) + 192]:
                        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + mem[ceil32(stor18.length.field_1) + 192] + 288] = 0
                    return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
            else:
                if 31 >= stor18.length.field_1:
                    mem[128] = 256 * stor18.length.field_8
                    if not arg1:
                        if not stor18.length.field_1:
                            return '0', 0
                        mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
                        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 32
                        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 256] = mem[ceil32(stor18.length.field_1) + 192]
                        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor18.length.field_1) + 192]) > mem[ceil32(stor18.length.field_1) + 192]:
                            mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + mem[ceil32(stor18.length.field_1) + 192] + 288] = 0
                        return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
                else:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while stor18.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if not arg1:
                        if not stor18.length.field_1:
                            var44001 = 32
                            return '0', 0
                        mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
                        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 32
                        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 256] = mem[ceil32(stor18.length.field_1) + 192]
                        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor18.length.field_1) + 192]) > mem[ceil32(stor18.length.field_1) + 192]:
                            mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + mem[ceil32(stor18.length.field_1) + 192] + 288] = 0
                        return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
        else:
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor18.length.field_1:
                if not arg1:
                    if not stor18.length.field_1:
                        return '0', 0
                    mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 32
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 256] = mem[ceil32(stor18.length.field_1) + 192]
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor18.length.field_1) + 192]) > mem[ceil32(stor18.length.field_1) + 192]:
                        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + mem[ceil32(stor18.length.field_1) + 192] + 288] = 0
                    return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
            else:
                if 31 >= stor18.length.field_1:
                    mem[128] = 256 * stor18.length.field_8
                    if not arg1:
                        if not stor18.length.field_1:
                            return '0', 0
                        mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
                        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 32
                        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 256] = mem[ceil32(stor18.length.field_1) + 192]
                        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor18.length.field_1) + 192]) > mem[ceil32(stor18.length.field_1) + 192]:
                            mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + mem[ceil32(stor18.length.field_1) + 192] + 288] = 0
                        return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
                else:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while stor18.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if not arg1:
                        if not stor18.length.field_1:
                            var45001 = 32
                            return '0', 0
                        mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
                        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 32
                        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 256] = mem[ceil32(stor18.length.field_1) + 192]
                        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor18.length.field_1) + 192]) > mem[ceil32(stor18.length.field_1) + 192]:
                            mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + mem[ceil32(stor18.length.field_1) + 192] + 288] = 0
                        return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
        ('iszero', ('iszero', ('param', 'arg1')))
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
        mem[ceil32(stor18.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor18.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor18.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor18.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if not stor18.length.field_1:
            mem[ceil32(stor18.length.field_1) + ceil32(s) + 160] = 32
            mem[ceil32(stor18.length.field_1) + ceil32(s) + 192] = mem[ceil32(stor18.length.field_1) + 128]
            mem[ceil32(stor18.length.field_1) + ceil32(s) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor18.length.field_1) + 128]) > mem[ceil32(stor18.length.field_1) + 128]:
                mem[ceil32(stor18.length.field_1) + ceil32(s) + mem[ceil32(stor18.length.field_1) + 128] + 224] = 0
            return Array(len=mem[ceil32(stor18.length.field_1) + 128], data=mem[ceil32(stor18.length.field_1) + ceil32(s) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]), 
        mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
        mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
        mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]:
            mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + mem[ceil32(stor18.length.field_1) + ceil32(s) + 160] + 256] = 0
        return Array(len=mem[ceil32(stor18.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160])]), 
    if bool(stor18.length) == stor18.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor18.length):
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor18.length.field_1:
            if not arg1:
                if not stor18.length.field_1:
                    return '0', 0
                mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 32
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 256] = mem[ceil32(stor18.length.field_1) + 192]
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor18.length.field_1) + 192]) <= mem[ceil32(stor18.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + mem[ceil32(stor18.length.field_1) + 192] + 288] = 0
                return 32, mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 256 len ceil32(mem[ceil32(stor18.length.field_1) + 192]) + 32], 
        else:
            if 31 >= stor18.length.field_1:
                mem[128] = 256 * stor18.length.field_8
                if not arg1:
                    if not stor18.length.field_1:
                        return '0', 0
                    mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 32
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 256] = mem[ceil32(stor18.length.field_1) + 192]
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor18.length.field_1) + 192]) <= mem[ceil32(stor18.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + mem[ceil32(stor18.length.field_1) + 192] + 288] = 0
                    return 32, mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 256 len ceil32(mem[ceil32(stor18.length.field_1) + 192]) + 32], 
            else:
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while stor18.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor18[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not arg1:
                    if not stor18.length.field_1:
                        var45001 = 32
                        return '0', 0
                    mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 32
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 256] = mem[ceil32(stor18.length.field_1) + 192]
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor18.length.field_1) + 192]) <= mem[ceil32(stor18.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + mem[ceil32(stor18.length.field_1) + 192] + 288] = 0
                    return 32, mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 256 len ceil32(mem[ceil32(stor18.length.field_1) + 192]) + 32], 
    else:
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor18.length.field_1:
            if not arg1:
                if not stor18.length.field_1:
                    return '0', 0
                mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 32
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 256] = mem[ceil32(stor18.length.field_1) + 192]
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor18.length.field_1) + 192]) <= mem[ceil32(stor18.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + mem[ceil32(stor18.length.field_1) + 192] + 288] = 0
                return 32, mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 256 len ceil32(mem[ceil32(stor18.length.field_1) + 192]) + 32], 
        else:
            if 31 >= stor18.length.field_1:
                mem[128] = 256 * stor18.length.field_8
                if not arg1:
                    if not stor18.length.field_1:
                        return '0', 0
                    mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 32
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 256] = mem[ceil32(stor18.length.field_1) + 192]
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor18.length.field_1) + 192]) <= mem[ceil32(stor18.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + mem[ceil32(stor18.length.field_1) + 192] + 288] = 0
                    return 32, mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 256 len ceil32(mem[ceil32(stor18.length.field_1) + 192]) + 32], 
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
                mem[ceil32(stor18.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor18.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor18.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor18.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                if not stor18.length.field_1:
                    mem[ceil32(stor18.length.field_1) + ceil32(s) + 160] = 32
                    mem[ceil32(stor18.length.field_1) + ceil32(s) + 192] = mem[ceil32(stor18.length.field_1) + 128]
                    mem[ceil32(stor18.length.field_1) + ceil32(s) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor18.length.field_1) + 128]) > mem[ceil32(stor18.length.field_1) + 128]:
                        mem[ceil32(stor18.length.field_1) + ceil32(s) + mem[ceil32(stor18.length.field_1) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor18.length.field_1) + 128], data=mem[ceil32(stor18.length.field_1) + ceil32(s) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]), 
                mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
                mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
                mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + mem[ceil32(stor18.length.field_1) + ceil32(s) + 160] + 256] = 0
                return Array(len=mem[ceil32(stor18.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160])]), 
            mem[128] = uint256(stor18.field_0)
            idx = 128
            s = 0
            while stor18.length.field_1 + 96 > idx:
                mem[idx + 32] = stor18[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if not arg1:
                if not stor18.length.field_1:
                    var46001 = 32
                    return '0', 0
                mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 32
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 256] = mem[ceil32(stor18.length.field_1) + 192]
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor18.length.field_1) + 192]) <= mem[ceil32(stor18.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 288 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + mem[ceil32(stor18.length.field_1) + 192] + 288] = 0
                return 32, mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 256 len ceil32(mem[ceil32(stor18.length.field_1) + 192]) + 32], 
    ('iszero', ('iszero', ('param', 'arg1')))
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
    mem[ceil32(stor18.length.field_1) + 128] = s
    if s:
        mem[ceil32(stor18.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor18.length.field_1) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor18.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    if not stor18.length.field_1:
        mem[ceil32(stor18.length.field_1) + ceil32(s) + 160] = 32
        mem[ceil32(stor18.length.field_1) + ceil32(s) + 192] = mem[ceil32(stor18.length.field_1) + 128]
        mem[ceil32(stor18.length.field_1) + ceil32(s) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor18.length.field_1) + 128]) > mem[ceil32(stor18.length.field_1) + 128]:
            mem[ceil32(stor18.length.field_1) + ceil32(s) + mem[ceil32(stor18.length.field_1) + 128] + 224] = 0
        return Array(len=mem[ceil32(stor18.length.field_1) + 128], data=mem[ceil32(stor18.length.field_1) + ceil32(s) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]), 
    mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
    mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
    mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160])]
    if ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]:
        return Array(len=mem[ceil32(stor18.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160])]), 
    mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + mem[ceil32(stor18.length.field_1) + ceil32(s) + 160] + 256] = 0
    return 32, mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]) + 32], 
}



}
