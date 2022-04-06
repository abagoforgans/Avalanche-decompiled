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
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
mapping of struct stor10;
uint8 paused;
address owner; offset 8
uint256 stor12;
uint256 maxSupply;
uint256 price;
array of struct stor15;

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

function paused() {
    return bool(paused)
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

function price() {
    return price
}

function maxSupply() {
    return maxSupply
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

function setMaxSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxSupply = arg1
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
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
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
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
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while stor15.length.field_1 + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while stor15.length.field_1 + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function safeMint(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tokenByIndex.length > maxSupply:
        revert with 0, 'supply depleted'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor12]:
        revert with 0, 'ERC721: token already minted'
    if paused:
        revert with 0, 'Pausable: paused'
    stor9[stor12] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor12
    if arg1:
        tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = stor12
        stor7[stor12] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[stor12] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor12]
        stor9[stor12] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[stor12] = arg1
    emit Transfer(0, arg1, stor12);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, stor12, 128, 0
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
    stor12++
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
    if paused:
        revert with 0, 'Pausable: paused'
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
    if paused:
        revert with 0, 'Pausable: paused'
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

function baseURI() {
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor15.length.field_1:
                if 31 < stor15.length.field_1:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)])
                mem[128] = 256 * stor15.length.field_8
        else:
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor15.length.field_1:
                if 31 < stor15.length.field_1:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)])
                mem[128] = 256 * stor15.length.field_8
        mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
        if ceil32(stor15.length.field_1) > stor15.length.field_1:
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor15.length.field_1:
            if 31 < stor15.length.field_1:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor15.length.field_1:
            if 31 < stor15.length.field_1:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
    if ceil32(stor15.length.field_1) > stor15.length.field_1:
        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor5[stor2[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if paused:
        revert with 0, 'Pausable: paused'
    if not ownerOf[arg1]:
        stor9[arg1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg1
    else:
        if balanceOf[stor2[arg1]] < 1:
            revert with 'NH{q', 17
        if stor7[arg1] != balanceOf[stor2[arg1]] - 1:
            tokenOfOwnerByIndex[stor2[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
            stor7[stor6[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor7[arg1]
        stor7[arg1] = 0
        tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 'NH{q', 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if stor9[arg1] >= tokenByIndex.length:
        revert with 'NH{q', 50
    tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
    stor9[stor8[stor8.length]] = stor9[arg1]
    stor9[arg1] = 0
    if not tokenByIndex.length:
        revert with 'NH{q', 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor2[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_1:
            if stor10[arg1].field_0:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                stor10[arg1].field_0 = 0
                if 31 < stor10[arg1].field_1:
                    idx = 0
                    while stor10[arg1].field_1 + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                stor10[arg1].field_0 = 0
                if 31 < stor10[arg1].field_1:
                    idx = 0
                    while stor10[arg1].field_1 + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_1:
            if stor10[arg1].field_0:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                stor10[arg1].field_0 = 0
                if 31 < stor10[arg1].field_1:
                    idx = 0
                    while stor10[arg1].field_1 + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                stor10[arg1].field_0 = 0
                if 31 < stor10[arg1].field_1:
                    idx = 0
                    while stor10[arg1].field_1 + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
}

function sub_31286c2c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if price and arg1 > -1 / price:
        revert with 'NH{q', 17
    if msg.value < price * arg1:
        revert with 0, 'not enough was paid'
    idx = 0
    while idx < arg1:
        if tokenByIndex.length > maxSupply:
            revert with 0, 'supply depleted'
        _96 = mem[64]
        mem[64] = mem[64] + 32
        mem[_96] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor12]:
            revert with 0, 'ERC721: token already minted'
        if paused:
            revert with 0, 'Pausable: paused'
        stor9[stor12] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor12
        if msg.sender:
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor12
            stor7[stor12] = balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor12
            mem[32] = 2
            ownerOf[stor12] = msg.sender
            emit Transfer(0, msg.sender, stor12);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor12
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_96 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor12, 128, 0
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
            if stor9[stor12] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor12]
            stor9[stor12] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor12
            mem[32] = 2
            ownerOf[stor12] = msg.sender
            emit Transfer(0, msg.sender, stor12);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor12
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_96 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor12, 128, 0
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
        stor12++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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
    else:
        if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
            revert with 'NH{q', 65
        else:
            require arg4 + arg4.length + 36 <= calldata.size
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: operator query for nonexistent token'
            else:
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                else:
                    if msg.sender == ownerOf[arg3]:
                        if not ownerOf[arg3]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        else:
                            if ownerOf[arg3] != arg1:
                                revert with 0, 'ERC721: transfer of token that is not own'
                            else:
                                if not arg2:
                                    revert with 0, 'ERC721: transfer to the zero address'
                                else:
                                    if paused:
                                        revert with 0, 'Pausable: paused'
                                    else:
                                        if arg1:
                                            if arg1 == arg2:
                                                if arg2:
                                                    if arg2 == arg1:
                                                        approved[arg3] = 0
                                                        if not ownerOf[arg3]:
                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                        else:
                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                            if balanceOf[address(arg1)] < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                balanceOf[address(arg1)]--
                                                                if balanceOf[address(arg2)] > -2:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    balanceOf[address(arg2)]++
                                                                    ownerOf[arg3] = arg2
                                                                    emit Transfer(arg1, arg2, arg3);
                                                                    if ext_code.size(arg2) <= 0:
                                                                    else:
                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                            require ext_code.size(arg2)
                                                                            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                            if not ext_call.success:
                                                                                if not return_data.size:
                                                                                    if not arg4.length:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with arg4[all]
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                        else:
                                                                            require ext_code.size(arg2)
                                                                            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                            if not ext_call.success:
                                                                                if not return_data.size:
                                                                                    if not arg4.length:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with arg4[all]
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                    else:
                                                        if not arg2:
                                                            revert with 0, 'ERC721: balance query for the zero address'
                                                        else:
                                                            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                            stor7[arg3] = balanceOf[address(arg2)]
                                                            approved[arg3] = 0
                                                            if not ownerOf[arg3]:
                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                            else:
                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                if balanceOf[address(arg1)] < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    balanceOf[address(arg1)]--
                                                                    if balanceOf[address(arg2)] > -2:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg2)]++
                                                                        ownerOf[arg3] = arg2
                                                                        emit Transfer(arg1, arg2, arg3);
                                                                        if ext_code.size(arg2) <= 0:
                                                                        else:
                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                require ext_code.size(arg2)
                                                                                call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        if not arg4.length:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with arg4[all]
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                            else:
                                                                                require ext_code.size(arg2)
                                                                                call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        if not arg4.length:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with arg4[all]
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                else:
                                                    if tokenByIndex.length < 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            if stor9[arg3] >= tokenByIndex.length:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                stor9[stor8[stor8.length]] = stor9[arg3]
                                                                stor9[arg3] = 0
                                                                if not tokenByIndex.length:
                                                                    revert with 'NH{q', 49
                                                                else:
                                                                    tokenByIndex[tokenByIndex.length] = 0
                                                                    tokenByIndex.length--
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if ext_code.size(arg2) <= 0:
                                                                                else:
                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                    else:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                            else:
                                                if not arg1:
                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                else:
                                                    if balanceOf[address(arg1)] < 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        if stor7[arg3] == balanceOf[address(arg1)] - 1:
                                                            stor7[arg3] = 0
                                                            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
                                                            if arg2:
                                                                if arg2 == arg1:
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if ext_code.size(arg2) <= 0:
                                                                                else:
                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                    else:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                else:
                                                                    if not arg2:
                                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                                    else:
                                                                        tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                                        stor7[arg3] = balanceOf[address(arg2)]
                                                                        approved[arg3] = 0
                                                                        if not ownerOf[arg3]:
                                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                                        else:
                                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                                            if balanceOf[address(arg1)] < 1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg1)]--
                                                                                if balanceOf[address(arg2)] > -2:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg2)]++
                                                                                    ownerOf[arg3] = arg2
                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                    if ext_code.size(arg2) <= 0:
                                                                                    else:
                                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                        else:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                            else:
                                                                if tokenByIndex.length < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        if stor9[arg3] >= tokenByIndex.length:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                            stor9[stor8[stor8.length]] = stor9[arg3]
                                                                            stor9[arg3] = 0
                                                                            if not tokenByIndex.length:
                                                                                revert with 'NH{q', 49
                                                                            else:
                                                                                tokenByIndex[tokenByIndex.length] = 0
                                                                                tokenByIndex.length--
                                                                                approved[arg3] = 0
                                                                                if not ownerOf[arg3]:
                                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                                    if balanceOf[address(arg1)] < 1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg1)]--
                                                                                        if balanceOf[address(arg2)] > -2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg2)]++
                                                                                            ownerOf[arg3] = arg2
                                                                                            emit Transfer(arg1, arg2, arg3);
                                                                                            if ext_code.size(arg2) <= 0:
                                                                                            else:
                                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                else:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                        else:
                                                            tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                                                            stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
                                                            stor7[arg3] = 0
                                                            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
                                                            if arg2:
                                                                if arg2 == arg1:
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if ext_code.size(arg2) <= 0:
                                                                                else:
                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                    else:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                else:
                                                                    if not arg2:
                                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                                    else:
                                                                        tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                                        stor7[arg3] = balanceOf[address(arg2)]
                                                                        approved[arg3] = 0
                                                                        if not ownerOf[arg3]:
                                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                                        else:
                                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                                            if balanceOf[address(arg1)] < 1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg1)]--
                                                                                if balanceOf[address(arg2)] > -2:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg2)]++
                                                                                    ownerOf[arg3] = arg2
                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                    if ext_code.size(arg2) <= 0:
                                                                                    else:
                                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                        else:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                            else:
                                                                if tokenByIndex.length < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        if stor9[arg3] >= tokenByIndex.length:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                            stor9[stor8[stor8.length]] = stor9[arg3]
                                                                            stor9[arg3] = 0
                                                                            if not tokenByIndex.length:
                                                                                revert with 'NH{q', 49
                                                                            else:
                                                                                tokenByIndex[tokenByIndex.length] = 0
                                                                                tokenByIndex.length--
                                                                                approved[arg3] = 0
                                                                                if not ownerOf[arg3]:
                                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                                    if balanceOf[address(arg1)] < 1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg1)]--
                                                                                        if balanceOf[address(arg2)] > -2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg2)]++
                                                                                            ownerOf[arg3] = arg2
                                                                                            emit Transfer(arg1, arg2, arg3);
                                                                                            if ext_code.size(arg2) <= 0:
                                                                                            else:
                                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                else:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                        else:
                                            stor9[arg3] = tokenByIndex.length
                                            tokenByIndex.length++
                                            tokenByIndex[tokenByIndex.length] = arg3
                                            if arg2:
                                                if arg2 == arg1:
                                                    approved[arg3] = 0
                                                    if not ownerOf[arg3]:
                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                    else:
                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                        if balanceOf[address(arg1)] < 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            balanceOf[address(arg1)]--
                                                            if balanceOf[address(arg2)] > -2:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                balanceOf[address(arg2)]++
                                                                ownerOf[arg3] = arg2
                                                                emit Transfer(arg1, arg2, arg3);
                                                                if ext_code.size(arg2) <= 0:
                                                                else:
                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                        require ext_code.size(arg2)
                                                                        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                        if not ext_call.success:
                                                                            if not return_data.size:
                                                                                if not arg4.length:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with arg4[all]
                                                                            else:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                    else:
                                                                        require ext_code.size(arg2)
                                                                        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                        if not ext_call.success:
                                                                            if not return_data.size:
                                                                                if not arg4.length:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with arg4[all]
                                                                            else:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                else:
                                                    if not arg2:
                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                    else:
                                                        tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                        stor7[arg3] = balanceOf[address(arg2)]
                                                        approved[arg3] = 0
                                                        if not ownerOf[arg3]:
                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                        else:
                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                            if balanceOf[address(arg1)] < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                balanceOf[address(arg1)]--
                                                                if balanceOf[address(arg2)] > -2:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    balanceOf[address(arg2)]++
                                                                    ownerOf[arg3] = arg2
                                                                    emit Transfer(arg1, arg2, arg3);
                                                                    if ext_code.size(arg2) <= 0:
                                                                    else:
                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                            require ext_code.size(arg2)
                                                                            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                            if not ext_call.success:
                                                                                if not return_data.size:
                                                                                    if not arg4.length:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with arg4[all]
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                        else:
                                                                            require ext_code.size(arg2)
                                                                            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                            if not ext_call.success:
                                                                                if not return_data.size:
                                                                                    if not arg4.length:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with arg4[all]
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                            else:
                                                if tokenByIndex.length < 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                        revert with 'NH{q', 50
                                                    else:
                                                        if stor9[arg3] >= tokenByIndex.length:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                                                            stor9[stor8[stor8.length]] = stor9[arg3]
                                                            stor9[arg3] = 0
                                                            if not tokenByIndex.length:
                                                                revert with 'NH{q', 49
                                                            else:
                                                                tokenByIndex[tokenByIndex.length] = 0
                                                                tokenByIndex.length--
                                                                approved[arg3] = 0
                                                                if not ownerOf[arg3]:
                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                    if balanceOf[address(arg1)] < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg1)]--
                                                                        if balanceOf[address(arg2)] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg2)]++
                                                                            ownerOf[arg3] = arg2
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if ext_code.size(arg2) <= 0:
                                                                            else:
                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                else:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                    else:
                        if not ownerOf[arg3]:
                            revert with 0, 'ERC721: approved query for nonexistent token'
                        else:
                            if approved[arg3] == msg.sender:
                                if not ownerOf[arg3]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                else:
                                    if ownerOf[arg3] != arg1:
                                        revert with 0, 'ERC721: transfer of token that is not own'
                                    else:
                                        if not arg2:
                                            revert with 0, 'ERC721: transfer to the zero address'
                                        else:
                                            if paused:
                                                revert with 0, 'Pausable: paused'
                                            else:
                                                if arg1:
                                                    if arg1 == arg2:
                                                        if arg2:
                                                            if arg2 == arg1:
                                                                approved[arg3] = 0
                                                                if not ownerOf[arg3]:
                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                    if balanceOf[address(arg1)] < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg1)]--
                                                                        if balanceOf[address(arg2)] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg2)]++
                                                                            ownerOf[arg3] = arg2
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if ext_code.size(arg2) <= 0:
                                                                            else:
                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                else:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                                else:
                                                                    tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                                    stor7[arg3] = balanceOf[address(arg2)]
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if ext_code.size(arg2) <= 0:
                                                                                else:
                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                    else:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                        else:
                                                            if tokenByIndex.length < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    if stor9[arg3] >= tokenByIndex.length:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                        stor9[stor8[stor8.length]] = stor9[arg3]
                                                                        stor9[arg3] = 0
                                                                        if not tokenByIndex.length:
                                                                            revert with 'NH{q', 49
                                                                        else:
                                                                            tokenByIndex[tokenByIndex.length] = 0
                                                                            tokenByIndex.length--
                                                                            approved[arg3] = 0
                                                                            if not ownerOf[arg3]:
                                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                                if balanceOf[address(arg1)] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg1)]--
                                                                                    if balanceOf[address(arg2)] > -2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg2)]++
                                                                                        ownerOf[arg3] = arg2
                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                        if ext_code.size(arg2) <= 0:
                                                                                        else:
                                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                            else:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                    else:
                                                        if not arg1:
                                                            revert with 0, 'ERC721: balance query for the zero address'
                                                        else:
                                                            if balanceOf[address(arg1)] < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if stor7[arg3] == balanceOf[address(arg1)] - 1:
                                                                    stor7[arg3] = 0
                                                                    tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
                                                                    if arg2:
                                                                        if arg2 == arg1:
                                                                            approved[arg3] = 0
                                                                            if not ownerOf[arg3]:
                                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                                if balanceOf[address(arg1)] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg1)]--
                                                                                    if balanceOf[address(arg2)] > -2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg2)]++
                                                                                        ownerOf[arg3] = arg2
                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                        if ext_code.size(arg2) <= 0:
                                                                                        else:
                                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                            else:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                        else:
                                                                            if not arg2:
                                                                                revert with 0, 'ERC721: balance query for the zero address'
                                                                            else:
                                                                                tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                                                stor7[arg3] = balanceOf[address(arg2)]
                                                                                approved[arg3] = 0
                                                                                if not ownerOf[arg3]:
                                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                                    if balanceOf[address(arg1)] < 1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg1)]--
                                                                                        if balanceOf[address(arg2)] > -2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg2)]++
                                                                                            ownerOf[arg3] = arg2
                                                                                            emit Transfer(arg1, arg2, arg3);
                                                                                            if ext_code.size(arg2) <= 0:
                                                                                            else:
                                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                else:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                    else:
                                                                        if tokenByIndex.length < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                if stor9[arg3] >= tokenByIndex.length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                                    stor9[stor8[stor8.length]] = stor9[arg3]
                                                                                    stor9[arg3] = 0
                                                                                    if not tokenByIndex.length:
                                                                                        revert with 'NH{q', 49
                                                                                    else:
                                                                                        tokenByIndex[tokenByIndex.length] = 0
                                                                                        tokenByIndex.length--
                                                                                        approved[arg3] = 0
                                                                                        if not ownerOf[arg3]:
                                                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                        else:
                                                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                                                            if balanceOf[address(arg1)] < 1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                balanceOf[address(arg1)]--
                                                                                                if balanceOf[address(arg2)] > -2:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    balanceOf[address(arg2)]++
                                                                                                    ownerOf[arg3] = arg2
                                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                                    if ext_code.size(arg2) <= 0:
                                                                                                    else:
                                                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                                                            require ext_code.size(arg2)
                                                                                                            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                            if not ext_call.success:
                                                                                                                if not return_data.size:
                                                                                                                    if not arg4.length:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with arg4[all]
                                                                                                                else:
                                                                                                                    if not return_data.size:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                        else:
                                                                                                            require ext_code.size(arg2)
                                                                                                            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                            if not ext_call.success:
                                                                                                                if not return_data.size:
                                                                                                                    if not arg4.length:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with arg4[all]
                                                                                                                else:
                                                                                                                    if not return_data.size:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                else:
                                                                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                                                                    stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
                                                                    stor7[arg3] = 0
                                                                    tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
                                                                    if arg2:
                                                                        if arg2 == arg1:
                                                                            approved[arg3] = 0
                                                                            if not ownerOf[arg3]:
                                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                                if balanceOf[address(arg1)] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg1)]--
                                                                                    if balanceOf[address(arg2)] > -2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg2)]++
                                                                                        ownerOf[arg3] = arg2
                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                        if ext_code.size(arg2) <= 0:
                                                                                        else:
                                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                            else:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                        else:
                                                                            if not arg2:
                                                                                revert with 0, 'ERC721: balance query for the zero address'
                                                                            else:
                                                                                tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                                                stor7[arg3] = balanceOf[address(arg2)]
                                                                                approved[arg3] = 0
                                                                                if not ownerOf[arg3]:
                                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                                    if balanceOf[address(arg1)] < 1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg1)]--
                                                                                        if balanceOf[address(arg2)] > -2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg2)]++
                                                                                            ownerOf[arg3] = arg2
                                                                                            emit Transfer(arg1, arg2, arg3);
                                                                                            if ext_code.size(arg2) <= 0:
                                                                                            else:
                                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                else:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                    else:
                                                                        if tokenByIndex.length < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                if stor9[arg3] >= tokenByIndex.length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                                    stor9[stor8[stor8.length]] = stor9[arg3]
                                                                                    stor9[arg3] = 0
                                                                                    if not tokenByIndex.length:
                                                                                        revert with 'NH{q', 49
                                                                                    else:
                                                                                        tokenByIndex[tokenByIndex.length] = 0
                                                                                        tokenByIndex.length--
                                                                                        approved[arg3] = 0
                                                                                        if not ownerOf[arg3]:
                                                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                        else:
                                                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                                                            if balanceOf[address(arg1)] < 1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                balanceOf[address(arg1)]--
                                                                                                if balanceOf[address(arg2)] > -2:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    balanceOf[address(arg2)]++
                                                                                                    ownerOf[arg3] = arg2
                                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                                    if ext_code.size(arg2) <= 0:
                                                                                                    else:
                                                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                                                            require ext_code.size(arg2)
                                                                                                            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                            if not ext_call.success:
                                                                                                                if not return_data.size:
                                                                                                                    if not arg4.length:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with arg4[all]
                                                                                                                else:
                                                                                                                    if not return_data.size:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                        else:
                                                                                                            require ext_code.size(arg2)
                                                                                                            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                            if not ext_call.success:
                                                                                                                if not return_data.size:
                                                                                                                    if not arg4.length:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with arg4[all]
                                                                                                                else:
                                                                                                                    if not return_data.size:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                else:
                                                    stor9[arg3] = tokenByIndex.length
                                                    tokenByIndex.length++
                                                    tokenByIndex[tokenByIndex.length] = arg3
                                                    if arg2:
                                                        if arg2 == arg1:
                                                            approved[arg3] = 0
                                                            if not ownerOf[arg3]:
                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                            else:
                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                if balanceOf[address(arg1)] < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    balanceOf[address(arg1)]--
                                                                    if balanceOf[address(arg2)] > -2:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg2)]++
                                                                        ownerOf[arg3] = arg2
                                                                        emit Transfer(arg1, arg2, arg3);
                                                                        if ext_code.size(arg2) <= 0:
                                                                        else:
                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                require ext_code.size(arg2)
                                                                                call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        if not arg4.length:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with arg4[all]
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                            else:
                                                                                require ext_code.size(arg2)
                                                                                call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        if not arg4.length:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with arg4[all]
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                        else:
                                                            if not arg2:
                                                                revert with 0, 'ERC721: balance query for the zero address'
                                                            else:
                                                                tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                                stor7[arg3] = balanceOf[address(arg2)]
                                                                approved[arg3] = 0
                                                                if not ownerOf[arg3]:
                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                    if balanceOf[address(arg1)] < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg1)]--
                                                                        if balanceOf[address(arg2)] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg2)]++
                                                                            ownerOf[arg3] = arg2
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if ext_code.size(arg2) <= 0:
                                                                            else:
                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                else:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                    else:
                                                        if tokenByIndex.length < 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                if stor9[arg3] >= tokenByIndex.length:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                    stor9[stor8[stor8.length]] = stor9[arg3]
                                                                    stor9[arg3] = 0
                                                                    if not tokenByIndex.length:
                                                                        revert with 'NH{q', 49
                                                                    else:
                                                                        tokenByIndex[tokenByIndex.length] = 0
                                                                        tokenByIndex.length--
                                                                        approved[arg3] = 0
                                                                        if not ownerOf[arg3]:
                                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                                        else:
                                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                                            if balanceOf[address(arg1)] < 1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg1)]--
                                                                                if balanceOf[address(arg2)] > -2:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg2)]++
                                                                                    ownerOf[arg3] = arg2
                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                    if ext_code.size(arg2) <= 0:
                                                                                    else:
                                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                        else:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                            else:
                                if not stor5[stor2[arg3]][address(msg.sender)]:
                                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                                else:
                                    if not ownerOf[arg3]:
                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                    else:
                                        if ownerOf[arg3] != arg1:
                                            revert with 0, 'ERC721: transfer of token that is not own'
                                        else:
                                            if not arg2:
                                                revert with 0, 'ERC721: transfer to the zero address'
                                            else:
                                                if paused:
                                                    revert with 0, 'Pausable: paused'
                                                else:
                                                    if arg1:
                                                        if arg1 == arg2:
                                                            if arg2:
                                                                if arg2 == arg1:
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if ext_code.size(arg2) <= 0:
                                                                                else:
                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                    else:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                else:
                                                                    if not arg2:
                                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                                    else:
                                                                        tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                                        stor7[arg3] = balanceOf[address(arg2)]
                                                                        approved[arg3] = 0
                                                                        if not ownerOf[arg3]:
                                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                                        else:
                                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                                            if balanceOf[address(arg1)] < 1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg1)]--
                                                                                if balanceOf[address(arg2)] > -2:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg2)]++
                                                                                    ownerOf[arg3] = arg2
                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                    if ext_code.size(arg2) <= 0:
                                                                                    else:
                                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                        else:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                            else:
                                                                if tokenByIndex.length < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        if stor9[arg3] >= tokenByIndex.length:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                            stor9[stor8[stor8.length]] = stor9[arg3]
                                                                            stor9[arg3] = 0
                                                                            if not tokenByIndex.length:
                                                                                revert with 'NH{q', 49
                                                                            else:
                                                                                tokenByIndex[tokenByIndex.length] = 0
                                                                                tokenByIndex.length--
                                                                                approved[arg3] = 0
                                                                                if not ownerOf[arg3]:
                                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                                    if balanceOf[address(arg1)] < 1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg1)]--
                                                                                        if balanceOf[address(arg2)] > -2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg2)]++
                                                                                            ownerOf[arg3] = arg2
                                                                                            emit Transfer(arg1, arg2, arg3);
                                                                                            if ext_code.size(arg2) <= 0:
                                                                                            else:
                                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                else:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 'ERC721: balance query for the zero address'
                                                            else:
                                                                if balanceOf[address(arg1)] < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if stor7[arg3] == balanceOf[address(arg1)] - 1:
                                                                        stor7[arg3] = 0
                                                                        tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
                                                                        if arg2:
                                                                            if arg2 == arg1:
                                                                                approved[arg3] = 0
                                                                                if not ownerOf[arg3]:
                                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                                    if balanceOf[address(arg1)] < 1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg1)]--
                                                                                        if balanceOf[address(arg2)] > -2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg2)]++
                                                                                            ownerOf[arg3] = arg2
                                                                                            emit Transfer(arg1, arg2, arg3);
                                                                                            if ext_code.size(arg2) <= 0:
                                                                                            else:
                                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                else:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                            else:
                                                                                if not arg2:
                                                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                                                else:
                                                                                    tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                                                    stor7[arg3] = balanceOf[address(arg2)]
                                                                                    approved[arg3] = 0
                                                                                    if not ownerOf[arg3]:
                                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                    else:
                                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                                        if balanceOf[address(arg1)] < 1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg1)]--
                                                                                            if balanceOf[address(arg2)] > -2:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                balanceOf[address(arg2)]++
                                                                                                ownerOf[arg3] = arg2
                                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                                if ext_code.size(arg2) <= 0:
                                                                                                else:
                                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                                        require ext_code.size(arg2)
                                                                                                        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                        if not ext_call.success:
                                                                                                            if not return_data.size:
                                                                                                                if not arg4.length:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with arg4[all]
                                                                                                            else:
                                                                                                                if not return_data.size:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                    else:
                                                                                                        require ext_code.size(arg2)
                                                                                                        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                        if not ext_call.success:
                                                                                                            if not return_data.size:
                                                                                                                if not arg4.length:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with arg4[all]
                                                                                                            else:
                                                                                                                if not return_data.size:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                        else:
                                                                            if tokenByIndex.length < 1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    if stor9[arg3] >= tokenByIndex.length:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                                        stor9[stor8[stor8.length]] = stor9[arg3]
                                                                                        stor9[arg3] = 0
                                                                                        if not tokenByIndex.length:
                                                                                            revert with 'NH{q', 49
                                                                                        else:
                                                                                            tokenByIndex[tokenByIndex.length] = 0
                                                                                            tokenByIndex.length--
                                                                                            approved[arg3] = 0
                                                                                            if not ownerOf[arg3]:
                                                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                            else:
                                                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                                                if balanceOf[address(arg1)] < 1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    balanceOf[address(arg1)]--
                                                                                                    if balanceOf[address(arg2)] > -2:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        balanceOf[address(arg2)]++
                                                                                                        ownerOf[arg3] = arg2
                                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                                        if ext_code.size(arg2) <= 0:
                                                                                                        else:
                                                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                                                require ext_code.size(arg2)
                                                                                                                call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                                if not ext_call.success:
                                                                                                                    if not return_data.size:
                                                                                                                        if not arg4.length:
                                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                        else:
                                                                                                                            revert with arg4[all]
                                                                                                                    else:
                                                                                                                        if not return_data.size:
                                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                        else:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                            else:
                                                                                                                require ext_code.size(arg2)
                                                                                                                call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                                if not ext_call.success:
                                                                                                                    if not return_data.size:
                                                                                                                        if not arg4.length:
                                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                        else:
                                                                                                                            revert with arg4[all]
                                                                                                                    else:
                                                                                                                        if not return_data.size:
                                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                        else:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                    else:
                                                                        tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                                                                        stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
                                                                        stor7[arg3] = 0
                                                                        tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
                                                                        if arg2:
                                                                            if arg2 == arg1:
                                                                                approved[arg3] = 0
                                                                                if not ownerOf[arg3]:
                                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                                    if balanceOf[address(arg1)] < 1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg1)]--
                                                                                        if balanceOf[address(arg2)] > -2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg2)]++
                                                                                            ownerOf[arg3] = arg2
                                                                                            emit Transfer(arg1, arg2, arg3);
                                                                                            if ext_code.size(arg2) <= 0:
                                                                                            else:
                                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                else:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                            else:
                                                                                if not arg2:
                                                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                                                else:
                                                                                    tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                                                    stor7[arg3] = balanceOf[address(arg2)]
                                                                                    approved[arg3] = 0
                                                                                    if not ownerOf[arg3]:
                                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                    else:
                                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                                        if balanceOf[address(arg1)] < 1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg1)]--
                                                                                            if balanceOf[address(arg2)] > -2:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                balanceOf[address(arg2)]++
                                                                                                ownerOf[arg3] = arg2
                                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                                if ext_code.size(arg2) <= 0:
                                                                                                else:
                                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                                        require ext_code.size(arg2)
                                                                                                        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                        if not ext_call.success:
                                                                                                            if not return_data.size:
                                                                                                                if not arg4.length:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with arg4[all]
                                                                                                            else:
                                                                                                                if not return_data.size:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                    else:
                                                                                                        require ext_code.size(arg2)
                                                                                                        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                        if not ext_call.success:
                                                                                                            if not return_data.size:
                                                                                                                if not arg4.length:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with arg4[all]
                                                                                                            else:
                                                                                                                if not return_data.size:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                        else:
                                                                            if tokenByIndex.length < 1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    if stor9[arg3] >= tokenByIndex.length:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                                        stor9[stor8[stor8.length]] = stor9[arg3]
                                                                                        stor9[arg3] = 0
                                                                                        if not tokenByIndex.length:
                                                                                            revert with 'NH{q', 49
                                                                                        else:
                                                                                            tokenByIndex[tokenByIndex.length] = 0
                                                                                            tokenByIndex.length--
                                                                                            approved[arg3] = 0
                                                                                            if not ownerOf[arg3]:
                                                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                            else:
                                                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                                                if balanceOf[address(arg1)] < 1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    balanceOf[address(arg1)]--
                                                                                                    if balanceOf[address(arg2)] > -2:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        balanceOf[address(arg2)]++
                                                                                                        ownerOf[arg3] = arg2
                                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                                        if ext_code.size(arg2) <= 0:
                                                                                                        else:
                                                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                                                require ext_code.size(arg2)
                                                                                                                call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                                if not ext_call.success:
                                                                                                                    if not return_data.size:
                                                                                                                        if not arg4.length:
                                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                        else:
                                                                                                                            revert with arg4[all]
                                                                                                                    else:
                                                                                                                        if not return_data.size:
                                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                        else:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                            else:
                                                                                                                require ext_code.size(arg2)
                                                                                                                call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                                if not ext_call.success:
                                                                                                                    if not return_data.size:
                                                                                                                        if not arg4.length:
                                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                        else:
                                                                                                                            revert with arg4[all]
                                                                                                                    else:
                                                                                                                        if not return_data.size:
                                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                        else:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                    else:
                                                        stor9[arg3] = tokenByIndex.length
                                                        tokenByIndex.length++
                                                        tokenByIndex[tokenByIndex.length] = arg3
                                                        if arg2:
                                                            if arg2 == arg1:
                                                                approved[arg3] = 0
                                                                if not ownerOf[arg3]:
                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                    if balanceOf[address(arg1)] < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg1)]--
                                                                        if balanceOf[address(arg2)] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg2)]++
                                                                            ownerOf[arg3] = arg2
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if ext_code.size(arg2) <= 0:
                                                                            else:
                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                else:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                                else:
                                                                    tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                                    stor7[arg3] = balanceOf[address(arg2)]
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if ext_code.size(arg2) <= 0:
                                                                                else:
                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                    else:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                        else:
                                                            if tokenByIndex.length < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    if stor9[arg3] >= tokenByIndex.length:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                        stor9[stor8[stor8.length]] = stor9[arg3]
                                                                        stor9[arg3] = 0
                                                                        if not tokenByIndex.length:
                                                                            revert with 'NH{q', 49
                                                                        else:
                                                                            tokenByIndex[tokenByIndex.length] = 0
                                                                            tokenByIndex.length--
                                                                            approved[arg3] = 0
                                                                            if not ownerOf[arg3]:
                                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                                if balanceOf[address(arg1)] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg1)]--
                                                                                    if balanceOf[address(arg2)] > -2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg2)]++
                                                                                        ownerOf[arg3] = arg2
                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                        if ext_code.size(arg2) <= 0:
                                                                                        else:
                                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                            else:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
}



}
