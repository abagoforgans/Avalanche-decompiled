contract main {




// =====================  Runtime code  =====================


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
uint256 stor11;
mapping of address minter;
mapping of struct stor15;
array of struct stor16;
array of struct stor17;
uint256 cost;
uint256 maxSupply;
uint8 stor20;
mapping of uint8 stor21;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function cost() {
    return cost
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
    return bool(stor20)
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

function tokenMinter(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minter[arg1]
}

function owner() {
    return owner
}

function minter(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minter[arg1]
}

function maxSupply() {
    return maxSupply
}

function whitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor21[arg1])
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

function setCost(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cost = arg1
}

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor20 = uint8(arg1)
}

function whitelistUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor21[address(arg1)] = 1
}

function removeWhitelistUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor21[address(arg1)] = 0
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

function walletOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
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
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length.field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor16.length = 0
            idx = 0
            while uint255(stor16.length.field_1) + 31 / 32 > idx:
                stor16[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor16.length = 0
            idx = 0
            while stor16.length.field_1 % 128 + 31 / 32 > idx:
                stor16[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setBaseExtension(string arg1) {
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
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length.field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor17[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor17.length = 0
            idx = 0
            while uint255(stor17.length.field_1) + 31 / 32 > idx:
                stor17[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor17.length) == stor17.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor17[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor17.length = 0
            idx = 0
            while stor17.length.field_1 % 128 + 31 / 32 > idx:
                stor17[idx].field_0 = 0
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

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor0.length.field_1):
                if 31 < uint255(stor0.length.field_1):
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor0.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1 % 128:
                if 31 < stor0.length.field_1 % 128:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length.field_1)) + 192 len ceil32(uint255(stor0.length.field_1))] = mem[128 len ceil32(uint255(stor0.length.field_1))]
        if ceil32(uint255(stor0.length.field_1)) > uint255(stor0.length.field_1):
            mem[ceil32(uint255(stor0.length.field_1)) + uint255(stor0.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))], mem[(2 * ceil32(uint255(stor0.length.field_1))) + 192 len 2 * ceil32(uint255(stor0.length.field_1))]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor0.length.field_1):
            if 31 < uint255(stor0.length.field_1):
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while uint255(stor0.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1 % 128:
            if 31 < stor0.length.field_1 % 128:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    mem[ceil32(stor0.length.field_1 % 128) + 192 len ceil32(stor0.length.field_1 % 128)] = mem[128 len ceil32(stor0.length.field_1 % 128)]
    if ceil32(stor0.length.field_1 % 128) > stor0.length.field_1 % 128:
        mem[ceil32(stor0.length.field_1 % 128) + stor0.length.field_1 % 128 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
}

function symbol() {
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

function baseURI() {
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor16.length):
            if bool(stor16.length) == uint255(stor16.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor16.length.field_1):
                if 31 < uint255(stor16.length.field_1):
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor16.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor16.length.field_1)), data=mem[128 len ceil32(uint255(stor16.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor16.length.field_8)
        else:
            if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor16.length.field_1 % 128:
                if 31 < stor16.length.field_1 % 128:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor16.length.field_1)), data=mem[128 len ceil32(uint255(stor16.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor16.length.field_8)
        mem[ceil32(uint255(stor16.length.field_1)) + 192 len ceil32(uint255(stor16.length.field_1))] = mem[128 len ceil32(uint255(stor16.length.field_1))]
        if ceil32(uint255(stor16.length.field_1)) > uint255(stor16.length.field_1):
            mem[ceil32(uint255(stor16.length.field_1)) + uint255(stor16.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor16.length.field_1)), data=mem[128 len ceil32(uint255(stor16.length.field_1))], mem[(2 * ceil32(uint255(stor16.length.field_1))) + 192 len 2 * ceil32(uint255(stor16.length.field_1))]), 
    if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor16.length.field_1):
            if 31 < uint255(stor16.length.field_1):
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while uint255(stor16.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor16.length.field_8)
    else:
        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor16.length.field_1 % 128:
            if 31 < stor16.length.field_1 % 128:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor16.length.field_8)
    mem[ceil32(stor16.length.field_1 % 128) + 192 len ceil32(stor16.length.field_1 % 128)] = mem[128 len ceil32(stor16.length.field_1 % 128)]
    if ceil32(stor16.length.field_1 % 128) > stor16.length.field_1 % 128:
        mem[ceil32(stor16.length.field_1 % 128) + stor16.length.field_1 % 128 + 192] = 0
    return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1 % 128)], mem[(2 * ceil32(stor16.length.field_1 % 128)) + 192 len 2 * ceil32(stor16.length.field_1 % 128)]), 
}

function baseExtension() {
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor17.length):
            if bool(stor17.length) == uint255(stor17.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor17.length.field_1):
                if 31 < uint255(stor17.length.field_1):
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor17.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor17.length.field_1)), data=mem[128 len ceil32(uint255(stor17.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor17.length.field_8)
        else:
            if bool(stor17.length) == stor17.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor17.length.field_1 % 128:
                if 31 < stor17.length.field_1 % 128:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while stor17.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor17.length.field_1)), data=mem[128 len ceil32(uint255(stor17.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor17.length.field_8)
        mem[ceil32(uint255(stor17.length.field_1)) + 192 len ceil32(uint255(stor17.length.field_1))] = mem[128 len ceil32(uint255(stor17.length.field_1))]
        if ceil32(uint255(stor17.length.field_1)) > uint255(stor17.length.field_1):
            mem[ceil32(uint255(stor17.length.field_1)) + uint255(stor17.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor17.length.field_1)), data=mem[128 len ceil32(uint255(stor17.length.field_1))], mem[(2 * ceil32(uint255(stor17.length.field_1))) + 192 len 2 * ceil32(uint255(stor17.length.field_1))]), 
    if bool(stor17.length) == stor17.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor17.length.field_1):
            if 31 < uint255(stor17.length.field_1):
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while uint255(stor17.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor17.length.field_8)
    else:
        if bool(stor17.length) == stor17.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor17.length.field_1 % 128:
            if 31 < stor17.length.field_1 % 128:
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while stor17.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor17.length.field_8)
    mem[ceil32(stor17.length.field_1 % 128) + 192 len ceil32(stor17.length.field_1 % 128)] = mem[128 len ceil32(stor17.length.field_1 % 128)]
    if ceil32(stor17.length.field_1 % 128) > stor17.length.field_1 % 128:
        mem[ceil32(stor17.length.field_1 % 128) + stor17.length.field_1 % 128 + 192] = 0
    return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1 % 128)], mem[(2 * ceil32(stor17.length.field_1 % 128)) + 192 len 2 * ceil32(stor17.length.field_1 % 128)]), 
}

function getNFT(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor15[arg1].field_0):
        if bool(stor15[arg1].field_0) == uint255(stor15[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor15[arg1].field_0):
            if bool(stor15[arg1].field_0) == uint255(stor15[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor15[arg1].field_1):
                if 31 < uint255(stor15[arg1].field_1):
                    mem[128] = stor15[arg1].field_0
                    idx = 128
                    s = 0
                    while uint255(stor15[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor15[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor15[arg1].field_1)), data=mem[128 len ceil32(uint255(stor15[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor15[arg1].field_8)
        else:
            if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor15[arg1].field_1 % 128:
                if 31 < stor15[arg1].field_1 % 128:
                    mem[128] = stor15[arg1].field_0
                    idx = 128
                    s = 0
                    while stor15[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor15[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor15[arg1].field_1)), data=mem[128 len ceil32(uint255(stor15[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor15[arg1].field_8)
        mem[ceil32(uint255(stor15[arg1].field_1)) + 192 len ceil32(uint255(stor15[arg1].field_1))] = mem[128 len ceil32(uint255(stor15[arg1].field_1))]
        if ceil32(uint255(stor15[arg1].field_1)) > uint255(stor15[arg1].field_1):
            mem[ceil32(uint255(stor15[arg1].field_1)) + uint255(stor15[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor15[arg1].field_1)), data=mem[128 len ceil32(uint255(stor15[arg1].field_1))], mem[(2 * ceil32(uint255(stor15[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor15[arg1].field_1))]), 
    if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor15[arg1].field_0):
        if bool(stor15[arg1].field_0) == uint255(stor15[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor15[arg1].field_1):
            if 31 < uint255(stor15[arg1].field_1):
                mem[128] = stor15[arg1].field_0
                idx = 128
                s = 0
                while uint255(stor15[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor15[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15[arg1].field_0 % 128, data=mem[128 len ceil32(stor15[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15[arg1].field_8)
    else:
        if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor15[arg1].field_1 % 128:
            if 31 < stor15[arg1].field_1 % 128:
                mem[128] = stor15[arg1].field_0
                idx = 128
                s = 0
                while stor15[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor15[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15[arg1].field_0 % 128, data=mem[128 len ceil32(stor15[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15[arg1].field_8)
    mem[ceil32(stor15[arg1].field_1 % 128) + 192 len ceil32(stor15[arg1].field_1 % 128)] = mem[128 len ceil32(stor15[arg1].field_1 % 128)]
    if ceil32(stor15[arg1].field_1 % 128) > stor15[arg1].field_1 % 128:
        mem[ceil32(stor15[arg1].field_1 % 128) + stor15[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor15[arg1].field_0 % 128, data=mem[128 len ceil32(stor15[arg1].field_1 % 128)], mem[(2 * ceil32(stor15[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor15[arg1].field_1 % 128)]), 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor15[arg1].field_0):
        if bool(stor15[arg1].field_0) == uint255(stor15[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor15[arg1].field_0):
            if bool(stor15[arg1].field_0) == uint255(stor15[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor15[arg1].field_1):
                if 31 < uint255(stor15[arg1].field_1):
                    mem[128] = stor15[arg1].field_0
                    idx = 128
                    s = 0
                    while uint255(stor15[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor15[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor15[arg1].field_1)), data=mem[128 len ceil32(uint255(stor15[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor15[arg1].field_8)
        else:
            if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor15[arg1].field_1 % 128:
                if 31 < stor15[arg1].field_1 % 128:
                    mem[128] = stor15[arg1].field_0
                    idx = 128
                    s = 0
                    while stor15[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor15[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor15[arg1].field_1)), data=mem[128 len ceil32(uint255(stor15[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor15[arg1].field_8)
        mem[ceil32(uint255(stor15[arg1].field_1)) + 192 len ceil32(uint255(stor15[arg1].field_1))] = mem[128 len ceil32(uint255(stor15[arg1].field_1))]
        if ceil32(uint255(stor15[arg1].field_1)) > uint255(stor15[arg1].field_1):
            mem[ceil32(uint255(stor15[arg1].field_1)) + uint255(stor15[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor15[arg1].field_1)), data=mem[128 len ceil32(uint255(stor15[arg1].field_1))], mem[(2 * ceil32(uint255(stor15[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor15[arg1].field_1))]), 
    if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor15[arg1].field_0):
        if bool(stor15[arg1].field_0) == uint255(stor15[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor15[arg1].field_1):
            if 31 < uint255(stor15[arg1].field_1):
                mem[128] = stor15[arg1].field_0
                idx = 128
                s = 0
                while uint255(stor15[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor15[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15[arg1].field_0 % 128, data=mem[128 len ceil32(stor15[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15[arg1].field_8)
    else:
        if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor15[arg1].field_1 % 128:
            if 31 < stor15[arg1].field_1 % 128:
                mem[128] = stor15[arg1].field_0
                idx = 128
                s = 0
                while stor15[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor15[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15[arg1].field_0 % 128, data=mem[128 len ceil32(stor15[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15[arg1].field_8)
    mem[ceil32(stor15[arg1].field_1 % 128) + 192 len ceil32(stor15[arg1].field_1 % 128)] = mem[128 len ceil32(stor15[arg1].field_1 % 128)]
    if ceil32(stor15[arg1].field_1 % 128) > stor15[arg1].field_1 % 128:
        mem[ceil32(stor15[arg1].field_1 % 128) + stor15[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor15[arg1].field_0 % 128, data=mem[128 len ceil32(stor15[arg1].field_1 % 128)], mem[(2 * ceil32(stor15[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor15[arg1].field_1 % 128)]), 
}

function mint(address arg1, uint256 arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(ceil32(arg3.length)) + 97
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if stor20:
        revert with 0, 'Unable to mint right now - Minting has been Paused'
    if arg2 <= 0:
        revert with 0, 'Mint amount has to be more than 0'
    if maxSupply > -2:
        revert with 'NH{q', 17
    if stor11 >= maxSupply + 1:
        revert with 0, 'Maximum NFTS have been minted'
    idx = 1
    while idx <= arg2:
        stor11++
        _144 = mem[64]
        mem[64] = mem[64] + 32
        mem[_144] = 0
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor11]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor11] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor11
        if arg1:
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = stor11
            stor7[stor11] = balanceOf[address(arg1)]
            if balanceOf[address(arg1)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg1)]++
            mem[0] = stor11
            mem[32] = 2
            ownerOf[stor11] = arg1
            emit Transfer(0, arg1, stor11);
            if ext_code.size(arg1) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor11
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_144 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg1)
                call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor11, 128, 0
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
                _290 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_290] == Mask(32, 224, mem[_290])
                if Mask(32, 224, mem[_290]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[stor11] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[stor11]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor11]
            stor9[stor11] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(arg1)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg1)]++
            mem[0] = stor11
            mem[32] = 2
            ownerOf[stor11] = arg1
            emit Transfer(0, arg1, stor11);
            if ext_code.size(arg1) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor11
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_144 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg1)
                call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor11, 128, 0
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
                _291 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_291] == Mask(32, 224, mem[_291])
                if Mask(32, 224, mem[_291]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        mem[32] = 15
        if bool(stor15[stor11].field_0):
            if bool(stor15[stor11].field_0) == uint255(stor15[stor11].field_1) < 32:
                revert with 'NH{q', 34
            mem[0] = sha3(stor11, 15)
            if not mem[96]:
                stor15[stor11].field_0 = 0
                s = sha3(sha3(stor11, 15))
                while sha3(sha3(stor11, 15)) + (uint255(stor15[stor11].field_1) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                stor15[stor11].field_0 = (2 * mem[96]) + 1
                t = sha3(sha3(stor11, 15))
                s = 128
                while mem[96] + 128 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(stor11, 15)) + (Mask(251, 0, mem[96] + 31) >> 5)
                while sha3(sha3(stor11, 15)) + (uint255(stor15[stor11].field_1) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        else:
            if bool(stor15[stor11].field_0) == stor15[stor11].field_1 % 128 < 32:
                revert with 'NH{q', 34
            mem[0] = sha3(stor11, 15)
            if not mem[96]:
                stor15[stor11].field_0 = 0
                s = sha3(sha3(stor11, 15))
                while sha3(sha3(stor11, 15)) + (stor15[stor11].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                stor15[stor11].field_0 = (2 * mem[96]) + 1
                t = sha3(sha3(stor11, 15))
                s = 128
                while mem[96] + 128 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(stor11, 15)) + (Mask(251, 0, mem[96] + 31) >> 5)
                while sha3(sha3(stor11, 15)) + (stor15[stor11].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function getAllTokens() {
    if tokenByIndex.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = tokenByIndex.length
    mem[64] = (32 * tokenByIndex.length) + 128
    if not tokenByIndex.length:
        idx = 0
        s = 0
        while idx < tokenByIndex.length:
            mem[0] = s
            mem[32] = 2
            if ownerOf[s]:
                if not ownerOf[s]:
                    revert with 0, 'ERC721Metadata: URI query for nonexistent token'
                mem[0] = s
                mem[32] = 15
                if bool(stor15[s].field_0):
                    if bool(stor15[s].field_0) == uint255(stor15[s].field_1) < 32:
                        revert with 'NH{q', 34
                    _101 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor15[s].field_1)) + 32
                    mem[_101] = uint255(stor15[s].field_1)
                    if bool(stor15[s].field_0):
                        if bool(stor15[s].field_0) == uint255(stor15[s].field_1) < 32:
                            revert with 'NH{q', 34
                        if not uint255(stor15[s].field_1):
                            _111 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_111] = s
                            mem[_111 + 32] = _101
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 128] = _111
                        else:
                            if 31 >= uint255(stor15[s].field_1):
                                mem[_101 + 32] = 256 * Mask(248, 0, stor15[s].field_8)
                                _124 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_124] = s
                                mem[_124 + 32] = _101
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + 128] = _124
                            else:
                                mem[0] = sha3(s, 15)
                                mem[_101 + 32] = stor15[s].field_0
                                t = _101 + 32
                                u = sha3(sha3(s, 15))
                                while _101 + uint255(stor15[s].field_1) > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                _180 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_180] = s
                                mem[_180 + 32] = _101
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + 128] = _180
                    else:
                        if bool(stor15[s].field_0) == stor15[s].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not stor15[s].field_1 % 128:
                            _115 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_115] = s
                            mem[_115 + 32] = _101
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 128] = _115
                        else:
                            if 31 >= stor15[s].field_1 % 128:
                                mem[_101 + 32] = 256 * Mask(248, 0, stor15[s].field_8)
                                _129 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_129] = s
                                mem[_129 + 32] = _101
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + 128] = _129
                            else:
                                mem[0] = sha3(s, 15)
                                mem[_101 + 32] = stor15[s].field_0
                                t = _101 + 32
                                u = sha3(sha3(s, 15))
                                while _101 + stor15[s].field_1 % 128 > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                _182 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_182] = s
                                mem[_182 + 32] = _101
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + 128] = _182
                else:
                    if bool(stor15[s].field_0) == stor15[s].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    _102 = mem[64]
                    mem[64] = mem[64] + ceil32(stor15[s].field_1 % 128) + 32
                    mem[_102] = stor15[s].field_1 % 128
                    if bool(stor15[s].field_0):
                        if bool(stor15[s].field_0) == uint255(stor15[s].field_1) < 32:
                            revert with 'NH{q', 34
                        if not uint255(stor15[s].field_1):
                            _118 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_118] = s
                            mem[_118 + 32] = _102
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 128] = _118
                        else:
                            if 31 >= uint255(stor15[s].field_1):
                                mem[_102 + 32] = 256 * Mask(248, 0, stor15[s].field_8)
                                _131 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_131] = s
                                mem[_131 + 32] = _102
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + 128] = _131
                            else:
                                mem[0] = sha3(s, 15)
                                mem[_102 + 32] = stor15[s].field_0
                                t = _102 + 32
                                u = sha3(sha3(s, 15))
                                while _102 + uint255(stor15[s].field_1) > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                _184 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_184] = s
                                mem[_184 + 32] = _102
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + 128] = _184
                    else:
                        if bool(stor15[s].field_0) == stor15[s].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not stor15[s].field_1 % 128:
                            _126 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_126] = s
                            mem[_126 + 32] = _102
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 128] = _126
                        else:
                            if 31 >= stor15[s].field_1 % 128:
                                mem[_102 + 32] = 256 * Mask(248, 0, stor15[s].field_8)
                                _136 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_136] = s
                                mem[_136 + 32] = _102
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + 128] = _136
                            else:
                                mem[0] = sha3(s, 15)
                                mem[_102 + 32] = stor15[s].field_0
                                t = _102 + 32
                                u = sha3(sha3(s, 15))
                                while _102 + stor15[s].field_1 % 128 > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                _186 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_186] = s
                                mem[_186 + 32] = _102
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + 128] = _186
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _90 = mem[64]
        mem[mem[64]] = 32
        _92 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _92:
            mem[u] = t + -_90 - 64
            _177 = mem[s]
            mem[t] = mem[mem[s]]
            _190 = mem[_177 + 32]
            mem[t + 32] = 64
            _191 = mem[_190]
            mem[t + 64] = mem[_190]
            v = 0
            while v < _191:
                mem[t + v + 96] = mem[_190 + v + 32]
                v = v + 32
                continue 
            if ceil32(_191) > _191:
                mem[t + _191 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_191) + 96
            u = u + 32
            continue 
    else:
        mem[64] = (32 * tokenByIndex.length) + 192
        mem[(32 * tokenByIndex.length) + 128] = 0
        mem[(32 * tokenByIndex.length) + 160] = 96
        mem[var11001] = (32 * tokenByIndex.length) + 128
        s = var11001
        idx = var11002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * tokenByIndex.length) + 128] = 0
            mem[(32 * tokenByIndex.length) + 160] = 96
            mem[s + 32] = (32 * tokenByIndex.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        while idx < tokenByIndex.length:
            mem[0] = s
            mem[32] = 2
            if ownerOf[s]:
                if not ownerOf[s]:
                    revert with 0, 'ERC721Metadata: URI query for nonexistent token'
                mem[0] = s
                mem[32] = 15
                if bool(stor15[s].field_0):
                    if bool(stor15[s].field_0) == uint255(stor15[s].field_1) < 32:
                        revert with 'NH{q', 34
                    _242 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor15[s].field_1)) + 32
                    mem[_242] = uint255(stor15[s].field_1)
                    if bool(stor15[s].field_0):
                        if bool(stor15[s].field_0) == uint255(stor15[s].field_1) < 32:
                            revert with 'NH{q', 34
                        if not uint255(stor15[s].field_1):
                            _248 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_248] = s
                            mem[_248 + 32] = _242
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 128] = _248
                        else:
                            if 31 >= uint255(stor15[s].field_1):
                                mem[_242 + 32] = 256 * Mask(248, 0, stor15[s].field_8)
                                _258 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_258] = s
                                mem[_258 + 32] = _242
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + 128] = _258
                            else:
                                mem[0] = sha3(s, 15)
                                mem[_242 + 32] = stor15[s].field_0
                                t = _242 + 32
                                u = sha3(sha3(s, 15))
                                while _242 + uint255(stor15[s].field_1) > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                _281 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_281] = s
                                mem[_281 + 32] = _242
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + 128] = _281
                    else:
                        if bool(stor15[s].field_0) == stor15[s].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not stor15[s].field_1 % 128:
                            _251 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_251] = s
                            mem[_251 + 32] = _242
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 128] = _251
                        else:
                            if 31 >= stor15[s].field_1 % 128:
                                mem[_242 + 32] = 256 * Mask(248, 0, stor15[s].field_8)
                                _263 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_263] = s
                                mem[_263 + 32] = _242
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + 128] = _263
                            else:
                                mem[0] = sha3(s, 15)
                                mem[_242 + 32] = stor15[s].field_0
                                t = _242 + 32
                                u = sha3(sha3(s, 15))
                                while _242 + stor15[s].field_1 % 128 > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                _283 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_283] = s
                                mem[_283 + 32] = _242
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + 128] = _283
                else:
                    if bool(stor15[s].field_0) == stor15[s].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    _243 = mem[64]
                    mem[64] = mem[64] + ceil32(stor15[s].field_1 % 128) + 32
                    mem[_243] = stor15[s].field_1 % 128
                    if bool(stor15[s].field_0):
                        if bool(stor15[s].field_0) == uint255(stor15[s].field_1) < 32:
                            revert with 'NH{q', 34
                        if not uint255(stor15[s].field_1):
                            _254 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_254] = s
                            mem[_254 + 32] = _243
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 128] = _254
                        else:
                            if 31 >= uint255(stor15[s].field_1):
                                mem[_243 + 32] = 256 * Mask(248, 0, stor15[s].field_8)
                                _265 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_265] = s
                                mem[_265 + 32] = _243
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + 128] = _265
                            else:
                                mem[0] = sha3(s, 15)
                                mem[_243 + 32] = stor15[s].field_0
                                t = _243 + 32
                                u = sha3(sha3(s, 15))
                                while _243 + uint255(stor15[s].field_1) > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                _285 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_285] = s
                                mem[_285 + 32] = _243
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + 128] = _285
                    else:
                        if bool(stor15[s].field_0) == stor15[s].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not stor15[s].field_1 % 128:
                            _260 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_260] = s
                            mem[_260 + 32] = _243
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 128] = _260
                        else:
                            if 31 >= stor15[s].field_1 % 128:
                                mem[_243 + 32] = 256 * Mask(248, 0, stor15[s].field_8)
                                _269 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_269] = s
                                mem[_269 + 32] = _243
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + 128] = _269
                            else:
                                mem[0] = sha3(s, 15)
                                mem[_243 + 32] = stor15[s].field_0
                                t = _243 + 32
                                u = sha3(sha3(s, 15))
                                while _243 + stor15[s].field_1 % 128 > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                _287 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_287] = s
                                mem[_287 + 32] = _243
                                if s >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + 128] = _287
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _235 = mem[64]
        mem[mem[64]] = 32
        _237 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _237:
            mem[u] = t + -_235 - 64
            _278 = mem[s]
            mem[t] = mem[mem[s]]
            _289 = mem[_278 + 32]
            mem[t + 32] = 64
            _290 = mem[_289]
            mem[t + 64] = mem[_289]
            v = 0
            while v < _290:
                mem[t + v + 96] = mem[_289 + v + 32]
                v = v + 32
                continue 
            if ceil32(_290) > _290:
                mem[t + _290 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_290) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function getMyTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = arg1
    mem[32] = 3
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    if balanceOf[address(arg1)] + 1 > test266151307():
        revert with 'NH{q', 65
    mem[96] = balanceOf[address(arg1)] + 1
    mem[64] = (32 * balanceOf[address(arg1)] + 1) + 128
    if not balanceOf[address(arg1)] + 1:
        idx = 0
        while idx < balanceOf[address(arg1)]:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            if not ownerOf[stor6[address(arg1)][idx]]:
                revert with 0, 'ERC721Metadata: URI query for nonexistent token'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 15
            if bool(stor15[stor6[address(arg1)][idx]].field_0):
                if bool(stor15[stor6[address(arg1)][idx]].field_0) == uint255(stor15[stor6[address(arg1)][idx]].field_1) < 32:
                    revert with 'NH{q', 34
                _128 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor15[stor6[address(arg1)][idx]].field_1)) + 32
                mem[_128] = uint255(stor15[stor6[address(arg1)][idx]].field_1)
                if bool(stor15[stor6[address(arg1)][idx]].field_0):
                    if bool(stor15[stor6[address(arg1)][idx]].field_0) == uint255(stor15[stor6[address(arg1)][idx]].field_1) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor15[stor6[address(arg1)][idx]].field_1):
                        _141 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_141] = tokenOfOwnerByIndex[address(arg1)][idx]
                        mem[_141 + 32] = _128
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _141
                    else:
                        if 31 >= uint255(stor15[stor6[address(arg1)][idx]].field_1):
                            mem[_128 + 32] = 256 * Mask(248, 0, stor15[stor6[address(arg1)][idx]].field_8)
                            _151 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_151] = tokenOfOwnerByIndex[address(arg1)][idx]
                            mem[_151 + 32] = _128
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _151
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 15)
                            mem[_128 + 32] = stor15[stor6[address(arg1)][idx]].field_0
                            s = _128 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 15))
                            while _128 + uint255(stor15[stor6[address(arg1)][idx]].field_1) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            _207 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_207] = tokenOfOwnerByIndex[address(arg1)][idx]
                            mem[_207 + 32] = _128
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _207
                else:
                    if bool(stor15[stor6[address(arg1)][idx]].field_0) == stor15[stor6[address(arg1)][idx]].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor15[stor6[address(arg1)][idx]].field_1 % 128:
                        _145 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_145] = tokenOfOwnerByIndex[address(arg1)][idx]
                        mem[_145 + 32] = _128
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _145
                    else:
                        if 31 >= stor15[stor6[address(arg1)][idx]].field_1 % 128:
                            mem[_128 + 32] = 256 * Mask(248, 0, stor15[stor6[address(arg1)][idx]].field_8)
                            _157 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_157] = tokenOfOwnerByIndex[address(arg1)][idx]
                            mem[_157 + 32] = _128
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _157
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 15)
                            mem[_128 + 32] = stor15[stor6[address(arg1)][idx]].field_0
                            s = _128 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 15))
                            while _128 + stor15[stor6[address(arg1)][idx]].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            _209 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_209] = tokenOfOwnerByIndex[address(arg1)][idx]
                            mem[_209 + 32] = _128
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _209
            else:
                if bool(stor15[stor6[address(arg1)][idx]].field_0) == stor15[stor6[address(arg1)][idx]].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                _129 = mem[64]
                mem[64] = mem[64] + ceil32(stor15[stor6[address(arg1)][idx]].field_1 % 128) + 32
                mem[_129] = stor15[stor6[address(arg1)][idx]].field_1 % 128
                if bool(stor15[stor6[address(arg1)][idx]].field_0):
                    if bool(stor15[stor6[address(arg1)][idx]].field_0) == uint255(stor15[stor6[address(arg1)][idx]].field_1) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor15[stor6[address(arg1)][idx]].field_1):
                        _148 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_148] = tokenOfOwnerByIndex[address(arg1)][idx]
                        mem[_148 + 32] = _129
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _148
                    else:
                        if 31 >= uint255(stor15[stor6[address(arg1)][idx]].field_1):
                            mem[_129 + 32] = 256 * Mask(248, 0, stor15[stor6[address(arg1)][idx]].field_8)
                            _159 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_159] = tokenOfOwnerByIndex[address(arg1)][idx]
                            mem[_159 + 32] = _129
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _159
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 15)
                            mem[_129 + 32] = stor15[stor6[address(arg1)][idx]].field_0
                            s = _129 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 15))
                            while _129 + uint255(stor15[stor6[address(arg1)][idx]].field_1) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            _211 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_211] = tokenOfOwnerByIndex[address(arg1)][idx]
                            mem[_211 + 32] = _129
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _211
                else:
                    if bool(stor15[stor6[address(arg1)][idx]].field_0) == stor15[stor6[address(arg1)][idx]].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor15[stor6[address(arg1)][idx]].field_1 % 128:
                        _153 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_153] = tokenOfOwnerByIndex[address(arg1)][idx]
                        mem[_153 + 32] = _129
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _153
                    else:
                        if 31 >= stor15[stor6[address(arg1)][idx]].field_1 % 128:
                            mem[_129 + 32] = 256 * Mask(248, 0, stor15[stor6[address(arg1)][idx]].field_8)
                            _164 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_164] = tokenOfOwnerByIndex[address(arg1)][idx]
                            mem[_164 + 32] = _129
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _164
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 15)
                            mem[_129 + 32] = stor15[stor6[address(arg1)][idx]].field_0
                            s = _129 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 15))
                            while _129 + stor15[stor6[address(arg1)][idx]].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            _213 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_213] = tokenOfOwnerByIndex[address(arg1)][idx]
                            mem[_213 + 32] = _129
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _213
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _105 = mem[64]
        mem[mem[64]] = 32
        _108 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _108:
            mem[u] = t + -_105 - 64
            _204 = mem[s]
            mem[t] = mem[mem[s]]
            _216 = mem[_204 + 32]
            mem[t + 32] = 64
            _219 = mem[_216]
            mem[t + 64] = mem[_216]
            v = 0
            while v < _219:
                mem[t + v + 96] = mem[_216 + v + 32]
                v = v + 32
                continue 
            if ceil32(_219) > _219:
                mem[t + _219 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_219) + 96
            u = u + 32
            continue 
    else:
        mem[64] = (32 * balanceOf[address(arg1)] + 1) + 192
        mem[(32 * balanceOf[address(arg1)] + 1) + 128] = 0
        mem[(32 * balanceOf[address(arg1)] + 1) + 160] = 96
        mem[var31001] = (32 * balanceOf[address(arg1)] + 1) + 128
        s = var31001
        idx = var31002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * balanceOf[address(arg1)] + 1) + 128] = 0
            mem[(32 * balanceOf[address(arg1)] + 1) + 160] = 96
            mem[s + 32] = (32 * balanceOf[address(arg1)] + 1) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < balanceOf[address(arg1)]:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            if not ownerOf[stor6[address(arg1)][idx]]:
                revert with 0, 'ERC721Metadata: URI query for nonexistent token'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 15
            if bool(stor15[stor6[address(arg1)][idx]].field_0):
                if bool(stor15[stor6[address(arg1)][idx]].field_0) == uint255(stor15[stor6[address(arg1)][idx]].field_1) < 32:
                    revert with 'NH{q', 34
                _283 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor15[stor6[address(arg1)][idx]].field_1)) + 32
                mem[_283] = uint255(stor15[stor6[address(arg1)][idx]].field_1)
                if bool(stor15[stor6[address(arg1)][idx]].field_0):
                    if bool(stor15[stor6[address(arg1)][idx]].field_0) == uint255(stor15[stor6[address(arg1)][idx]].field_1) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor15[stor6[address(arg1)][idx]].field_1):
                        _288 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_288] = tokenOfOwnerByIndex[address(arg1)][idx]
                        mem[_288 + 32] = _283
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _288
                    else:
                        if 31 >= uint255(stor15[stor6[address(arg1)][idx]].field_1):
                            mem[_283 + 32] = 256 * Mask(248, 0, stor15[stor6[address(arg1)][idx]].field_8)
                            _297 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_297] = tokenOfOwnerByIndex[address(arg1)][idx]
                            mem[_297 + 32] = _283
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _297
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 15)
                            mem[_283 + 32] = stor15[stor6[address(arg1)][idx]].field_0
                            s = _283 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 15))
                            while _283 + uint255(stor15[stor6[address(arg1)][idx]].field_1) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            _320 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_320] = tokenOfOwnerByIndex[address(arg1)][idx]
                            mem[_320 + 32] = _283
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _320
                else:
                    if bool(stor15[stor6[address(arg1)][idx]].field_0) == stor15[stor6[address(arg1)][idx]].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor15[stor6[address(arg1)][idx]].field_1 % 128:
                        _291 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_291] = tokenOfOwnerByIndex[address(arg1)][idx]
                        mem[_291 + 32] = _283
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _291
                    else:
                        if 31 >= stor15[stor6[address(arg1)][idx]].field_1 % 128:
                            mem[_283 + 32] = 256 * Mask(248, 0, stor15[stor6[address(arg1)][idx]].field_8)
                            _302 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_302] = tokenOfOwnerByIndex[address(arg1)][idx]
                            mem[_302 + 32] = _283
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _302
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 15)
                            mem[_283 + 32] = stor15[stor6[address(arg1)][idx]].field_0
                            s = _283 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 15))
                            while _283 + stor15[stor6[address(arg1)][idx]].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            _322 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_322] = tokenOfOwnerByIndex[address(arg1)][idx]
                            mem[_322 + 32] = _283
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _322
            else:
                if bool(stor15[stor6[address(arg1)][idx]].field_0) == stor15[stor6[address(arg1)][idx]].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                _284 = mem[64]
                mem[64] = mem[64] + ceil32(stor15[stor6[address(arg1)][idx]].field_1 % 128) + 32
                mem[_284] = stor15[stor6[address(arg1)][idx]].field_1 % 128
                if bool(stor15[stor6[address(arg1)][idx]].field_0):
                    if bool(stor15[stor6[address(arg1)][idx]].field_0) == uint255(stor15[stor6[address(arg1)][idx]].field_1) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor15[stor6[address(arg1)][idx]].field_1):
                        _294 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_294] = tokenOfOwnerByIndex[address(arg1)][idx]
                        mem[_294 + 32] = _284
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _294
                    else:
                        if 31 >= uint255(stor15[stor6[address(arg1)][idx]].field_1):
                            mem[_284 + 32] = 256 * Mask(248, 0, stor15[stor6[address(arg1)][idx]].field_8)
                            _304 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_304] = tokenOfOwnerByIndex[address(arg1)][idx]
                            mem[_304 + 32] = _284
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _304
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 15)
                            mem[_284 + 32] = stor15[stor6[address(arg1)][idx]].field_0
                            s = _284 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 15))
                            while _284 + uint255(stor15[stor6[address(arg1)][idx]].field_1) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            _324 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_324] = tokenOfOwnerByIndex[address(arg1)][idx]
                            mem[_324 + 32] = _284
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _324
                else:
                    if bool(stor15[stor6[address(arg1)][idx]].field_0) == stor15[stor6[address(arg1)][idx]].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor15[stor6[address(arg1)][idx]].field_1 % 128:
                        _299 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_299] = tokenOfOwnerByIndex[address(arg1)][idx]
                        mem[_299 + 32] = _284
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _299
                    else:
                        if 31 >= stor15[stor6[address(arg1)][idx]].field_1 % 128:
                            mem[_284 + 32] = 256 * Mask(248, 0, stor15[stor6[address(arg1)][idx]].field_8)
                            _308 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_308] = tokenOfOwnerByIndex[address(arg1)][idx]
                            mem[_308 + 32] = _284
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _308
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 15)
                            mem[_284 + 32] = stor15[stor6[address(arg1)][idx]].field_0
                            s = _284 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 15))
                            while _284 + stor15[stor6[address(arg1)][idx]].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            _326 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_326] = tokenOfOwnerByIndex[address(arg1)][idx]
                            mem[_326 + 32] = _284
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _326
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _268 = mem[64]
        mem[mem[64]] = 32
        _271 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _271:
            mem[u] = t + -_268 - 64
            _317 = mem[s]
            mem[t] = mem[mem[s]]
            _328 = mem[_317 + 32]
            mem[t + 32] = 64
            _329 = mem[_328]
            mem[t + 64] = mem[_328]
            v = 0
            while v < _329:
                mem[t + v + 96] = mem[_328 + v + 32]
                v = v + 32
                continue 
            if ceil32(_329) > _329:
                mem[t + _329 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_329) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
