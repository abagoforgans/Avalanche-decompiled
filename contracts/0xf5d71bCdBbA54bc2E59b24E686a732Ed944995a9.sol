contract main {




// =====================  Runtime code  =====================


const tokensLimit = 50


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
uint32 stor12; offset 160
address stor12;
uint256 totalToken;
array of struct stor14;
array of struct stor15;
mapping of uint256 minters;
mapping of address buyers;

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

function totalToken() {
    return totalToken
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

function buyers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return buyers[arg1]
}

function minters(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minters[arg1]
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

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 and stor12.field_160 % 16777216 > -1 / arg2:
        revert with 'NH{q', 17
    return address(stor12.field_0), arg2 * stor12.field_160 % 16777216 / 10000
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function withdrawAll() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require eth.balance(this.address) > 0
    call 0xf7c8018cd2f33a35892f9e3878823bfa18925ed9 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Widthdraw failed'
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
    if Mask(32, 224, arg1) == *U Z:
        return True
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
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while stor14.length.field_1 + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while stor14.length.field_1 + 31 / 32 > idx:
                stor14[idx].field_0 = 0
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

function mint() payable {
    if msg.value < 60 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'msg.value should be more or equal than price'
    if stor11 != 1:
        revert with 0, 'LOCKED'
    stor11 = 0
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'Address is contract'
    if totalToken > -2:
        revert with 'NH{q', 17
    if totalToken + 1 > 50:
        revert with 0, 'Max limit'
    totalToken++
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor13]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor13] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = totalToken
    if msg.sender:
        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = totalToken
        stor7[stor13] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[stor13] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[stor13]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor13]
        stor9[stor13] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor13] = msg.sender
    emit Transfer(0, msg.sender, totalToken);
    if ext_code.size(msg.sender) > 0:
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, totalToken, 128, 0
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
    if minters[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    minters[address(msg.sender)]++
    buyers[stor13] = msg.sender
    stor11 = 1
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

function contractURI() {
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'Token not exist.'
    if arg1 > tokenByIndex.length:
        revert with 0, 'Token not exist.'
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor14.length.field_1:
                if not arg1:
                    mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = '.json'
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 230] = 32
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 262] = mem[ceil32(stor14.length.field_1) + 192]
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 294 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 294 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 294] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 262 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
                mem[ceil32(stor14.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                if ceil32(stor14.length.field_1) > stor14.length.field_1:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) + 32], 
            if 31 >= stor14.length.field_1:
                mem[128] = 256 * stor14.length.field_8
                if not arg1:
                    mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = '.json'
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 230] = 32
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 262] = mem[ceil32(stor14.length.field_1) + 192]
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 294 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 294 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 294] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 262 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
                mem[ceil32(stor14.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                if ceil32(stor14.length.field_1) > stor14.length.field_1:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) + 32], 
            mem[128] = uint256(stor14.field_0)
            idx = 128
            s = 0
            while stor14.length.field_1 + 96 > idx:
                mem[idx + 32] = stor14[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        else:
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor14.length.field_1:
                if 31 >= stor14.length.field_1:
                    mem[128] = 256 * stor14.length.field_8
                    if not arg1:
                        mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
                        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = '.json'
                        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 230] = 32
                        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 262] = mem[ceil32(stor14.length.field_1) + 192]
                        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 294 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
                            return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 294 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
                        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 294] = 0
                        return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 262 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
                    mem[ceil32(stor14.length.field_1) + 128] = s
                    if s:
                        mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                    if ceil32(stor14.length.field_1) > stor14.length.field_1:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + 261] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) + 32], 
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
        if not arg1:
            mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = '.json'
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 230] = 32
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 262] = mem[ceil32(stor14.length.field_1) + 192]
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 294 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 294 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 294] = 0
            return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 262 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor14.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) > stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + 261] = 0
        return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor14.length.field_1
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor14.length.field_1:
            if not arg1:
                mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = '.json'
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 230] = 32
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 262] = mem[ceil32(stor14.length.field_1) + 192]
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 294 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 294 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 294] = 0
                return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 262 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor14.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
                    mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
                    if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                        _3555 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3555)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3555)]
                        if ceil32(_3555) > _3555:
                            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3555 + 261] = 0
                        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3555) + 32], 
                    _3587 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3587)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3587)]
                    if ceil32(_3587) > _3587:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3587 + 261] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3587) + 32], 
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
                if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                    _3556 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3556)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3556)]
                    if ceil32(_3556) > _3556:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3556 + 261] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3556) + 32], 
                _3588 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3588)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3588)]
                if ceil32(_3588) > _3588:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3588 + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3588) + 32], 
            mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
                if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                    _3557 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3557)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3557)]
                    if ceil32(_3557) > _3557:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3557 + 261] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3557) + 32], 
                _3589 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3589)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3589)]
                if ceil32(_3589) > _3589:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3589 + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3589) + 32], 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _3558 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3558)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3558)]
                if ceil32(_3558) > _3558:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3558 + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3558) + 32], 
            _3590 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3590)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3590)]
            if ceil32(_3590) > _3590:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3590 + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3590) + 32], 
        if 31 >= stor14.length.field_1:
            mem[128] = 256 * stor14.length.field_8
            if not arg1:
                mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = '.json'
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 230] = 32
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 262] = mem[ceil32(stor14.length.field_1) + 192]
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 294 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 294 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 294] = 0
                return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 262 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor14.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
                    mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
                    if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                        _3559 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3559)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3559)]
                        if ceil32(_3559) > _3559:
                            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3559 + 261] = 0
                        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3559) + 32], 
                    _3591 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3591)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3591)]
                    if ceil32(_3591) > _3591:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3591 + 261] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3591) + 32], 
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
                if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                    _3560 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3560)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3560)]
                    if ceil32(_3560) > _3560:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3560 + 261] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3560) + 32], 
                _3592 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3592)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3592)]
                if ceil32(_3592) > _3592:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3592 + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3592) + 32], 
            mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
                if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                    _3561 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3561)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3561)]
                    if ceil32(_3561) > _3561:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3561 + 261] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3561) + 32], 
                _3593 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3593)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3593)]
                if ceil32(_3593) > _3593:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3593 + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3593) + 32], 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _3562 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3562)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3562)]
                if ceil32(_3562) > _3562:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3562 + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3562) + 32], 
            _3594 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3594)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3594)]
            if ceil32(_3594) > _3594:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3594 + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3594) + 32], 
        mem[0] = 14
        mem[128] = uint256(stor14.field_0)
        idx = 128
        s = 0
        while stor14.length.field_1 + 96 > idx:
            mem[idx + 32] = stor14[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not arg1:
            mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = '.json'
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 230] = 32
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 262] = mem[ceil32(stor14.length.field_1) + 192]
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 294 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 294 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 294] = 0
            return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 262 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor14.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
                if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                    _4267 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_4267)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4267)]
                    if ceil32(_4267) > _4267:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4267 + 261] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_4267) + 32], 
                _4283 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_4283)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4283)]
                if ceil32(_4283) > _4283:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4283 + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_4283) + 32], 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _4268 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_4268)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4268)]
                if ceil32(_4268) > _4268:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4268 + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_4268) + 32], 
            _4284 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_4284)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4284)]
            if ceil32(_4284) > _4284:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4284 + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_4284) + 32], 
        mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) <= stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _4269 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_4269)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4269)]
                if ceil32(_4269) > _4269:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4269 + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_4269) + 32], 
            _4285 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_4285)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4285)]
            if ceil32(_4285) > _4285:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4285 + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_4285) + 32], 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
        mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
        if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
            _4270 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_4270)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4270)]
            if ceil32(_4270) > _4270:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4270 + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_4270) + 32], 
        _4286 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_4286)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4286)]
        if ceil32(_4286) > _4286:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4286 + 261] = 0
        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_4286) + 32], 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 'NH{q', 34
    if not stor14.length.field_1:
        if not arg1:
            mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = '.json'
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 230] = 32
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 262] = mem[ceil32(stor14.length.field_1) + 192]
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 294 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 294 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 294] = 0
            return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 262 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor14.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
                if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                    _3563 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3563)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3563)]
                    if ceil32(_3563) > _3563:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3563 + 261] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3563) + 32], 
                _3595 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3595)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3595)]
                if ceil32(_3595) > _3595:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3595 + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3595) + 32], 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _3564 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3564)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3564)]
                if ceil32(_3564) > _3564:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3564 + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3564) + 32], 
            _3596 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3596)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3596)]
            if ceil32(_3596) > _3596:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3596 + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3596) + 32], 
        mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) <= stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _3565 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3565)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3565)]
                if ceil32(_3565) > _3565:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3565 + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3565) + 32], 
            _3597 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3597)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3597)]
            if ceil32(_3597) > _3597:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3597 + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3597) + 32], 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
        mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
        if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
            _3566 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3566)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3566)]
            if ceil32(_3566) > _3566:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3566 + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3566) + 32], 
        _3598 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3598)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3598)]
        if ceil32(_3598) > _3598:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3598 + 261] = 0
        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3598) + 32], 
    if 31 >= stor14.length.field_1:
        mem[128] = 256 * stor14.length.field_8
        if not arg1:
            mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = '.json'
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 230] = 32
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 262] = mem[ceil32(stor14.length.field_1) + 192]
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 294 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 294 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 294] = 0
            return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 262 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor14.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
                if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                    _3567 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3567)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3567)]
                    if ceil32(_3567) > _3567:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3567 + 261] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3567) + 32], 
                _3599 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3599)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3599)]
                if ceil32(_3599) > _3599:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3599 + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3599) + 32], 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _3568 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3568)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3568)]
                if ceil32(_3568) > _3568:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3568 + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3568) + 32], 
            _3600 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3600)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3600)]
            if ceil32(_3600) > _3600:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3600 + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3600) + 32], 
        mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) <= stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _3569 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3569)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3569)]
                if ceil32(_3569) > _3569:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3569 + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3569) + 32], 
            _3601 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3601)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3601)]
            if ceil32(_3601) > _3601:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3601 + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3601) + 32], 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
        mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
        if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
            _3570 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3570)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3570)]
            if ceil32(_3570) > _3570:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3570 + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3570) + 32], 
        _3602 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_3602)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3602)]
        if ceil32(_3602) > _3602:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3602 + 261] = 0
        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_3602) + 32], 
    mem[0] = 14
    mem[128] = uint256(stor14.field_0)
    idx = 128
    s = 0
    while stor14.length.field_1 + 96 > idx:
        mem[idx + 32] = stor14[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not arg1:
        mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = '.json'
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 230] = 32
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 262] = mem[ceil32(stor14.length.field_1) + 192]
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 294 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
            return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 294 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 294] = 0
        return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 262 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
    mem[ceil32(stor14.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) <= stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _4271 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_4271)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4271)]
                if ceil32(_4271) > _4271:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4271 + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_4271) + 32], 
            _4287 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_4287)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4287)]
            if ceil32(_4287) > _4287:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4287 + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_4287) + 32], 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
        mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
        if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
            _4272 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_4272)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4272)]
            if ceil32(_4272) > _4272:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4272 + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_4272) + 32], 
        _4288 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_4288)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4288)]
        if ceil32(_4288) > _4288:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4288 + 261] = 0
        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_4288) + 32], 
    mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
    if ceil32(stor14.length.field_1) <= stor14.length.field_1:
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
        mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
        if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
            _4273 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_4273)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4273)]
            if ceil32(_4273) > _4273:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4273 + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_4273) + 32], 
        _4289 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_4289)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4289)]
        if ceil32(_4289) > _4289:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4289 + 261] = 0
        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_4289) + 32], 
    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = '.json'
    mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197
    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 197] = 32
    if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
        _4274 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_4274)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4274)]
        if ceil32(_4274) > _4274:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4274 + 261] = 0
        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_4274) + 32], 
    _4290 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 261 len ceil32(_4290)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4290)]
    if ceil32(_4290) > _4290:
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4290 + 261] = 0
    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 229 len ceil32(_4290) + 32], 
}



}
