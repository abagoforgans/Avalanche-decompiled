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
array of struct stor11;
array of uint256 stor12;
uint256 cost;
uint256 maxSupply;
uint8 paused;
mapping of uint8 stor16;
address paymentsAddress;

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

function payments() {
    return paymentsAddress
}

function maxSupply() {
    return maxSupply
}

function whitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor16[arg1])
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
    paused = uint8(arg1)
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call paymentsAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
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
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while uint255(stor11.length.field_1) + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 % 128 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function mint(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require not paused
    if tokenByIndex.length > -2:
        revert with 'NH{q', 17
    require tokenByIndex.length + 1 <= maxSupply
    require msg.value >= cost
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
    if tokenByIndex.length > -2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor8.length + 1]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor8.length + 1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = tokenByIndex.length + 1
    if msg.sender:
        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + 1
        stor7[stor8.length + 1] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[stor8.length + 1] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor8.length + 1]
        stor9[stor8.length + 1] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor8.length + 1] = msg.sender
    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
    if ext_code.size(msg.sender) > 0:
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
        if not ext_call.success:
            if not return_data.size:
                if not arg1.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg1[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor11.length.field_1):
                if 31 < uint255(stor11.length.field_1):
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor11.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor11.length.field_1)), data=mem[128 len ceil32(uint255(stor11.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
        else:
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1 % 128:
                if 31 < stor11.length.field_1 % 128:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor11.length.field_1)), data=mem[128 len ceil32(uint255(stor11.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
        mem[ceil32(uint255(stor11.length.field_1)) + 192 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
        if ceil32(uint255(stor11.length.field_1)) > uint255(stor11.length.field_1):
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor11.length.field_1)), data=mem[128 len ceil32(uint255(stor11.length.field_1))], mem[(2 * ceil32(uint255(stor11.length.field_1))) + 192 len 2 * ceil32(uint255(stor11.length.field_1))]), 
    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor11.length.field_1):
            if 31 < uint255(stor11.length.field_1):
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while uint255(stor11.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
    else:
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1 % 128:
            if 31 < stor11.length.field_1 % 128:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
    mem[ceil32(stor11.length.field_1 % 128) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
    if ceil32(stor11.length.field_1 % 128) > stor11.length.field_1 % 128:
        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 192] = 0
    return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1 % 128)], mem[(2 * ceil32(stor11.length.field_1 % 128)) + 192 len 2 * ceil32(stor11.length.field_1 % 128)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    else:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        else:
            if msg.sender == ownerOf[arg3]:
                if not ownerOf[arg3]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                else:
                    if ownerOf[arg3] != arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
                    else:
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
                        else:
                            if arg1:
                                if arg1 == arg2:
                                    if arg2:
                                        if arg2 == arg1:
                                            approved[arg3] = 0
                                            if not ownerOf[arg3]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                        else:
                                            if not arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                                            else:
                                                tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                stor7[arg3] = balanceOf[address(arg2)]
                                                approved[arg3] = 0
                                                if not ownerOf[arg3]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                else:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
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
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                    else:
                                                        if not arg2:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                                                        else:
                                                            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                            stor7[arg3] = balanceOf[address(arg2)]
                                                            approved[arg3] = 0
                                                            if not ownerOf[arg3]:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                            else:
                                                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                                                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
                                                stor7[arg3] = 0
                                                tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
                                                if arg2:
                                                    if arg2 == arg1:
                                                        approved[arg3] = 0
                                                        if not ownerOf[arg3]:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                    else:
                                                        if not arg2:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                                                        else:
                                                            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                            stor7[arg3] = balanceOf[address(arg2)]
                                                            approved[arg3] = 0
                                                            if not ownerOf[arg3]:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                            else:
                                stor9[arg3] = tokenByIndex.length
                                tokenByIndex.length++
                                tokenByIndex[tokenByIndex.length] = arg3
                                if arg2:
                                    if arg2 == arg1:
                                        approved[arg3] = 0
                                        if not ownerOf[arg3]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                    else:
                                        if not arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                                        else:
                                            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                            stor7[arg3] = balanceOf[address(arg2)]
                                            approved[arg3] = 0
                                            if not ownerOf[arg3]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
            else:
                if not ownerOf[arg3]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
                else:
                    if approved[arg3] == msg.sender:
                        if not ownerOf[arg3]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                        else:
                            if ownerOf[arg3] != arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
                            else:
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
                                else:
                                    if arg1:
                                        if arg1 == arg2:
                                            if arg2:
                                                if arg2 == arg1:
                                                    approved[arg3] = 0
                                                    if not ownerOf[arg3]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                else:
                                                    if not arg2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                                                    else:
                                                        tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                        stor7[arg3] = balanceOf[address(arg2)]
                                                        approved[arg3] = 0
                                                        if not ownerOf[arg3]:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                        else:
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
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
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                            else:
                                                                if not arg2:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                                                                else:
                                                                    tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                                    stor7[arg3] = balanceOf[address(arg2)]
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                    else:
                                                        tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                                                        stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
                                                        stor7[arg3] = 0
                                                        tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
                                                        if arg2:
                                                            if arg2 == arg1:
                                                                approved[arg3] = 0
                                                                if not ownerOf[arg3]:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                            else:
                                                                if not arg2:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                                                                else:
                                                                    tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                                    stor7[arg3] = balanceOf[address(arg2)]
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                    else:
                                        stor9[arg3] = tokenByIndex.length
                                        tokenByIndex.length++
                                        tokenByIndex[tokenByIndex.length] = arg3
                                        if arg2:
                                            if arg2 == arg1:
                                                approved[arg3] = 0
                                                if not ownerOf[arg3]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                            else:
                                                if not arg2:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                                                else:
                                                    tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                    stor7[arg3] = balanceOf[address(arg2)]
                                                    approved[arg3] = 0
                                                    if not ownerOf[arg3]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                    else:
                        if not stor5[stor2[arg3]][address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
                        else:
                            if not ownerOf[arg3]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                            else:
                                if ownerOf[arg3] != arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
                                else:
                                    if not arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
                                    else:
                                        if arg1:
                                            if arg1 == arg2:
                                                if arg2:
                                                    if arg2 == arg1:
                                                        approved[arg3] = 0
                                                        if not ownerOf[arg3]:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                    else:
                                                        if not arg2:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                                                        else:
                                                            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                            stor7[arg3] = balanceOf[address(arg2)]
                                                            approved[arg3] = 0
                                                            if not ownerOf[arg3]:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                            else:
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
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
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                                else:
                                                                    if not arg2:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                                                                    else:
                                                                        tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                                        stor7[arg3] = balanceOf[address(arg2)]
                                                                        approved[arg3] = 0
                                                                        if not ownerOf[arg3]:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                        else:
                                                            tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                                                            stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
                                                            stor7[arg3] = 0
                                                            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
                                                            if arg2:
                                                                if arg2 == arg1:
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                                else:
                                                                    if not arg2:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                                                                    else:
                                                                        tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                                        stor7[arg3] = balanceOf[address(arg2)]
                                                                        approved[arg3] = 0
                                                                        if not ownerOf[arg3]:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                        else:
                                            stor9[arg3] = tokenByIndex.length
                                            tokenByIndex.length++
                                            tokenByIndex[tokenByIndex.length] = arg3
                                            if arg2:
                                                if arg2 == arg1:
                                                    approved[arg3] = 0
                                                    if not ownerOf[arg3]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                else:
                                                    if not arg2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                                                    else:
                                                        tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                                                        stor7[arg3] = balanceOf[address(arg2)]
                                                        approved[arg3] = 0
                                                        if not ownerOf[arg3]:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
            revert with 'NH{q', 34
        mem[64] = ceil32(uint255(stor11.length.field_1)) + 128
        mem[96] = uint255(stor11.length.field_1)
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor11.length.field_1):
                if uint255(stor11.length.field_1) <= 0:
                    return ''
                if bool(stor11.length):
                    if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + 160] = Mask(248, 8, stor11.length)
                        if bool(stor12.length):
                            if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                                return Array(len=uint255(stor11.length.field_1) + uint255(stor12.length.field_1), data=mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 31)]), 
                            if bool(stor12.length) != 1:
                                return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), mem[128 len ceil32(uint255(stor11.length.field_1)) + 32], Mask(248, 8, stor11.length), mem[ceil32(uint255(stor11.length.field_1)) + 192 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) + -ceil32(uint255(stor11.length.field_1)) - 128]), 
                            idx = 0
                            s = 0
                            while idx < uint255(stor12.length.field_1):
                                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                            if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                            return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                        if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                            return Array(len=uint255(stor11.length.field_1) + stor12.length.field_1 % 128, data=mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 31)]), 
                        if bool(stor12.length) != 1:
                            return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), mem[128 len ceil32(uint255(stor11.length.field_1)) + 32], Mask(248, 8, stor11.length), mem[ceil32(uint255(stor11.length.field_1)) + 192 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) + -ceil32(uint255(stor11.length.field_1)) - 128]), 
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1 % 128:
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                    if bool(stor11.length) == 1:
                        idx = 0
                        s = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + idx + 160] = stor11[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if bool(stor12.length):
                            if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _3754 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                                    if ceil32(_3754) > _3754:
                                        mem[_3754 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_3754) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < uint255(stor12.length.field_1):
                                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                            if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                            return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                        if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _3805 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                                if ceil32(_3805) > _3805:
                                    mem[_3805 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_3805) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1 % 128:
                                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                    if bool(stor12.length):
                        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[0] = Mask(248, 8, stor12.length)
                            mem[ceil32(uint255(stor11.length.field_1)) + 128] = uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160
                            mem[64] = uint255(stor12.length.field_1)
                            mem[uint255(stor12.length.field_1)] = 32
                            mem[uint255(stor12.length.field_1) + 32] = uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160
                            mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)]
                            return Array(len=uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160, data=mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)]), 
                        if bool(stor12.length) != 1:
                            return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), mem[128 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 64]), 
                        mem[0] = 12
                        idx = 0
                        s = 0
                        while idx < uint255(stor12.length.field_1):
                            mem[idx] = stor[s + sha3(mem[0])]
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _3008 = mem[64]
                        mem[64] = uint255(stor12.length.field_1)
                        mem[uint255(stor12.length.field_1)] = 32
                        _3420 = mem[_3008]
                        mem[uint255(stor12.length.field_1) + 32] = mem[_3008]
                        mem[uint255(stor12.length.field_1) + 64 len ceil32(_3420)] = mem[_3008 + 32 len ceil32(_3420)]
                        if ceil32(_3420) > _3420:
                            mem[uint255(stor12.length.field_1) + _3420 + 64] = 0
                        return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_3420) + 32]
                    if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[0] = Mask(248, 8, stor12.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + 128] = stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160
                        mem[64] = stor12.length.field_1 % 128
                        mem[stor12.length.field_1 % 128] = 32
                        mem[stor12.length.field_1 % 128 + 32] = stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160
                        mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)]
                        return Array(len=stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160, data=mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)]), 
                    if bool(stor12.length) != 1:
                        return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), mem[128 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 64]), 
                    mem[0] = 12
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1 % 128:
                        mem[idx] = stor[s + sha3(mem[0])]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _3009 = mem[64]
                    mem[64] = stor12.length.field_1 % 128
                    mem[stor12.length.field_1 % 128] = 32
                    _3421 = mem[_3009]
                    mem[stor12.length.field_1 % 128 + 32] = mem[_3009]
                    mem[stor12.length.field_1 % 128 + 64 len ceil32(_3421)] = mem[_3009 + 32 len ceil32(_3421)]
                    if ceil32(_3421) > _3421:
                        mem[stor12.length.field_1 % 128 + _3421 + 64] = 0
                    return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_3421) + 32]
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + 160] = Mask(248, 8, stor11.length)
                    if bool(stor12.length):
                        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                            return Array(len=stor11.length.field_1 % 128 + uint255(stor12.length.field_1), data=mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 31)]), 
                        if bool(stor12.length) != 1:
                            return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), mem[128 len ceil32(uint255(stor11.length.field_1)) + 32], Mask(248, 8, stor11.length), mem[ceil32(uint255(stor11.length.field_1)) + 192 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) + -ceil32(uint255(stor11.length.field_1)) - 128]), 
                        idx = 0
                        s = 0
                        while idx < uint255(stor12.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                    if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                        return Array(len=stor11.length.field_1 % 128 + stor12.length.field_1 % 128, data=mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 31)]), 
                    if bool(stor12.length) != 1:
                        return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), mem[128 len ceil32(uint255(stor11.length.field_1)) + 32], Mask(248, 8, stor11.length), mem[ceil32(uint255(stor11.length.field_1)) + 192 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) + -ceil32(uint255(stor11.length.field_1)) - 128]), 
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    s = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + idx + 160] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor12.length):
                        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _3757 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                                if ceil32(_3757) > _3757:
                                    mem[_3757 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_3757) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor12.length.field_1):
                                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                    if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _3811 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                            if ceil32(_3811) > _3811:
                                mem[_3811 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_3811) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1 % 128:
                            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[0] = Mask(248, 8, stor12.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + 128] = uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160
                        mem[64] = uint255(stor12.length.field_1)
                        mem[uint255(stor12.length.field_1)] = 32
                        mem[uint255(stor12.length.field_1) + 32] = uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160
                        mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)]
                        return Array(len=uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160, data=mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)]), 
                    if bool(stor12.length) != 1:
                        return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), mem[128 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 64]), 
                    mem[0] = 12
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length.field_1):
                        mem[idx] = stor[s + sha3(mem[0])]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _3012 = mem[64]
                    mem[64] = uint255(stor12.length.field_1)
                    mem[uint255(stor12.length.field_1)] = 32
                    _3424 = mem[_3012]
                    mem[uint255(stor12.length.field_1) + 32] = mem[_3012]
                    mem[uint255(stor12.length.field_1) + 64 len ceil32(_3424)] = mem[_3012 + 32 len ceil32(_3424)]
                    if ceil32(_3424) > _3424:
                        mem[uint255(stor12.length.field_1) + _3424 + 64] = 0
                    return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_3424) + 32]
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[0] = Mask(248, 8, stor12.length)
                    mem[ceil32(uint255(stor11.length.field_1)) + 128] = stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160
                    mem[64] = stor12.length.field_1 % 128
                    mem[stor12.length.field_1 % 128] = 32
                    mem[stor12.length.field_1 % 128 + 32] = stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160
                    mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)]
                    return Array(len=stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160, data=mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)]), 
                if bool(stor12.length) != 1:
                    return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), mem[128 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 64]), 
                mem[0] = 12
                idx = 0
                s = 0
                while idx < stor12.length.field_1 % 128:
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _3013 = mem[64]
                mem[64] = stor12.length.field_1 % 128
                mem[stor12.length.field_1 % 128] = 32
                _3425 = mem[_3013]
                mem[stor12.length.field_1 % 128 + 32] = mem[_3013]
                mem[stor12.length.field_1 % 128 + 64 len ceil32(_3425)] = mem[_3013 + 32 len ceil32(_3425)]
                if ceil32(_3425) > _3425:
                    mem[stor12.length.field_1 % 128 + _3425 + 64] = 0
                return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_3425) + 32]
            if 31 >= uint255(stor11.length.field_1):
                mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
                if uint255(stor11.length.field_1) <= 0:
                    return ''
                if bool(stor11.length):
                    if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + 160] = Mask(248, 8, stor11.length)
                        if bool(stor12.length):
                            if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                                return Array(len=uint255(stor11.length.field_1) + uint255(stor12.length.field_1), data=mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 31)]), 
                            if bool(stor12.length) != 1:
                                return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 96]), 
                            idx = 0
                            s = 0
                            while idx < uint255(stor12.length.field_1):
                                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                            if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                            return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                        if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                            return Array(len=uint255(stor11.length.field_1) + stor12.length.field_1 % 128, data=mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 31)]), 
                        if bool(stor12.length) != 1:
                            return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 96]), 
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1 % 128:
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                    if bool(stor11.length) == 1:
                        idx = 0
                        s = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + idx + 160] = stor11[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if bool(stor12.length):
                            if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _3760 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                                    if ceil32(_3760) > _3760:
                                        mem[_3760 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_3760) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < uint255(stor12.length.field_1):
                                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                            if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                            return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                        if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _3818 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                                if ceil32(_3818) > _3818:
                                    mem[_3818 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_3818) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1 % 128:
                                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                    if bool(stor12.length):
                        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[0] = Mask(248, 8, stor12.length)
                            mem[ceil32(uint255(stor11.length.field_1)) + 128] = uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160
                            mem[64] = uint255(stor12.length.field_1)
                            mem[uint255(stor12.length.field_1)] = 32
                            mem[uint255(stor12.length.field_1) + 32] = uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160
                            mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)]
                            return Array(len=uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160, data=mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)]), 
                        if bool(stor12.length) != 1:
                            return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 96]), 
                        mem[0] = 12
                        idx = 0
                        s = 0
                        while idx < uint255(stor12.length.field_1):
                            mem[idx] = stor[s + sha3(mem[0])]
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _3018 = mem[64]
                        mem[64] = uint255(stor12.length.field_1)
                        mem[uint255(stor12.length.field_1)] = 32
                        _3429 = mem[_3018]
                        mem[uint255(stor12.length.field_1) + 32] = mem[_3018]
                        mem[uint255(stor12.length.field_1) + 64 len ceil32(_3429)] = mem[_3018 + 32 len ceil32(_3429)]
                        if ceil32(_3429) > _3429:
                            mem[uint255(stor12.length.field_1) + _3429 + 64] = 0
                        return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_3429) + 32]
                    if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[0] = Mask(248, 8, stor12.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + 128] = stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160
                        mem[64] = stor12.length.field_1 % 128
                        mem[stor12.length.field_1 % 128] = 32
                        mem[stor12.length.field_1 % 128 + 32] = stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160
                        mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)]
                        return Array(len=stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160, data=mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)]), 
                    if bool(stor12.length) != 1:
                        return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 96]), 
                    mem[0] = 12
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1 % 128:
                        mem[idx] = stor[s + sha3(mem[0])]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _3019 = mem[64]
                    mem[64] = stor12.length.field_1 % 128
                    mem[stor12.length.field_1 % 128] = 32
                    _3430 = mem[_3019]
                    mem[stor12.length.field_1 % 128 + 32] = mem[_3019]
                    mem[stor12.length.field_1 % 128 + 64 len ceil32(_3430)] = mem[_3019 + 32 len ceil32(_3430)]
                    if ceil32(_3430) > _3430:
                        mem[stor12.length.field_1 % 128 + _3430 + 64] = 0
                    return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_3430) + 32]
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + 160] = Mask(248, 8, stor11.length)
                    if bool(stor12.length):
                        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                            return Array(len=stor11.length.field_1 % 128 + uint255(stor12.length.field_1), data=mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 31)]), 
                        if bool(stor12.length) != 1:
                            return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 96]), 
                        idx = 0
                        s = 0
                        while idx < uint255(stor12.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                    if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                        return Array(len=stor11.length.field_1 % 128 + stor12.length.field_1 % 128, data=mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 31)]), 
                    if bool(stor12.length) != 1:
                        return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 96]), 
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    s = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + idx + 160] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor12.length):
                        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _3763 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                                if ceil32(_3763) > _3763:
                                    mem[_3763 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_3763) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor12.length.field_1):
                                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                    if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _3824 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                            if ceil32(_3824) > _3824:
                                mem[_3824 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_3824) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1 % 128:
                            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[0] = Mask(248, 8, stor12.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + 128] = uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160
                        mem[64] = uint255(stor12.length.field_1)
                        mem[uint255(stor12.length.field_1)] = 32
                        mem[uint255(stor12.length.field_1) + 32] = uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160
                        mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)]
                        return Array(len=uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160, data=mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)]), 
                    if bool(stor12.length) != 1:
                        return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 96]), 
                    mem[0] = 12
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length.field_1):
                        mem[idx] = stor[s + sha3(mem[0])]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _3022 = mem[64]
                    mem[64] = uint255(stor12.length.field_1)
                    mem[uint255(stor12.length.field_1)] = 32
                    _3433 = mem[_3022]
                    mem[uint255(stor12.length.field_1) + 32] = mem[_3022]
                    mem[uint255(stor12.length.field_1) + 64 len ceil32(_3433)] = mem[_3022 + 32 len ceil32(_3433)]
                    if ceil32(_3433) > _3433:
                        mem[uint255(stor12.length.field_1) + _3433 + 64] = 0
                    return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_3433) + 32]
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[0] = Mask(248, 8, stor12.length)
                    mem[ceil32(uint255(stor11.length.field_1)) + 128] = stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160
                    mem[64] = stor12.length.field_1 % 128
                    mem[stor12.length.field_1 % 128] = 32
                    mem[stor12.length.field_1 % 128 + 32] = stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160
                    mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)]
                    return Array(len=stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160, data=mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)]), 
                if bool(stor12.length) != 1:
                    return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 96]), 
                mem[0] = 12
                idx = 0
                s = 0
                while idx < stor12.length.field_1 % 128:
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _3023 = mem[64]
                mem[64] = stor12.length.field_1 % 128
                mem[stor12.length.field_1 % 128] = 32
                _3434 = mem[_3023]
                mem[stor12.length.field_1 % 128 + 32] = mem[_3023]
                mem[stor12.length.field_1 % 128 + 64 len ceil32(_3434)] = mem[_3023 + 32 len ceil32(_3434)]
                if ceil32(_3434) > _3434:
                    mem[stor12.length.field_1 % 128 + _3434 + 64] = 0
                return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_3434) + 32]
            mem[128] = uint256(stor11.field_0)
            idx = 128
            s = 0
            while uint255(stor11.length.field_1) + 96 > idx:
                mem[idx + 32] = stor11[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if uint255(stor11.length.field_1) <= 0:
                return ''
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + 160] = Mask(248, 8, stor11.length)
                    if bool(stor12.length):
                        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _4316 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                                if ceil32(_4316) > _4316:
                                    mem[_4316 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_4316) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor12.length.field_1):
                                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                    if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _4413 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                            if ceil32(_4413) > _4413:
                                mem[_4413 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_4413) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1 % 128:
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    s = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + idx + 160] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor12.length):
                        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _6158 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                                if ceil32(_6158) > _6158:
                                    mem[_6158 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_6158) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor12.length.field_1):
                                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                    if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _6189 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                            if ceil32(_6189) > _6189:
                                mem[_6189 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_6189) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1 % 128:
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[0] = Mask(248, 8, stor12.length)
                        mem[64] = uint255(stor12.length.field_1)
                        mem[uint255(stor12.length.field_1)] = 32
                        _4321 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[uint255(stor12.length.field_1) + 32] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[uint255(stor12.length.field_1) + 64 len ceil32(_4321)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(_4321)]
                        if ceil32(_4321) > _4321:
                            mem[uint255(stor12.length.field_1) + _4321 + 64] = 0
                        return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_4321) + 32]
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _4416 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(_4416) > _4416:
                            mem[_4416 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_4416) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length.field_1):
                        mem[idx] = stor[s + sha3(mem[0])]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _5420 = mem[64]
                    mem[64] = uint255(stor12.length.field_1)
                    mem[uint255(stor12.length.field_1)] = 32
                    _5940 = mem[_5420]
                    mem[uint255(stor12.length.field_1) + 32] = mem[_5420]
                    mem[uint255(stor12.length.field_1) + 64 len ceil32(_5940)] = mem[_5420 + 32 len ceil32(_5940)]
                    if ceil32(_5940) > _5940:
                        mem[uint255(stor12.length.field_1) + _5940 + 64] = 0
                    return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_5940) + 32]
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[0] = Mask(248, 8, stor12.length)
                    mem[64] = stor12.length.field_1 % 128
                    mem[stor12.length.field_1 % 128] = 32
                    _4417 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[stor12.length.field_1 % 128 + 32] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[stor12.length.field_1 % 128 + 64 len ceil32(_4417)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(_4417)]
                    if ceil32(_4417) > _4417:
                        mem[stor12.length.field_1 % 128 + _4417 + 64] = 0
                    return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_4417) + 32]
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _4516 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(_4516) > _4516:
                        mem[_4516 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_4516) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                s = 0
                while idx < stor12.length.field_1 % 128:
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _5421 = mem[64]
                mem[64] = stor12.length.field_1 % 128
                mem[stor12.length.field_1 % 128] = 32
                _5941 = mem[_5421]
                mem[stor12.length.field_1 % 128 + 32] = mem[_5421]
                mem[stor12.length.field_1 % 128 + 64 len ceil32(_5941)] = mem[_5421 + 32 len ceil32(_5941)]
                if ceil32(_5941) > _5941:
                    mem[stor12.length.field_1 % 128 + _5941 + 64] = 0
                return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_5941) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(uint255(stor11.length.field_1)) + 160] = Mask(248, 8, stor11.length)
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _4419 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                            if ceil32(_4419) > _4419:
                                mem[_4419 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_4419) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor12.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _4518 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(_4518) > _4518:
                            mem[_4518 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_4518) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
            if bool(stor11.length) == 1:
                idx = 0
                s = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + idx + 160] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _6161 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                            if ceil32(_6161) > _6161:
                                mem[_6161 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_6161) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor12.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _6195 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(_6195) > _6195:
                            mem[_6195 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_6195) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[0] = Mask(248, 8, stor12.length)
                    mem[64] = uint255(stor12.length.field_1)
                    mem[uint255(stor12.length.field_1)] = 32
                    _4424 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[uint255(stor12.length.field_1) + 32] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[uint255(stor12.length.field_1) + 64 len ceil32(_4424)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(_4424)]
                    if ceil32(_4424) > _4424:
                        mem[uint255(stor12.length.field_1) + _4424 + 64] = 0
                    return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_4424) + 32]
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _4521 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(_4521) > _4521:
                        mem[_4521 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_4521) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                s = 0
                while idx < uint255(stor12.length.field_1):
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _5424 = mem[64]
                mem[64] = uint255(stor12.length.field_1)
                mem[uint255(stor12.length.field_1)] = 32
                _5944 = mem[_5424]
                mem[uint255(stor12.length.field_1) + 32] = mem[_5424]
                mem[uint255(stor12.length.field_1) + 64 len ceil32(_5944)] = mem[_5424 + 32 len ceil32(_5944)]
                if ceil32(_5944) > _5944:
                    mem[uint255(stor12.length.field_1) + _5944 + 64] = 0
                return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_5944) + 32]
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[0] = Mask(248, 8, stor12.length)
                mem[64] = stor12.length.field_1 % 128
                mem[stor12.length.field_1 % 128] = 32
                _4522 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[stor12.length.field_1 % 128 + 32] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[stor12.length.field_1 % 128 + 64 len ceil32(_4522)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(_4522)]
                if ceil32(_4522) > _4522:
                    mem[stor12.length.field_1 % 128 + _4522 + 64] = 0
                return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_4522) + 32]
            if bool(stor12.length) != 1:
                mem[64] = 0
                _4580 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                if ceil32(_4580) > _4580:
                    mem[_4580 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_4580) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            s = 0
            while idx < stor12.length.field_1 % 128:
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _5425 = mem[64]
            mem[64] = stor12.length.field_1 % 128
            mem[stor12.length.field_1 % 128] = 32
            _5945 = mem[_5425]
            mem[stor12.length.field_1 % 128 + 32] = mem[_5425]
            mem[stor12.length.field_1 % 128 + 64 len ceil32(_5945)] = mem[_5425 + 32 len ceil32(_5945)]
            if ceil32(_5945) > _5945:
                mem[stor12.length.field_1 % 128 + _5945 + 64] = 0
            return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_5945) + 32]
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not stor11.length.field_1 % 128:
            if uint255(stor11.length.field_1) <= 0:
                return ''
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + 160] = Mask(248, 8, stor11.length)
                    if bool(stor12.length):
                        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                            return Array(len=uint255(stor11.length.field_1) + uint255(stor12.length.field_1), data=mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 31)]), 
                        if bool(stor12.length) != 1:
                            return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), mem[128 len ceil32(uint255(stor11.length.field_1)) + 32], Mask(248, 8, stor11.length), mem[ceil32(uint255(stor11.length.field_1)) + 192 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) + -ceil32(uint255(stor11.length.field_1)) - 128]), 
                        idx = 0
                        s = 0
                        while idx < uint255(stor12.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                    if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                        return Array(len=uint255(stor11.length.field_1) + stor12.length.field_1 % 128, data=mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 31)]), 
                    if bool(stor12.length) != 1:
                        return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), mem[128 len ceil32(uint255(stor11.length.field_1)) + 32], Mask(248, 8, stor11.length), mem[ceil32(uint255(stor11.length.field_1)) + 192 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) + -ceil32(uint255(stor11.length.field_1)) - 128]), 
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    s = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + idx + 160] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor12.length):
                        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _3766 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                                if ceil32(_3766) > _3766:
                                    mem[_3766 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_3766) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor12.length.field_1):
                                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                    if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _3830 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                            if ceil32(_3830) > _3830:
                                mem[_3830 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_3830) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1 % 128:
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[0] = Mask(248, 8, stor12.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + 128] = uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160
                        mem[64] = uint255(stor12.length.field_1)
                        mem[uint255(stor12.length.field_1)] = 32
                        mem[uint255(stor12.length.field_1) + 32] = uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160
                        mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)]
                        return Array(len=uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160, data=mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)]), 
                    if bool(stor12.length) != 1:
                        return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), mem[128 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 64]), 
                    mem[0] = 12
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length.field_1):
                        mem[idx] = stor[s + sha3(mem[0])]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _3026 = mem[64]
                    mem[64] = uint255(stor12.length.field_1)
                    mem[uint255(stor12.length.field_1)] = 32
                    _3437 = mem[_3026]
                    mem[uint255(stor12.length.field_1) + 32] = mem[_3026]
                    mem[uint255(stor12.length.field_1) + 64 len ceil32(_3437)] = mem[_3026 + 32 len ceil32(_3437)]
                    if ceil32(_3437) > _3437:
                        mem[uint255(stor12.length.field_1) + _3437 + 64] = 0
                    return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_3437) + 32]
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[0] = Mask(248, 8, stor12.length)
                    mem[ceil32(uint255(stor11.length.field_1)) + 128] = stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160
                    mem[64] = stor12.length.field_1 % 128
                    mem[stor12.length.field_1 % 128] = 32
                    mem[stor12.length.field_1 % 128 + 32] = stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160
                    mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)]
                    return Array(len=stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160, data=mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)]), 
                if bool(stor12.length) != 1:
                    return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), mem[128 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 64]), 
                mem[0] = 12
                idx = 0
                s = 0
                while idx < stor12.length.field_1 % 128:
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _3027 = mem[64]
                mem[64] = stor12.length.field_1 % 128
                mem[stor12.length.field_1 % 128] = 32
                _3438 = mem[_3027]
                mem[stor12.length.field_1 % 128 + 32] = mem[_3027]
                mem[stor12.length.field_1 % 128 + 64 len ceil32(_3438)] = mem[_3027 + 32 len ceil32(_3438)]
                if ceil32(_3438) > _3438:
                    mem[stor12.length.field_1 % 128 + _3438 + 64] = 0
                return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_3438) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(uint255(stor11.length.field_1)) + 160] = Mask(248, 8, stor11.length)
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                        return Array(len=stor11.length.field_1 % 128 + uint255(stor12.length.field_1), data=mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 31)]), 
                    if bool(stor12.length) != 1:
                        return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), mem[128 len ceil32(uint255(stor11.length.field_1)) + 32], Mask(248, 8, stor11.length), mem[ceil32(uint255(stor11.length.field_1)) + 192 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) + -ceil32(uint255(stor11.length.field_1)) - 128]), 
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                    return Array(len=stor11.length.field_1 % 128 + stor12.length.field_1 % 128, data=mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 31)]), 
                if bool(stor12.length) != 1:
                    return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), mem[128 len ceil32(uint255(stor11.length.field_1)) + 32], Mask(248, 8, stor11.length), mem[ceil32(uint255(stor11.length.field_1)) + 192 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) + -ceil32(uint255(stor11.length.field_1)) - 128]), 
                idx = 0
                s = 0
                while idx < stor12.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
            if bool(stor11.length) == 1:
                idx = 0
                s = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + idx + 160] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _3769 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                            if ceil32(_3769) > _3769:
                                mem[_3769 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_3769) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor12.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _3836 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(_3836) > _3836:
                            mem[_3836 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_3836) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[0] = Mask(248, 8, stor12.length)
                    mem[ceil32(uint255(stor11.length.field_1)) + 128] = uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160
                    mem[64] = uint255(stor12.length.field_1)
                    mem[uint255(stor12.length.field_1)] = 32
                    mem[uint255(stor12.length.field_1) + 32] = uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160
                    mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)]
                    return Array(len=uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160, data=mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)]), 
                if bool(stor12.length) != 1:
                    return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), mem[128 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 64]), 
                mem[0] = 12
                idx = 0
                s = 0
                while idx < uint255(stor12.length.field_1):
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _3030 = mem[64]
                mem[64] = uint255(stor12.length.field_1)
                mem[uint255(stor12.length.field_1)] = 32
                _3441 = mem[_3030]
                mem[uint255(stor12.length.field_1) + 32] = mem[_3030]
                mem[uint255(stor12.length.field_1) + 64 len ceil32(_3441)] = mem[_3030 + 32 len ceil32(_3441)]
                if ceil32(_3441) > _3441:
                    mem[uint255(stor12.length.field_1) + _3441 + 64] = 0
                return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_3441) + 32]
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[0] = Mask(248, 8, stor12.length)
                mem[ceil32(uint255(stor11.length.field_1)) + 128] = stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160
                mem[64] = stor12.length.field_1 % 128
                mem[stor12.length.field_1 % 128] = 32
                mem[stor12.length.field_1 % 128 + 32] = stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160
                mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)]
                return Array(len=stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160, data=mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)]), 
            if bool(stor12.length) != 1:
                return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), mem[128 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 64]), 
            mem[0] = 12
            idx = 0
            s = 0
            while idx < stor12.length.field_1 % 128:
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _3031 = mem[64]
            mem[64] = stor12.length.field_1 % 128
            mem[stor12.length.field_1 % 128] = 32
            _3442 = mem[_3031]
            mem[stor12.length.field_1 % 128 + 32] = mem[_3031]
            mem[stor12.length.field_1 % 128 + 64 len ceil32(_3442)] = mem[_3031 + 32 len ceil32(_3442)]
            if ceil32(_3442) > _3442:
                mem[stor12.length.field_1 % 128 + _3442 + 64] = 0
            return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_3442) + 32]
        if 31 >= stor11.length.field_1 % 128:
            mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
            if uint255(stor11.length.field_1) <= 0:
                return ''
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + 160] = Mask(248, 8, stor11.length)
                    if bool(stor12.length):
                        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                            return Array(len=uint255(stor11.length.field_1) + uint255(stor12.length.field_1), data=mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 31)]), 
                        if bool(stor12.length) != 1:
                            return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 96]), 
                        idx = 0
                        s = 0
                        while idx < uint255(stor12.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                    if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                        return Array(len=uint255(stor11.length.field_1) + stor12.length.field_1 % 128, data=mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 31)]), 
                    if bool(stor12.length) != 1:
                        return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 96]), 
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    s = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + idx + 160] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor12.length):
                        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _3772 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                                if ceil32(_3772) > _3772:
                                    mem[_3772 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_3772) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor12.length.field_1):
                                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                    if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _3843 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                            if ceil32(_3843) > _3843:
                                mem[_3843 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_3843) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1 % 128:
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[0] = Mask(248, 8, stor12.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + 128] = uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160
                        mem[64] = uint255(stor12.length.field_1)
                        mem[uint255(stor12.length.field_1)] = 32
                        mem[uint255(stor12.length.field_1) + 32] = uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160
                        mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)]
                        return Array(len=uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160, data=mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)]), 
                    if bool(stor12.length) != 1:
                        return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 96]), 
                    mem[0] = 12
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length.field_1):
                        mem[idx] = stor[s + sha3(mem[0])]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _3036 = mem[64]
                    mem[64] = uint255(stor12.length.field_1)
                    mem[uint255(stor12.length.field_1)] = 32
                    _3446 = mem[_3036]
                    mem[uint255(stor12.length.field_1) + 32] = mem[_3036]
                    mem[uint255(stor12.length.field_1) + 64 len ceil32(_3446)] = mem[_3036 + 32 len ceil32(_3446)]
                    if ceil32(_3446) > _3446:
                        mem[uint255(stor12.length.field_1) + _3446 + 64] = 0
                    return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_3446) + 32]
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[0] = Mask(248, 8, stor12.length)
                    mem[ceil32(uint255(stor11.length.field_1)) + 128] = stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160
                    mem[64] = stor12.length.field_1 % 128
                    mem[stor12.length.field_1 % 128] = 32
                    mem[stor12.length.field_1 % 128 + 32] = stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160
                    mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)]
                    return Array(len=stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160, data=mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)]), 
                if bool(stor12.length) != 1:
                    return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 96]), 
                mem[0] = 12
                idx = 0
                s = 0
                while idx < stor12.length.field_1 % 128:
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _3037 = mem[64]
                mem[64] = stor12.length.field_1 % 128
                mem[stor12.length.field_1 % 128] = 32
                _3447 = mem[_3037]
                mem[stor12.length.field_1 % 128 + 32] = mem[_3037]
                mem[stor12.length.field_1 % 128 + 64 len ceil32(_3447)] = mem[_3037 + 32 len ceil32(_3447)]
                if ceil32(_3447) > _3447:
                    mem[stor12.length.field_1 % 128 + _3447 + 64] = 0
                return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_3447) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(uint255(stor11.length.field_1)) + 160] = Mask(248, 8, stor11.length)
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                        return Array(len=stor11.length.field_1 % 128 + uint255(stor12.length.field_1), data=mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 31)]), 
                    if bool(stor12.length) != 1:
                        return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 96]), 
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                    return Array(len=stor11.length.field_1 % 128 + stor12.length.field_1 % 128, data=mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 31)]), 
                if bool(stor12.length) != 1:
                    return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 96]), 
                idx = 0
                s = 0
                while idx < stor12.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
            if bool(stor11.length) == 1:
                idx = 0
                s = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + idx + 160] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _3775 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                            if ceil32(_3775) > _3775:
                                mem[_3775 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_3775) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor12.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _3849 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(_3849) > _3849:
                            mem[_3849 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_3849) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[0] = Mask(248, 8, stor12.length)
                    mem[ceil32(uint255(stor11.length.field_1)) + 128] = uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160
                    mem[64] = uint255(stor12.length.field_1)
                    mem[uint255(stor12.length.field_1)] = 32
                    mem[uint255(stor12.length.field_1) + 32] = uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160
                    mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)]
                    return Array(len=uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 160, data=mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(uint255(stor11.length.field_1)) - 129)]), 
                if bool(stor12.length) != 1:
                    return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 96]), 
                mem[0] = 12
                idx = 0
                s = 0
                while idx < uint255(stor12.length.field_1):
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _3040 = mem[64]
                mem[64] = uint255(stor12.length.field_1)
                mem[uint255(stor12.length.field_1)] = 32
                _3450 = mem[_3040]
                mem[uint255(stor12.length.field_1) + 32] = mem[_3040]
                mem[uint255(stor12.length.field_1) + 64 len ceil32(_3450)] = mem[_3040 + 32 len ceil32(_3450)]
                if ceil32(_3450) > _3450:
                    mem[uint255(stor12.length.field_1) + _3450 + 64] = 0
                return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_3450) + 32]
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[0] = Mask(248, 8, stor12.length)
                mem[ceil32(uint255(stor11.length.field_1)) + 128] = stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160
                mem[64] = stor12.length.field_1 % 128
                mem[stor12.length.field_1 % 128] = 32
                mem[stor12.length.field_1 % 128 + 32] = stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160
                mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)]
                return Array(len=stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 160, data=mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(uint255(stor11.length.field_1)) - 129)]), 
            if bool(stor12.length) != 1:
                return Array(len=-ceil32(uint255(stor11.length.field_1)) - 160, data=ceil32(uint255(stor11.length.field_1)) + 128, 2 * Mask(256, -1, uint255(stor11.length.field_1)), 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(uint255(stor11.length.field_1)) - 129) - 96]), 
            mem[0] = 12
            idx = 0
            s = 0
            while idx < stor12.length.field_1 % 128:
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _3041 = mem[64]
            mem[64] = stor12.length.field_1 % 128
            mem[stor12.length.field_1 % 128] = 32
            _3451 = mem[_3041]
            mem[stor12.length.field_1 % 128 + 32] = mem[_3041]
            mem[stor12.length.field_1 % 128 + 64 len ceil32(_3451)] = mem[_3041 + 32 len ceil32(_3451)]
            if ceil32(_3451) > _3451:
                mem[stor12.length.field_1 % 128 + _3451 + 64] = 0
            return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_3451) + 32]
        mem[128] = uint256(stor11.field_0)
        idx = 128
        s = 0
        while stor11.length.field_1 % 128 + 96 > idx:
            mem[idx + 32] = stor11[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if uint255(stor11.length.field_1) <= 0:
            return ''
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(uint255(stor11.length.field_1)) + 160] = Mask(248, 8, stor11.length)
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _4340 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                            if ceil32(_4340) > _4340:
                                mem[_4340 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_4340) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor12.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _4439 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(_4439) > _4439:
                            mem[_4439 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_4439) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
            if bool(stor11.length) == 1:
                idx = 0
                s = 0
                while idx < uint255(stor11.length.field_1):
                    mem[ceil32(uint255(stor11.length.field_1)) + idx + 160] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _6164 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                            if ceil32(_6164) > _6164:
                                mem[_6164 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_6164) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor12.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _6209 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(_6209) > _6209:
                            mem[_6209 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_6209) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[0] = Mask(248, 8, stor12.length)
                    mem[64] = uint255(stor12.length.field_1)
                    mem[uint255(stor12.length.field_1)] = 32
                    _4345 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[uint255(stor12.length.field_1) + 32] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[uint255(stor12.length.field_1) + 64 len ceil32(_4345)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(_4345)]
                    if ceil32(_4345) > _4345:
                        mem[uint255(stor12.length.field_1) + _4345 + 64] = 0
                    return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_4345) + 32]
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _4442 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(_4442) > _4442:
                        mem[_4442 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_4442) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                s = 0
                while idx < uint255(stor12.length.field_1):
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _5436 = mem[64]
                mem[64] = uint255(stor12.length.field_1)
                mem[uint255(stor12.length.field_1)] = 32
                _5956 = mem[_5436]
                mem[uint255(stor12.length.field_1) + 32] = mem[_5436]
                mem[uint255(stor12.length.field_1) + 64 len ceil32(_5956)] = mem[_5436 + 32 len ceil32(_5956)]
                if ceil32(_5956) > _5956:
                    mem[uint255(stor12.length.field_1) + _5956 + 64] = 0
                return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_5956) + 32]
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[0] = Mask(248, 8, stor12.length)
                mem[64] = stor12.length.field_1 % 128
                mem[stor12.length.field_1 % 128] = 32
                _4443 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[stor12.length.field_1 % 128 + 32] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[stor12.length.field_1 % 128 + 64 len ceil32(_4443)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(_4443)]
                if ceil32(_4443) > _4443:
                    mem[stor12.length.field_1 % 128 + _4443 + 64] = 0
                return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_4443) + 32]
            if bool(stor12.length) != 1:
                mem[64] = 0
                _4532 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                if ceil32(_4532) > _4532:
                    mem[_4532 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_4532) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            s = 0
            while idx < stor12.length.field_1 % 128:
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _5437 = mem[64]
            mem[64] = stor12.length.field_1 % 128
            mem[stor12.length.field_1 % 128] = 32
            _5957 = mem[_5437]
            mem[stor12.length.field_1 % 128 + 32] = mem[_5437]
            mem[stor12.length.field_1 % 128 + 64 len ceil32(_5957)] = mem[_5437 + 32 len ceil32(_5957)]
            if ceil32(_5957) > _5957:
                mem[stor12.length.field_1 % 128 + _5957 + 64] = 0
            return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_5957) + 32]
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[ceil32(uint255(stor11.length.field_1)) + 160] = Mask(248, 8, stor11.length)
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _4445 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(_4445) > _4445:
                            mem[_4445 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_4445) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
            else:
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _4534 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(_4534) > _4534:
                        mem[_4534 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_4534) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor12.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
            return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
        if bool(stor11.length) == 1:
            idx = 0
            s = 0
            while idx < stor11.length.field_1 % 128:
                mem[ceil32(uint255(stor11.length.field_1)) + idx + 160] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _6167 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                        if ceil32(_6167) > _6167:
                            mem[_6167 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_6167) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
                return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
            else:
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _6215 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(_6215) > _6215:
                        mem[_6215 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_6215) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor12.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
            mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) > mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 224] = 0
            return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 128], data=mem[ceil32(uint255(stor11.length.field_1)) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]), 
        if bool(stor12.length):
            if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[0] = Mask(248, 8, stor12.length)
                mem[64] = uint255(stor12.length.field_1)
                mem[uint255(stor12.length.field_1)] = 32
                _4450 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[uint255(stor12.length.field_1) + 32] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[uint255(stor12.length.field_1) + 64 len ceil32(_4450)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(_4450)]
                if ceil32(_4450) > _4450:
                    mem[uint255(stor12.length.field_1) + _4450 + 64] = 0
                return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_4450) + 32]
            if bool(stor12.length) != 1:
                mem[64] = 0
                _4537 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                if ceil32(_4537) > _4537:
                    mem[_4537 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_4537) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            s = 0
            while idx < uint255(stor12.length.field_1):
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _5440 = mem[64]
            mem[64] = uint255(stor12.length.field_1)
            mem[uint255(stor12.length.field_1)] = 32
            _5960 = mem[_5440]
            mem[uint255(stor12.length.field_1) + 32] = mem[_5440]
            mem[uint255(stor12.length.field_1) + 64 len ceil32(_5960)] = mem[_5440 + 32 len ceil32(_5960)]
            if ceil32(_5960) > _5960:
                mem[uint255(stor12.length.field_1) + _5960 + 64] = 0
            return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_5960) + 32]
        if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[0] = Mask(248, 8, stor12.length)
            mem[64] = stor12.length.field_1 % 128
            mem[stor12.length.field_1 % 128] = 32
            _4538 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
            mem[stor12.length.field_1 % 128 + 32] = mem[ceil32(uint255(stor11.length.field_1)) + 128]
            mem[stor12.length.field_1 % 128 + 64 len ceil32(_4538)] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(_4538)]
            if ceil32(_4538) > _4538:
                mem[stor12.length.field_1 % 128 + _4538 + 64] = 0
            return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_4538) + 32]
        if bool(stor12.length) != 1:
            mem[64] = 0
            _4587 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
            if ceil32(_4587) > _4587:
                mem[_4587 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_4587) + -mem[64] + 64
        mem[0] = 12
        idx = 0
        s = 0
        while idx < stor12.length.field_1 % 128:
            mem[idx] = stor[s + sha3(mem[0])]
            idx = idx + 32
            s = s + 1
            continue 
        _5441 = mem[64]
        mem[64] = stor12.length.field_1 % 128
        mem[stor12.length.field_1 % 128] = 32
        _5961 = mem[_5441]
        mem[stor12.length.field_1 % 128 + 32] = mem[_5441]
        mem[stor12.length.field_1 % 128 + 64 len ceil32(_5961)] = mem[_5441 + 32 len ceil32(_5961)]
        if ceil32(_5961) > _5961:
            mem[stor12.length.field_1 % 128 + _5961 + 64] = 0
        return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_5961) + 32]
    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    mem[64] = ceil32(stor11.length.field_1 % 128) + 128
    mem[96] = stor11.length.field_1 % 128
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
            revert with 'NH{q', 34
        if not uint255(stor11.length.field_1):
            if stor11.length.field_1 % 128 <= 0:
                return ''
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(stor11.length.field_1 % 128) + 160] = Mask(248, 8, stor11.length)
                    if bool(stor12.length):
                        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                            return Array(len=uint255(stor11.length.field_1) + uint255(stor12.length.field_1), data=mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 31)]), 
                        if bool(stor12.length) != 1:
                            return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, mem[128 len ceil32(stor11.length.field_1 % 128) + 32], Mask(248, 8, stor11.length), mem[ceil32(stor11.length.field_1 % 128) + 192 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) + -ceil32(stor11.length.field_1 % 128) - 128]), 
                        idx = 0
                        s = 0
                        while idx < uint255(stor12.length.field_1):
                            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                    if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                        return Array(len=uint255(stor11.length.field_1) + stor12.length.field_1 % 128, data=mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 31)]), 
                    if bool(stor12.length) != 1:
                        return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, mem[128 len ceil32(stor11.length.field_1 % 128) + 32], Mask(248, 8, stor11.length), mem[ceil32(stor11.length.field_1 % 128) + 192 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) + -ceil32(stor11.length.field_1 % 128) - 128]), 
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1 % 128:
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    s = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(stor11.length.field_1 % 128) + idx + 160] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor12.length):
                        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _3778 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                                if ceil32(_3778) > _3778:
                                    mem[_3778 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_3778) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor12.length.field_1):
                                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                    if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _3855 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                            if ceil32(_3855) > _3855:
                                mem[_3855 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_3855) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1 % 128:
                            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[0] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1 % 128) + 128] = uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160
                        mem[64] = uint255(stor12.length.field_1)
                        mem[uint255(stor12.length.field_1)] = 32
                        mem[uint255(stor12.length.field_1) + 32] = uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160
                        mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)]
                        return Array(len=uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160, data=mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)]), 
                    if bool(stor12.length) != 1:
                        return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, mem[128 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 64]), 
                    mem[0] = 12
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length.field_1):
                        mem[idx] = stor[s + sha3(mem[0])]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _3044 = mem[64]
                    mem[64] = uint255(stor12.length.field_1)
                    mem[uint255(stor12.length.field_1)] = 32
                    _3454 = mem[_3044]
                    mem[uint255(stor12.length.field_1) + 32] = mem[_3044]
                    mem[uint255(stor12.length.field_1) + 64 len ceil32(_3454)] = mem[_3044 + 32 len ceil32(_3454)]
                    if ceil32(_3454) > _3454:
                        mem[uint255(stor12.length.field_1) + _3454 + 64] = 0
                    return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_3454) + 32]
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[0] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1 % 128) + 128] = stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160
                    mem[64] = stor12.length.field_1 % 128
                    mem[stor12.length.field_1 % 128] = 32
                    mem[stor12.length.field_1 % 128 + 32] = stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160
                    mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)]
                    return Array(len=stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160, data=mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)]), 
                if bool(stor12.length) != 1:
                    return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, mem[128 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 64]), 
                mem[0] = 12
                idx = 0
                s = 0
                while idx < stor12.length.field_1 % 128:
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _3045 = mem[64]
                mem[64] = stor12.length.field_1 % 128
                mem[stor12.length.field_1 % 128] = 32
                _3455 = mem[_3045]
                mem[stor12.length.field_1 % 128 + 32] = mem[_3045]
                mem[stor12.length.field_1 % 128 + 64 len ceil32(_3455)] = mem[_3045 + 32 len ceil32(_3455)]
                if ceil32(_3455) > _3455:
                    mem[stor12.length.field_1 % 128 + _3455 + 64] = 0
                return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_3455) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor11.length.field_1 % 128) + 160] = Mask(248, 8, stor11.length)
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                        return Array(len=stor11.length.field_1 % 128 + uint255(stor12.length.field_1), data=mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 31)]), 
                    if bool(stor12.length) != 1:
                        return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, mem[128 len ceil32(stor11.length.field_1 % 128) + 32], Mask(248, 8, stor11.length), mem[ceil32(stor11.length.field_1 % 128) + 192 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) + -ceil32(stor11.length.field_1 % 128) - 128]), 
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length.field_1):
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                    return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                    return Array(len=stor11.length.field_1 % 128 + stor12.length.field_1 % 128, data=mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 31)]), 
                if bool(stor12.length) != 1:
                    return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, mem[128 len ceil32(stor11.length.field_1 % 128) + 32], Mask(248, 8, stor11.length), mem[ceil32(stor11.length.field_1 % 128) + 192 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) + -ceil32(stor11.length.field_1 % 128) - 128]), 
                idx = 0
                s = 0
                while idx < stor12.length.field_1 % 128:
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
            if bool(stor11.length) == 1:
                idx = 0
                s = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(stor11.length.field_1 % 128) + idx + 160] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _3781 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                            if ceil32(_3781) > _3781:
                                mem[_3781 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_3781) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor12.length.field_1):
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                    return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _3861 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(_3861) > _3861:
                            mem[_3861 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_3861) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1 % 128:
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[0] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1 % 128) + 128] = uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160
                    mem[64] = uint255(stor12.length.field_1)
                    mem[uint255(stor12.length.field_1)] = 32
                    mem[uint255(stor12.length.field_1) + 32] = uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160
                    mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)]
                    return Array(len=uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160, data=mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)]), 
                if bool(stor12.length) != 1:
                    return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, mem[128 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 64]), 
                mem[0] = 12
                idx = 0
                s = 0
                while idx < uint255(stor12.length.field_1):
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _3048 = mem[64]
                mem[64] = uint255(stor12.length.field_1)
                mem[uint255(stor12.length.field_1)] = 32
                _3458 = mem[_3048]
                mem[uint255(stor12.length.field_1) + 32] = mem[_3048]
                mem[uint255(stor12.length.field_1) + 64 len ceil32(_3458)] = mem[_3048 + 32 len ceil32(_3458)]
                if ceil32(_3458) > _3458:
                    mem[uint255(stor12.length.field_1) + _3458 + 64] = 0
                return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_3458) + 32]
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[0] = Mask(248, 8, stor12.length)
                mem[ceil32(stor11.length.field_1 % 128) + 128] = stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160
                mem[64] = stor12.length.field_1 % 128
                mem[stor12.length.field_1 % 128] = 32
                mem[stor12.length.field_1 % 128 + 32] = stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160
                mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)]
                return Array(len=stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160, data=mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)]), 
            if bool(stor12.length) != 1:
                return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, mem[128 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 64]), 
            mem[0] = 12
            idx = 0
            s = 0
            while idx < stor12.length.field_1 % 128:
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _3049 = mem[64]
            mem[64] = stor12.length.field_1 % 128
            mem[stor12.length.field_1 % 128] = 32
            _3459 = mem[_3049]
            mem[stor12.length.field_1 % 128 + 32] = mem[_3049]
            mem[stor12.length.field_1 % 128 + 64 len ceil32(_3459)] = mem[_3049 + 32 len ceil32(_3459)]
            if ceil32(_3459) > _3459:
                mem[stor12.length.field_1 % 128 + _3459 + 64] = 0
            return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_3459) + 32]
        if 31 >= uint255(stor11.length.field_1):
            mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
            if stor11.length.field_1 % 128 <= 0:
                return ''
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(stor11.length.field_1 % 128) + 160] = Mask(248, 8, stor11.length)
                    if bool(stor12.length):
                        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                            return Array(len=uint255(stor11.length.field_1) + uint255(stor12.length.field_1), data=mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 31)]), 
                        if bool(stor12.length) != 1:
                            return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 96]), 
                        idx = 0
                        s = 0
                        while idx < uint255(stor12.length.field_1):
                            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                    if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                        return Array(len=uint255(stor11.length.field_1) + stor12.length.field_1 % 128, data=mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 31)]), 
                    if bool(stor12.length) != 1:
                        return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 96]), 
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1 % 128:
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    s = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(stor11.length.field_1 % 128) + idx + 160] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor12.length):
                        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _3784 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                                if ceil32(_3784) > _3784:
                                    mem[_3784 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_3784) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor12.length.field_1):
                                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                    if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _3868 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                            if ceil32(_3868) > _3868:
                                mem[_3868 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_3868) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1 % 128:
                            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[0] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1 % 128) + 128] = uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160
                        mem[64] = uint255(stor12.length.field_1)
                        mem[uint255(stor12.length.field_1)] = 32
                        mem[uint255(stor12.length.field_1) + 32] = uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160
                        mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)]
                        return Array(len=uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160, data=mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)]), 
                    if bool(stor12.length) != 1:
                        return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 96]), 
                    mem[0] = 12
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length.field_1):
                        mem[idx] = stor[s + sha3(mem[0])]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _3054 = mem[64]
                    mem[64] = uint255(stor12.length.field_1)
                    mem[uint255(stor12.length.field_1)] = 32
                    _3463 = mem[_3054]
                    mem[uint255(stor12.length.field_1) + 32] = mem[_3054]
                    mem[uint255(stor12.length.field_1) + 64 len ceil32(_3463)] = mem[_3054 + 32 len ceil32(_3463)]
                    if ceil32(_3463) > _3463:
                        mem[uint255(stor12.length.field_1) + _3463 + 64] = 0
                    return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_3463) + 32]
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[0] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1 % 128) + 128] = stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160
                    mem[64] = stor12.length.field_1 % 128
                    mem[stor12.length.field_1 % 128] = 32
                    mem[stor12.length.field_1 % 128 + 32] = stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160
                    mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)]
                    return Array(len=stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160, data=mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)]), 
                if bool(stor12.length) != 1:
                    return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 96]), 
                mem[0] = 12
                idx = 0
                s = 0
                while idx < stor12.length.field_1 % 128:
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _3055 = mem[64]
                mem[64] = stor12.length.field_1 % 128
                mem[stor12.length.field_1 % 128] = 32
                _3464 = mem[_3055]
                mem[stor12.length.field_1 % 128 + 32] = mem[_3055]
                mem[stor12.length.field_1 % 128 + 64 len ceil32(_3464)] = mem[_3055 + 32 len ceil32(_3464)]
                if ceil32(_3464) > _3464:
                    mem[stor12.length.field_1 % 128 + _3464 + 64] = 0
                return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_3464) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor11.length.field_1 % 128) + 160] = Mask(248, 8, stor11.length)
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                        return Array(len=stor11.length.field_1 % 128 + uint255(stor12.length.field_1), data=mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 31)]), 
                    if bool(stor12.length) != 1:
                        return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 96]), 
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length.field_1):
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                    return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                    return Array(len=stor11.length.field_1 % 128 + stor12.length.field_1 % 128, data=mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 31)]), 
                if bool(stor12.length) != 1:
                    return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 96]), 
                idx = 0
                s = 0
                while idx < stor12.length.field_1 % 128:
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
            if bool(stor11.length) == 1:
                idx = 0
                s = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(stor11.length.field_1 % 128) + idx + 160] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _3787 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                            if ceil32(_3787) > _3787:
                                mem[_3787 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_3787) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor12.length.field_1):
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                    return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _3874 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(_3874) > _3874:
                            mem[_3874 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_3874) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1 % 128:
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[0] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1 % 128) + 128] = uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160
                    mem[64] = uint255(stor12.length.field_1)
                    mem[uint255(stor12.length.field_1)] = 32
                    mem[uint255(stor12.length.field_1) + 32] = uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160
                    mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)]
                    return Array(len=uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160, data=mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)]), 
                if bool(stor12.length) != 1:
                    return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 96]), 
                mem[0] = 12
                idx = 0
                s = 0
                while idx < uint255(stor12.length.field_1):
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _3058 = mem[64]
                mem[64] = uint255(stor12.length.field_1)
                mem[uint255(stor12.length.field_1)] = 32
                _3467 = mem[_3058]
                mem[uint255(stor12.length.field_1) + 32] = mem[_3058]
                mem[uint255(stor12.length.field_1) + 64 len ceil32(_3467)] = mem[_3058 + 32 len ceil32(_3467)]
                if ceil32(_3467) > _3467:
                    mem[uint255(stor12.length.field_1) + _3467 + 64] = 0
                return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_3467) + 32]
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[0] = Mask(248, 8, stor12.length)
                mem[ceil32(stor11.length.field_1 % 128) + 128] = stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160
                mem[64] = stor12.length.field_1 % 128
                mem[stor12.length.field_1 % 128] = 32
                mem[stor12.length.field_1 % 128 + 32] = stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160
                mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)]
                return Array(len=stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160, data=mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)]), 
            if bool(stor12.length) != 1:
                return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 96]), 
            mem[0] = 12
            idx = 0
            s = 0
            while idx < stor12.length.field_1 % 128:
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _3059 = mem[64]
            mem[64] = stor12.length.field_1 % 128
            mem[stor12.length.field_1 % 128] = 32
            _3468 = mem[_3059]
            mem[stor12.length.field_1 % 128 + 32] = mem[_3059]
            mem[stor12.length.field_1 % 128 + 64 len ceil32(_3468)] = mem[_3059 + 32 len ceil32(_3468)]
            if ceil32(_3468) > _3468:
                mem[stor12.length.field_1 % 128 + _3468 + 64] = 0
            return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_3468) + 32]
        mem[128] = uint256(stor11.field_0)
        idx = 128
        s = 0
        while uint255(stor11.length.field_1) + 96 > idx:
            mem[idx + 32] = stor11[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor11.length.field_1 % 128 <= 0:
            return ''
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor11.length.field_1 % 128) + 160] = Mask(248, 8, stor11.length)
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _4364 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                            if ceil32(_4364) > _4364:
                                mem[_4364 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_4364) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor12.length.field_1):
                            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _4465 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(_4465) > _4465:
                            mem[_4465 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_4465) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1 % 128:
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
            if bool(stor11.length) == 1:
                idx = 0
                s = 0
                while idx < uint255(stor11.length.field_1):
                    mem[ceil32(stor11.length.field_1 % 128) + idx + 160] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _6170 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                            if ceil32(_6170) > _6170:
                                mem[_6170 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_6170) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor12.length.field_1):
                            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _6229 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(_6229) > _6229:
                            mem[_6229 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_6229) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1 % 128:
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[0] = Mask(248, 8, stor12.length)
                    mem[64] = uint255(stor12.length.field_1)
                    mem[uint255(stor12.length.field_1)] = 32
                    _4369 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[uint255(stor12.length.field_1) + 32] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[uint255(stor12.length.field_1) + 64 len ceil32(_4369)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(_4369)]
                    if ceil32(_4369) > _4369:
                        mem[uint255(stor12.length.field_1) + _4369 + 64] = 0
                    return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_4369) + 32]
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _4468 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(_4468) > _4468:
                        mem[_4468 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_4468) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                s = 0
                while idx < uint255(stor12.length.field_1):
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _5452 = mem[64]
                mem[64] = uint255(stor12.length.field_1)
                mem[uint255(stor12.length.field_1)] = 32
                _5972 = mem[_5452]
                mem[uint255(stor12.length.field_1) + 32] = mem[_5452]
                mem[uint255(stor12.length.field_1) + 64 len ceil32(_5972)] = mem[_5452 + 32 len ceil32(_5972)]
                if ceil32(_5972) > _5972:
                    mem[uint255(stor12.length.field_1) + _5972 + 64] = 0
                return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_5972) + 32]
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[0] = Mask(248, 8, stor12.length)
                mem[64] = stor12.length.field_1 % 128
                mem[stor12.length.field_1 % 128] = 32
                _4469 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[stor12.length.field_1 % 128 + 32] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[stor12.length.field_1 % 128 + 64 len ceil32(_4469)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(_4469)]
                if ceil32(_4469) > _4469:
                    mem[stor12.length.field_1 % 128 + _4469 + 64] = 0
                return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_4469) + 32]
            if bool(stor12.length) != 1:
                mem[64] = 0
                _4548 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(_4548) > _4548:
                    mem[_4548 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_4548) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            s = 0
            while idx < stor12.length.field_1 % 128:
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _5453 = mem[64]
            mem[64] = stor12.length.field_1 % 128
            mem[stor12.length.field_1 % 128] = 32
            _5973 = mem[_5453]
            mem[stor12.length.field_1 % 128 + 32] = mem[_5453]
            mem[stor12.length.field_1 % 128 + 64 len ceil32(_5973)] = mem[_5453 + 32 len ceil32(_5973)]
            if ceil32(_5973) > _5973:
                mem[stor12.length.field_1 % 128 + _5973 + 64] = 0
            return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_5973) + 32]
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[ceil32(stor11.length.field_1 % 128) + 160] = Mask(248, 8, stor11.length)
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _4471 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(_4471) > _4471:
                            mem[_4471 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_4471) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length.field_1):
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
            else:
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _4550 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(_4550) > _4550:
                        mem[_4550 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_4550) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor12.length.field_1 % 128:
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
            return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
        if bool(stor11.length) == 1:
            idx = 0
            s = 0
            while idx < stor11.length.field_1 % 128:
                mem[ceil32(stor11.length.field_1 % 128) + idx + 160] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _6173 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(_6173) > _6173:
                            mem[_6173 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_6173) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length.field_1):
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
            else:
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _6235 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(_6235) > _6235:
                        mem[_6235 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_6235) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor12.length.field_1 % 128:
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
            return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
        if bool(stor12.length):
            if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[0] = Mask(248, 8, stor12.length)
                mem[64] = uint255(stor12.length.field_1)
                mem[uint255(stor12.length.field_1)] = 32
                _4476 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[uint255(stor12.length.field_1) + 32] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[uint255(stor12.length.field_1) + 64 len ceil32(_4476)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(_4476)]
                if ceil32(_4476) > _4476:
                    mem[uint255(stor12.length.field_1) + _4476 + 64] = 0
                return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_4476) + 32]
            if bool(stor12.length) != 1:
                mem[64] = 0
                _4553 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(_4553) > _4553:
                    mem[_4553 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_4553) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            s = 0
            while idx < uint255(stor12.length.field_1):
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _5456 = mem[64]
            mem[64] = uint255(stor12.length.field_1)
            mem[uint255(stor12.length.field_1)] = 32
            _5976 = mem[_5456]
            mem[uint255(stor12.length.field_1) + 32] = mem[_5456]
            mem[uint255(stor12.length.field_1) + 64 len ceil32(_5976)] = mem[_5456 + 32 len ceil32(_5976)]
            if ceil32(_5976) > _5976:
                mem[uint255(stor12.length.field_1) + _5976 + 64] = 0
            return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_5976) + 32]
        if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[0] = Mask(248, 8, stor12.length)
            mem[64] = stor12.length.field_1 % 128
            mem[stor12.length.field_1 % 128] = 32
            _4554 = mem[ceil32(stor11.length.field_1 % 128) + 128]
            mem[stor12.length.field_1 % 128 + 32] = mem[ceil32(stor11.length.field_1 % 128) + 128]
            mem[stor12.length.field_1 % 128 + 64 len ceil32(_4554)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(_4554)]
            if ceil32(_4554) > _4554:
                mem[stor12.length.field_1 % 128 + _4554 + 64] = 0
            return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_4554) + 32]
        if bool(stor12.length) != 1:
            mem[64] = 0
            _4594 = mem[ceil32(stor11.length.field_1 % 128) + 128]
            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            if ceil32(_4594) > _4594:
                mem[_4594 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_4594) + -mem[64] + 64
        mem[0] = 12
        idx = 0
        s = 0
        while idx < stor12.length.field_1 % 128:
            mem[idx] = stor[s + sha3(mem[0])]
            idx = idx + 32
            s = s + 1
            continue 
        _5457 = mem[64]
        mem[64] = stor12.length.field_1 % 128
        mem[stor12.length.field_1 % 128] = 32
        _5977 = mem[_5457]
        mem[stor12.length.field_1 % 128 + 32] = mem[_5457]
        mem[stor12.length.field_1 % 128 + 64 len ceil32(_5977)] = mem[_5457 + 32 len ceil32(_5977)]
        if ceil32(_5977) > _5977:
            mem[stor12.length.field_1 % 128 + _5977 + 64] = 0
        return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_5977) + 32]
    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if not stor11.length.field_1 % 128:
        if stor11.length.field_1 % 128 <= 0:
            return ''
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor11.length.field_1 % 128) + 160] = Mask(248, 8, stor11.length)
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                        return Array(len=uint255(stor11.length.field_1) + uint255(stor12.length.field_1), data=mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 31)]), 
                    if bool(stor12.length) != 1:
                        return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, mem[128 len ceil32(stor11.length.field_1 % 128) + 32], Mask(248, 8, stor11.length), mem[ceil32(stor11.length.field_1 % 128) + 192 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) + -ceil32(stor11.length.field_1 % 128) - 128]), 
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length.field_1):
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                    return Array(len=uint255(stor11.length.field_1) + stor12.length.field_1 % 128, data=mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 31)]), 
                if bool(stor12.length) != 1:
                    return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, mem[128 len ceil32(stor11.length.field_1 % 128) + 32], Mask(248, 8, stor11.length), mem[ceil32(stor11.length.field_1 % 128) + 192 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) + -ceil32(stor11.length.field_1 % 128) - 128]), 
                idx = 0
                s = 0
                while idx < stor12.length.field_1 % 128:
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
            if bool(stor11.length) == 1:
                idx = 0
                s = 0
                while idx < uint255(stor11.length.field_1):
                    mem[ceil32(stor11.length.field_1 % 128) + idx + 160] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _3790 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                            if ceil32(_3790) > _3790:
                                mem[_3790 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_3790) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor12.length.field_1):
                            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _3880 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(_3880) > _3880:
                            mem[_3880 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_3880) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1 % 128:
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[0] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1 % 128) + 128] = uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160
                    mem[64] = uint255(stor12.length.field_1)
                    mem[uint255(stor12.length.field_1)] = 32
                    mem[uint255(stor12.length.field_1) + 32] = uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160
                    mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)]
                    return Array(len=uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160, data=mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)]), 
                if bool(stor12.length) != 1:
                    return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, mem[128 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 64]), 
                mem[0] = 12
                idx = 0
                s = 0
                while idx < uint255(stor12.length.field_1):
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _3062 = mem[64]
                mem[64] = uint255(stor12.length.field_1)
                mem[uint255(stor12.length.field_1)] = 32
                _3471 = mem[_3062]
                mem[uint255(stor12.length.field_1) + 32] = mem[_3062]
                mem[uint255(stor12.length.field_1) + 64 len ceil32(_3471)] = mem[_3062 + 32 len ceil32(_3471)]
                if ceil32(_3471) > _3471:
                    mem[uint255(stor12.length.field_1) + _3471 + 64] = 0
                return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_3471) + 32]
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[0] = Mask(248, 8, stor12.length)
                mem[ceil32(stor11.length.field_1 % 128) + 128] = stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160
                mem[64] = stor12.length.field_1 % 128
                mem[stor12.length.field_1 % 128] = 32
                mem[stor12.length.field_1 % 128 + 32] = stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160
                mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)]
                return Array(len=stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160, data=mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)]), 
            if bool(stor12.length) != 1:
                return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, mem[128 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 64]), 
            mem[0] = 12
            idx = 0
            s = 0
            while idx < stor12.length.field_1 % 128:
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _3063 = mem[64]
            mem[64] = stor12.length.field_1 % 128
            mem[stor12.length.field_1 % 128] = 32
            _3472 = mem[_3063]
            mem[stor12.length.field_1 % 128 + 32] = mem[_3063]
            mem[stor12.length.field_1 % 128 + 64 len ceil32(_3472)] = mem[_3063 + 32 len ceil32(_3472)]
            if ceil32(_3472) > _3472:
                mem[stor12.length.field_1 % 128 + _3472 + 64] = 0
            return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_3472) + 32]
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[ceil32(stor11.length.field_1 % 128) + 160] = Mask(248, 8, stor11.length)
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                    return Array(len=stor11.length.field_1 % 128 + uint255(stor12.length.field_1), data=mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 31)]), 
                if bool(stor12.length) != 1:
                    return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, mem[128 len ceil32(stor11.length.field_1 % 128) + 32], Mask(248, 8, stor11.length), mem[ceil32(stor11.length.field_1 % 128) + 192 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) + -ceil32(stor11.length.field_1 % 128) - 128]), 
                idx = 0
                s = 0
                while idx < uint255(stor12.length.field_1):
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                return Array(len=stor11.length.field_1 % 128 + stor12.length.field_1 % 128, data=mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 31)]), 
            if bool(stor12.length) != 1:
                return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, mem[128 len ceil32(stor11.length.field_1 % 128) + 32], Mask(248, 8, stor11.length), mem[ceil32(stor11.length.field_1 % 128) + 192 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) + -ceil32(stor11.length.field_1 % 128) - 128]), 
            idx = 0
            s = 0
            while idx < stor12.length.field_1 % 128:
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
            return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
        if bool(stor11.length) == 1:
            idx = 0
            s = 0
            while idx < stor11.length.field_1 % 128:
                mem[ceil32(stor11.length.field_1 % 128) + idx + 160] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _3793 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(_3793) > _3793:
                            mem[_3793 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_3793) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length.field_1):
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
            else:
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _3886 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(_3886) > _3886:
                        mem[_3886 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_3886) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor12.length.field_1 % 128:
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
            return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
        if bool(stor12.length):
            if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[0] = Mask(248, 8, stor12.length)
                mem[ceil32(stor11.length.field_1 % 128) + 128] = uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160
                mem[64] = uint255(stor12.length.field_1)
                mem[uint255(stor12.length.field_1)] = 32
                mem[uint255(stor12.length.field_1) + 32] = uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160
                mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)]
                return Array(len=uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160, data=mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)]), 
            if bool(stor12.length) != 1:
                return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, mem[128 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 64]), 
            mem[0] = 12
            idx = 0
            s = 0
            while idx < uint255(stor12.length.field_1):
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _3066 = mem[64]
            mem[64] = uint255(stor12.length.field_1)
            mem[uint255(stor12.length.field_1)] = 32
            _3475 = mem[_3066]
            mem[uint255(stor12.length.field_1) + 32] = mem[_3066]
            mem[uint255(stor12.length.field_1) + 64 len ceil32(_3475)] = mem[_3066 + 32 len ceil32(_3475)]
            if ceil32(_3475) > _3475:
                mem[uint255(stor12.length.field_1) + _3475 + 64] = 0
            return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_3475) + 32]
        if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[0] = Mask(248, 8, stor12.length)
            mem[ceil32(stor11.length.field_1 % 128) + 128] = stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160
            mem[64] = stor12.length.field_1 % 128
            mem[stor12.length.field_1 % 128] = 32
            mem[stor12.length.field_1 % 128 + 32] = stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160
            mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)]
            return Array(len=stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160, data=mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)]), 
        if bool(stor12.length) != 1:
            return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, mem[128 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 64]), 
        mem[0] = 12
        idx = 0
        s = 0
        while idx < stor12.length.field_1 % 128:
            mem[idx] = stor[s + sha3(mem[0])]
            idx = idx + 32
            s = s + 1
            continue 
        _3067 = mem[64]
        mem[64] = stor12.length.field_1 % 128
        mem[stor12.length.field_1 % 128] = 32
        _3476 = mem[_3067]
        mem[stor12.length.field_1 % 128 + 32] = mem[_3067]
        mem[stor12.length.field_1 % 128 + 64 len ceil32(_3476)] = mem[_3067 + 32 len ceil32(_3476)]
        if ceil32(_3476) > _3476:
            mem[stor12.length.field_1 % 128 + _3476 + 64] = 0
        return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_3476) + 32]
    if 31 >= stor11.length.field_1 % 128:
        mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
        if stor11.length.field_1 % 128 <= 0:
            return ''
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor11.length.field_1 % 128) + 160] = Mask(248, 8, stor11.length)
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                        return Array(len=uint255(stor11.length.field_1) + uint255(stor12.length.field_1), data=mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 31)]), 
                    if bool(stor12.length) != 1:
                        return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 96]), 
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length.field_1):
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                    return Array(len=uint255(stor11.length.field_1) + stor12.length.field_1 % 128, data=mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 31)]), 
                if bool(stor12.length) != 1:
                    return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 96]), 
                idx = 0
                s = 0
                while idx < stor12.length.field_1 % 128:
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
            if bool(stor11.length) == 1:
                idx = 0
                s = 0
                while idx < uint255(stor11.length.field_1):
                    mem[ceil32(stor11.length.field_1 % 128) + idx + 160] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor12.length):
                    if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _3796 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                            if ceil32(_3796) > _3796:
                                mem[_3796 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_3796) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < uint255(stor12.length.field_1):
                            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _3893 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(_3893) > _3893:
                            mem[_3893 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_3893) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1 % 128:
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[0] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1 % 128) + 128] = uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160
                    mem[64] = uint255(stor12.length.field_1)
                    mem[uint255(stor12.length.field_1)] = 32
                    mem[uint255(stor12.length.field_1) + 32] = uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160
                    mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)]
                    return Array(len=uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160, data=mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)]), 
                if bool(stor12.length) != 1:
                    return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 96]), 
                mem[0] = 12
                idx = 0
                s = 0
                while idx < uint255(stor12.length.field_1):
                    mem[idx] = stor[s + sha3(mem[0])]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _3072 = mem[64]
                mem[64] = uint255(stor12.length.field_1)
                mem[uint255(stor12.length.field_1)] = 32
                _3480 = mem[_3072]
                mem[uint255(stor12.length.field_1) + 32] = mem[_3072]
                mem[uint255(stor12.length.field_1) + 64 len ceil32(_3480)] = mem[_3072 + 32 len ceil32(_3480)]
                if ceil32(_3480) > _3480:
                    mem[uint255(stor12.length.field_1) + _3480 + 64] = 0
                return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_3480) + 32]
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[0] = Mask(248, 8, stor12.length)
                mem[ceil32(stor11.length.field_1 % 128) + 128] = stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160
                mem[64] = stor12.length.field_1 % 128
                mem[stor12.length.field_1 % 128] = 32
                mem[stor12.length.field_1 % 128 + 32] = stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160
                mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)]
                return Array(len=stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160, data=mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)]), 
            if bool(stor12.length) != 1:
                return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 96]), 
            mem[0] = 12
            idx = 0
            s = 0
            while idx < stor12.length.field_1 % 128:
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _3073 = mem[64]
            mem[64] = stor12.length.field_1 % 128
            mem[stor12.length.field_1 % 128] = 32
            _3481 = mem[_3073]
            mem[stor12.length.field_1 % 128 + 32] = mem[_3073]
            mem[stor12.length.field_1 % 128 + 64 len ceil32(_3481)] = mem[_3073 + 32 len ceil32(_3481)]
            if ceil32(_3481) > _3481:
                mem[stor12.length.field_1 % 128 + _3481 + 64] = 0
            return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_3481) + 32]
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[ceil32(stor11.length.field_1 % 128) + 160] = Mask(248, 8, stor11.length)
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                    return Array(len=stor11.length.field_1 % 128 + uint255(stor12.length.field_1), data=mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 31)]), 
                if bool(stor12.length) != 1:
                    return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 96]), 
                idx = 0
                s = 0
                while idx < uint255(stor12.length.field_1):
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
                return Array(len=stor11.length.field_1 % 128 + stor12.length.field_1 % 128, data=mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 31)]), 
            if bool(stor12.length) != 1:
                return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 96]), 
            idx = 0
            s = 0
            while idx < stor12.length.field_1 % 128:
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
            return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
        if bool(stor11.length) == 1:
            idx = 0
            s = 0
            while idx < stor11.length.field_1 % 128:
                mem[ceil32(stor11.length.field_1 % 128) + idx + 160] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _3799 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(_3799) > _3799:
                            mem[_3799 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_3799) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length.field_1):
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
            else:
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _3899 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(_3899) > _3899:
                        mem[_3899 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_3899) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor12.length.field_1 % 128:
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
            return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
        if bool(stor12.length):
            if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[0] = Mask(248, 8, stor12.length)
                mem[ceil32(stor11.length.field_1 % 128) + 128] = uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160
                mem[64] = uint255(stor12.length.field_1)
                mem[uint255(stor12.length.field_1)] = 32
                mem[uint255(stor12.length.field_1) + 32] = uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160
                mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)]
                return Array(len=uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 160, data=mem[uint255(stor12.length.field_1) + 64 len floor32(uint255(stor12.length.field_1) + -ceil32(stor11.length.field_1 % 128) - 129)]), 
            if bool(stor12.length) != 1:
                return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 96]), 
            mem[0] = 12
            idx = 0
            s = 0
            while idx < uint255(stor12.length.field_1):
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _3076 = mem[64]
            mem[64] = uint255(stor12.length.field_1)
            mem[uint255(stor12.length.field_1)] = 32
            _3484 = mem[_3076]
            mem[uint255(stor12.length.field_1) + 32] = mem[_3076]
            mem[uint255(stor12.length.field_1) + 64 len ceil32(_3484)] = mem[_3076 + 32 len ceil32(_3484)]
            if ceil32(_3484) > _3484:
                mem[uint255(stor12.length.field_1) + _3484 + 64] = 0
            return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_3484) + 32]
        if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[0] = Mask(248, 8, stor12.length)
            mem[ceil32(stor11.length.field_1 % 128) + 128] = stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160
            mem[64] = stor12.length.field_1 % 128
            mem[stor12.length.field_1 % 128] = 32
            mem[stor12.length.field_1 % 128 + 32] = stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160
            mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)]
            return Array(len=stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 160, data=mem[stor12.length.field_1 % 128 + 64 len floor32(stor12.length.field_1 % 128 + -ceil32(stor11.length.field_1 % 128) - 129)]), 
        if bool(stor12.length) != 1:
            return Array(len=-ceil32(stor11.length.field_1 % 128) - 160, data=ceil32(stor11.length.field_1 % 128) + 128, stor11.length % 128, 256 * Mask(248, 0, stor11.length.field_8), mem[160 len floor32(-ceil32(stor11.length.field_1 % 128) - 129) - 96]), 
        mem[0] = 12
        idx = 0
        s = 0
        while idx < stor12.length.field_1 % 128:
            mem[idx] = stor[s + sha3(mem[0])]
            idx = idx + 32
            s = s + 1
            continue 
        _3077 = mem[64]
        mem[64] = stor12.length.field_1 % 128
        mem[stor12.length.field_1 % 128] = 32
        _3485 = mem[_3077]
        mem[stor12.length.field_1 % 128 + 32] = mem[_3077]
        mem[stor12.length.field_1 % 128 + 64 len ceil32(_3485)] = mem[_3077 + 32 len ceil32(_3485)]
        if ceil32(_3485) > _3485:
            mem[stor12.length.field_1 % 128 + _3485 + 64] = 0
        return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_3485) + 32]
    mem[128] = uint256(stor11.field_0)
    idx = 128
    s = 0
    while stor11.length.field_1 % 128 + 96 > idx:
        mem[idx + 32] = stor11[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor11.length.field_1 % 128 <= 0:
        return ''
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[ceil32(stor11.length.field_1 % 128) + 160] = Mask(248, 8, stor11.length)
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _4388 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(_4388) > _4388:
                            mem[_4388 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_4388) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length.field_1):
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
            else:
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _4491 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(_4491) > _4491:
                        mem[_4491 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_4491) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor12.length.field_1 % 128:
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
        if bool(stor11.length) == 1:
            idx = 0
            s = 0
            while idx < uint255(stor11.length.field_1):
                mem[ceil32(stor11.length.field_1 % 128) + idx + 160] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _6176 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(_6176) > _6176:
                            mem[_6176 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_6176) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < uint255(stor12.length.field_1):
                        mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 160] = 32
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + 160] = Mask(248, 8, stor12.length)
            else:
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _6249 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(_6249) > _6249:
                        mem[_6249 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_6249) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor12.length.field_1 % 128:
                    mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + idx + 160] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 160] = 32
            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
            mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) > mem[ceil32(stor11.length.field_1 % 128) + 128]:
                mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + uint255(stor11.length.field_1) + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
        if bool(stor12.length):
            if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[0] = Mask(248, 8, stor12.length)
                mem[64] = uint255(stor12.length.field_1)
                mem[uint255(stor12.length.field_1)] = 32
                _4393 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[uint255(stor12.length.field_1) + 32] = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[uint255(stor12.length.field_1) + 64 len ceil32(_4393)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(_4393)]
                if ceil32(_4393) > _4393:
                    mem[uint255(stor12.length.field_1) + _4393 + 64] = 0
                return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_4393) + 32]
            if bool(stor12.length) != 1:
                mem[64] = 0
                _4494 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(_4494) > _4494:
                    mem[_4494 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_4494) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            s = 0
            while idx < uint255(stor12.length.field_1):
                mem[idx] = stor[s + sha3(mem[0])]
                idx = idx + 32
                s = s + 1
                continue 
            _5468 = mem[64]
            mem[64] = uint255(stor12.length.field_1)
            mem[uint255(stor12.length.field_1)] = 32
            _5988 = mem[_5468]
            mem[uint255(stor12.length.field_1) + 32] = mem[_5468]
            mem[uint255(stor12.length.field_1) + 64 len ceil32(_5988)] = mem[_5468 + 32 len ceil32(_5988)]
            if ceil32(_5988) > _5988:
                mem[uint255(stor12.length.field_1) + _5988 + 64] = 0
            return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_5988) + 32]
        if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[0] = Mask(248, 8, stor12.length)
            mem[64] = stor12.length.field_1 % 128
            mem[stor12.length.field_1 % 128] = 32
            _4495 = mem[ceil32(stor11.length.field_1 % 128) + 128]
            mem[stor12.length.field_1 % 128 + 32] = mem[ceil32(stor11.length.field_1 % 128) + 128]
            mem[stor12.length.field_1 % 128 + 64 len ceil32(_4495)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(_4495)]
            if ceil32(_4495) > _4495:
                mem[stor12.length.field_1 % 128 + _4495 + 64] = 0
            return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_4495) + 32]
        if bool(stor12.length) != 1:
            mem[64] = 0
            _4564 = mem[ceil32(stor11.length.field_1 % 128) + 128]
            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            if ceil32(_4564) > _4564:
                mem[_4564 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_4564) + -mem[64] + 64
        mem[0] = 12
        idx = 0
        s = 0
        while idx < stor12.length.field_1 % 128:
            mem[idx] = stor[s + sha3(mem[0])]
            idx = idx + 32
            s = s + 1
            continue 
        _5469 = mem[64]
        mem[64] = stor12.length.field_1 % 128
        mem[stor12.length.field_1 % 128] = 32
        _5989 = mem[_5469]
        mem[stor12.length.field_1 % 128 + 32] = mem[_5469]
        mem[stor12.length.field_1 % 128 + 64 len ceil32(_5989)] = mem[_5469 + 32 len ceil32(_5989)]
        if ceil32(_5989) > _5989:
            mem[stor12.length.field_1 % 128 + _5989 + 64] = 0
        return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_5989) + 32]
    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if not bool(stor11.length):
        mem[ceil32(stor11.length.field_1 % 128) + 160] = Mask(248, 8, stor11.length)
        if bool(stor12.length):
            if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
            else:
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _4497 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(_4497) > _4497:
                        mem[_4497 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_4497) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < uint255(stor12.length.field_1):
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
            return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
        if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
        else:
            if bool(stor12.length) != 1:
                mem[64] = 0
                _4566 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(_4566) > _4566:
                    mem[_4566 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_4566) + -mem[64] + 64
            idx = 0
            s = 0
            while idx < stor12.length.field_1 % 128:
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
        return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
    if bool(stor11.length) == 1:
        idx = 0
        s = 0
        while idx < stor11.length.field_1 % 128:
            mem[ceil32(stor11.length.field_1 % 128) + idx + 160] = stor11[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        if bool(stor12.length):
            if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
            else:
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _6179 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(_6179) > _6179:
                        mem[_6179 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_6179) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < uint255(stor12.length.field_1):
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 160] = 32
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
            return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor12.length.field_1) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
        if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 160] = Mask(248, 8, stor12.length)
        else:
            if bool(stor12.length) != 1:
                mem[64] = 0
                _6255 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(_6255) > _6255:
                    mem[_6255 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_6255) + -mem[64] + 64
            idx = 0
            s = 0
            while idx < stor12.length.field_1 % 128:
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 160] = stor12[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 160] = 32
        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192] = mem[ceil32(stor11.length.field_1 % 128) + 128]
        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 128], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]), 
        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 224] = 0
        return 32, mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor12.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) + 32], 
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[0] = Mask(248, 8, stor12.length)
            mem[64] = uint255(stor12.length.field_1)
            mem[uint255(stor12.length.field_1)] = 32
            _4502 = mem[ceil32(stor11.length.field_1 % 128) + 128]
            mem[uint255(stor12.length.field_1) + 32] = mem[ceil32(stor11.length.field_1 % 128) + 128]
            mem[uint255(stor12.length.field_1) + 64 len ceil32(_4502)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(_4502)]
            if ceil32(_4502) > _4502:
                mem[uint255(stor12.length.field_1) + _4502 + 64] = 0
            return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_4502) + 32]
        if bool(stor12.length) != 1:
            mem[64] = 0
            _4569 = mem[ceil32(stor11.length.field_1 % 128) + 128]
            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            if ceil32(_4569) > _4569:
                mem[_4569 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_4569) + -mem[64] + 64
        mem[0] = 12
        idx = 0
        s = 0
        while idx < uint255(stor12.length.field_1):
            mem[idx] = stor[s + sha3(mem[0])]
            idx = idx + 32
            s = s + 1
            continue 
        _5472 = mem[64]
        mem[64] = uint255(stor12.length.field_1)
        mem[uint255(stor12.length.field_1)] = 32
        _5992 = mem[_5472]
        mem[uint255(stor12.length.field_1) + 32] = mem[_5472]
        mem[uint255(stor12.length.field_1) + 64 len ceil32(_5992)] = mem[_5472 + 32 len ceil32(_5992)]
        if ceil32(_5992) > _5992:
            mem[uint255(stor12.length.field_1) + _5992 + 64] = 0
        return 32, mem[uint255(stor12.length.field_1) + 32 len ceil32(_5992) + 32]
    if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if not bool(stor12.length):
        mem[0] = Mask(248, 8, stor12.length)
        mem[64] = stor12.length.field_1 % 128
        mem[stor12.length.field_1 % 128] = 32
        _4570 = mem[ceil32(stor11.length.field_1 % 128) + 128]
        mem[stor12.length.field_1 % 128 + 32] = mem[ceil32(stor11.length.field_1 % 128) + 128]
        mem[stor12.length.field_1 % 128 + 64 len ceil32(_4570)] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(_4570)]
        if ceil32(_4570) > _4570:
            mem[stor12.length.field_1 % 128 + _4570 + 64] = 0
        return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_4570) + 32]
    if bool(stor12.length) != 1:
        mem[64] = 0
        _4601 = mem[ceil32(stor11.length.field_1 % 128) + 128]
        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
        if ceil32(_4601) > _4601:
            mem[_4601 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_4601) + -mem[64] + 64
    mem[0] = 12
    idx = 0
    s = 0
    while idx < stor12.length.field_1 % 128:
        mem[idx] = stor[s + sha3(mem[0])]
        idx = idx + 32
        s = s + 1
        continue 
    _5473 = mem[64]
    mem[64] = stor12.length.field_1 % 128
    mem[stor12.length.field_1 % 128] = 32
    _5993 = mem[_5473]
    mem[stor12.length.field_1 % 128 + 32] = mem[_5473]
    mem[stor12.length.field_1 % 128 + 64 len ceil32(_5993)] = mem[_5473 + 32 len ceil32(_5993)]
    if ceil32(_5993) > _5993:
        mem[stor12.length.field_1 % 128 + _5993 + 64] = 0
    return 32, mem[stor12.length.field_1 % 128 + 32 len ceil32(_5993) + 32]
}



}
