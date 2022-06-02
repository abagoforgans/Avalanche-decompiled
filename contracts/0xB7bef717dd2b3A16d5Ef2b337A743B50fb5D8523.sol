contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const sub_67f21064(?) = 224

const TOKEN_PRICE = 25 * 10^17

const MAX_TOKENS = 4444


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
uint8 isStarted;
uint256 sub_76f0a746;
uint256 sub_d12e9c3d;
array of uint256 stor15;
uint256 stor16;
array of uint256 stor17;
array of uint256 stor4460;

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

function isStarted() {
    return bool(isStarted)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
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

function sub_76f0a746(?) {
    return sub_76f0a746
}

function owner() {
    return owner
}

function sub_d12e9c3d(?) {
    return sub_d12e9c3d
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

function startMint() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isStarted = 1
}

function pauseMint() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isStarted = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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
    if msg.sender == arg1:
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

function tokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
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
            revert with 0, 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
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
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
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
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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

function mintGiveaway(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_76f0a746 > !arg1:
        revert with 0, 17
    if sub_76f0a746 + arg1 > 224:
        revert with 0, '224 tokens max'
    idx = 0
    while idx < arg1:
        if sub_76f0a746 == -1:
            revert with 0, 17
        sub_76f0a746++
        if 4444 < tokenByIndex.length:
            revert with 0, 17
        _493 = mem[64]
        mem[mem[64] + 32] = stor16
        mem[mem[64] + 64] = address(msg.sender)
        mem[mem[64] + 84] = block.difficulty
        mem[mem[64] + 116] = block.timestamp
        _494 = mem[64]
        mem[mem[64]] = 116
        mem[64] = mem[64] + 148
        _496 = sha3(mem[_494 + 32 len mem[_494]])
        if not -tokenByIndex.length + 4444:
            revert with 0, 18
        if sha3(mem[_494 + 32 len mem[_494]]) % -tokenByIndex.length + 4444 >= 4444:
            revert with 0, 50
        if not stor17[sha3(mem[_494 + 32 len mem[_494]]) % -stor8.length + 4444]:
            if -tokenByIndex.length + 4444 < 1:
                revert with 0, 17
            if -tokenByIndex.length + 4443 >= 4444:
                revert with 0, 50
            if -tokenByIndex.length + 4444 < 1:
                revert with 0, 17
            if not stor116C[stor8.length]:
                if sha3(mem[_494 + 32 len mem[_494]]) % -tokenByIndex.length + 4444 >= 4444:
                    revert with 0, 50
                stor17[sha3(mem[_494 + 32 len mem[_494]]) % -stor8.length + 4444] = -tokenByIndex.length + 4443
            else:
                if -tokenByIndex.length + 4443 >= 4444:
                    revert with 0, 50
                if sha3(mem[_494 + 32 len mem[_494]]) % -tokenByIndex.length + 4444 >= 4444:
                    revert with 0, 50
                stor17[sha3(mem[_494 + 32 len mem[_494]]) % -stor8.length + 4444] = stor116C[stor8.length]
            if stor16 == -1:
                revert with 0, 17
            stor16++
            if sha3(mem[_494 + 32 len mem[_494]]) % -tokenByIndex.length + 4444 > -2:
                revert with 0, 17
            mem[64] = _493 + 180
            mem[_493 + 148] = 0
            if not owner:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[(_496 % -stor8.length + 4444) + 1]:
                revert with 0, 'ERC721: token already minted'
            stor9[(_496 % -stor8.length + 4444) + 1] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = (_496 % -tokenByIndex.length + 4444) + 1
            if owner:
                if owner:
                    if not owner:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[stor10][stor3[stor10]] = (_496 % -tokenByIndex.length + 4444) + 1
                    stor7[(_496 % -stor8.length + 4444) + 1] = balanceOf[stor10]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[(_496 % -stor8.length + 4444) + 1] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[(_496 % -tokenByIndex.length + 4444) + 1]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[(_496 % -stor8.length + 4444) + 1]
                stor9[(_496 % -stor8.length + 4444) + 1] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[stor10] > -2:
                revert with 0, 17
            balanceOf[stor10]++
            mem[0] = (_496 % -tokenByIndex.length + 4444) + 1
            mem[32] = 2
            ownerOf[(_496 % -stor8.length + 4444) + 1] = owner
            emit Transfer(0, owner, (_496 % -tokenByIndex.length + 4444) + 1);
            if ext_code.size(owner):
                mem[_493 + 180] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_493 + 184] = msg.sender
                mem[_493 + 216] = 0
                mem[_493 + 248] = (_496 % -tokenByIndex.length + 4444) + 1
                mem[_493 + 280] = 128
                mem[_493 + 312] = 0
                s = 0
                while s < 0:
                    mem[s + _493 + 344] = mem[s + _493 + 180]
                    s = s + 32
                    continue 
                require ext_code.size(owner)
                call owner.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, (_496 % -tokenByIndex.length + 4444) + 1, 128, 0
                mem[_493 + 180] = ext_call.return_data[0]
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
                mem[64] = _493 + ceil32(return_data.size) + 180
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if sha3(mem[_494 + 32 len mem[_494]]) % -tokenByIndex.length + 4444 >= 4444:
                revert with 0, 50
            if -tokenByIndex.length + 4444 < 1:
                revert with 0, 17
            if -tokenByIndex.length + 4443 >= 4444:
                revert with 0, 50
            if -tokenByIndex.length + 4444 < 1:
                revert with 0, 17
            if not stor116C[stor8.length]:
                if sha3(mem[_494 + 32 len mem[_494]]) % -tokenByIndex.length + 4444 >= 4444:
                    revert with 0, 50
                stor17[sha3(mem[_494 + 32 len mem[_494]]) % -stor8.length + 4444] = -tokenByIndex.length + 4443
            else:
                if -tokenByIndex.length + 4443 >= 4444:
                    revert with 0, 50
                if sha3(mem[_494 + 32 len mem[_494]]) % -tokenByIndex.length + 4444 >= 4444:
                    revert with 0, 50
                stor17[sha3(mem[_494 + 32 len mem[_494]]) % -stor8.length + 4444] = stor116C[stor8.length]
            if stor16 == -1:
                revert with 0, 17
            stor16++
            if stor17[sha3(mem[_494 + 32 len mem[_494]]) % -stor8.length + 4444] > -2:
                revert with 0, 17
            mem[64] = _493 + 180
            mem[_493 + 148] = 0
            if not owner:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor17[_496 % -stor8.length + 4444] + 1]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor17[_496 % -stor8.length + 4444] + 1] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = stor17[_496 % -stor8.length + 4444] + 1
            if owner:
                if owner:
                    if not owner:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[stor10][stor3[stor10]] = stor17[_496 % -stor8.length + 4444] + 1
                    stor7[stor17[_496 % -stor8.length + 4444] + 1] = balanceOf[stor10]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor17[_496 % -stor8.length + 4444] + 1] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor17[_496 % -tokenByIndex.length + 4444] + 1]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor17[_496 % -stor8.length + 4444] + 1]
                stor9[stor17[_496 % -stor8.length + 4444] + 1] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[stor10] > -2:
                revert with 0, 17
            balanceOf[stor10]++
            mem[0] = stor17[_496 % -stor8.length + 4444] + 1
            mem[32] = 2
            ownerOf[stor17[_496 % -stor8.length + 4444] + 1] = owner
            emit Transfer(0, owner, stor17[_496 % -stor8.length + 4444] + 1);
            if ext_code.size(owner):
                mem[_493 + 180] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_493 + 184] = msg.sender
                mem[_493 + 216] = 0
                mem[_493 + 248] = stor17[_496 % -stor8.length + 4444] + 1
                mem[_493 + 280] = 128
                mem[_493 + 312] = 0
                s = 0
                while s < 0:
                    mem[s + _493 + 344] = mem[s + _493 + 180]
                    s = s + 32
                    continue 
                require ext_code.size(owner)
                call owner.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor17[_496 % -stor8.length + 4444] + 1, 128, 0
                mem[_493 + 180] = ext_call.return_data[0]
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
                mem[64] = _493 + ceil32(return_data.size) + 180
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor11 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor11 = 2
    if not isStarted:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Minting is paused or has not started'
    if tokenByIndex.length >= 4444:
        revert with 0, 'All tokens have been minted'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The number of tokens must be between 1 and 50'
    if arg1 > 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The number of tokens must be between 1 and 50'
    if 224 < sub_76f0a746:
        revert with 0, 17
    if 4444 < -sub_76f0a746 + 224:
        revert with 0, 17
    if tokenByIndex.length > !arg1:
        revert with 0, 17
    if tokenByIndex.length + arg1 > sub_76f0a746 + 4220:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The number of requested tokens would surpass the limit of tokens'
    if arg1 > 0x760f253edb4ab0d29598f4f1e83619728f13290383a9f3fa7:
        revert with 0, 17
    if msg.value < 25 * 10^17 * arg1:
        revert with 0, 'Not enough AVAX for transaction'
    idx = 0
    while idx < arg1:
        if sub_d12e9c3d == -1:
            revert with 0, 17
        sub_d12e9c3d++
        if 4444 < tokenByIndex.length:
            revert with 0, 17
        _503 = mem[64]
        mem[mem[64] + 32] = stor16
        mem[mem[64] + 64] = address(msg.sender)
        mem[mem[64] + 84] = block.difficulty
        mem[mem[64] + 116] = block.timestamp
        _504 = mem[64]
        mem[mem[64]] = 116
        mem[64] = mem[64] + 148
        _506 = sha3(mem[_504 + 32 len mem[_504]])
        if not -tokenByIndex.length + 4444:
            revert with 0, 18
        if sha3(mem[_504 + 32 len mem[_504]]) % -tokenByIndex.length + 4444 >= 4444:
            revert with 0, 50
        if not stor17[sha3(mem[_504 + 32 len mem[_504]]) % -stor8.length + 4444]:
            if -tokenByIndex.length + 4444 < 1:
                revert with 0, 17
            if -tokenByIndex.length + 4443 >= 4444:
                revert with 0, 50
            if -tokenByIndex.length + 4444 < 1:
                revert with 0, 17
            if not stor116C[stor8.length]:
                if sha3(mem[_504 + 32 len mem[_504]]) % -tokenByIndex.length + 4444 >= 4444:
                    revert with 0, 50
                stor17[sha3(mem[_504 + 32 len mem[_504]]) % -stor8.length + 4444] = -tokenByIndex.length + 4443
            else:
                if -tokenByIndex.length + 4443 >= 4444:
                    revert with 0, 50
                if sha3(mem[_504 + 32 len mem[_504]]) % -tokenByIndex.length + 4444 >= 4444:
                    revert with 0, 50
                stor17[sha3(mem[_504 + 32 len mem[_504]]) % -stor8.length + 4444] = stor116C[stor8.length]
            if stor16 == -1:
                revert with 0, 17
            stor16++
            if sha3(mem[_504 + 32 len mem[_504]]) % -tokenByIndex.length + 4444 > -2:
                revert with 0, 17
            mem[64] = _503 + 180
            mem[_503 + 148] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[(_506 % -stor8.length + 4444) + 1]:
                revert with 0, 'ERC721: token already minted'
            stor9[(_506 % -stor8.length + 4444) + 1] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = (_506 % -tokenByIndex.length + 4444) + 1
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = (_506 % -tokenByIndex.length + 4444) + 1
                    stor7[(_506 % -stor8.length + 4444) + 1] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[(_506 % -stor8.length + 4444) + 1] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[(_506 % -tokenByIndex.length + 4444) + 1]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[(_506 % -stor8.length + 4444) + 1]
                stor9[(_506 % -stor8.length + 4444) + 1] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = (_506 % -tokenByIndex.length + 4444) + 1
            mem[32] = 2
            ownerOf[(_506 % -stor8.length + 4444) + 1] = msg.sender
            emit Transfer(0, msg.sender, (_506 % -tokenByIndex.length + 4444) + 1);
            if ext_code.size(msg.sender):
                mem[_503 + 180] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_503 + 184] = msg.sender
                mem[_503 + 216] = 0
                mem[_503 + 248] = (_506 % -tokenByIndex.length + 4444) + 1
                mem[_503 + 280] = 128
                mem[_503 + 312] = 0
                s = 0
                while s < 0:
                    mem[s + _503 + 344] = mem[s + _503 + 180]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, (_506 % -tokenByIndex.length + 4444) + 1, 128, 0
                mem[_503 + 180] = ext_call.return_data[0]
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
                mem[64] = _503 + ceil32(return_data.size) + 180
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if sha3(mem[_504 + 32 len mem[_504]]) % -tokenByIndex.length + 4444 >= 4444:
                revert with 0, 50
            if -tokenByIndex.length + 4444 < 1:
                revert with 0, 17
            if -tokenByIndex.length + 4443 >= 4444:
                revert with 0, 50
            if -tokenByIndex.length + 4444 < 1:
                revert with 0, 17
            if not stor116C[stor8.length]:
                if sha3(mem[_504 + 32 len mem[_504]]) % -tokenByIndex.length + 4444 >= 4444:
                    revert with 0, 50
                stor17[sha3(mem[_504 + 32 len mem[_504]]) % -stor8.length + 4444] = -tokenByIndex.length + 4443
            else:
                if -tokenByIndex.length + 4443 >= 4444:
                    revert with 0, 50
                if sha3(mem[_504 + 32 len mem[_504]]) % -tokenByIndex.length + 4444 >= 4444:
                    revert with 0, 50
                stor17[sha3(mem[_504 + 32 len mem[_504]]) % -stor8.length + 4444] = stor116C[stor8.length]
            if stor16 == -1:
                revert with 0, 17
            stor16++
            if stor17[sha3(mem[_504 + 32 len mem[_504]]) % -stor8.length + 4444] > -2:
                revert with 0, 17
            mem[64] = _503 + 180
            mem[_503 + 148] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor17[_506 % -stor8.length + 4444] + 1]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor17[_506 % -stor8.length + 4444] + 1] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = stor17[_506 % -stor8.length + 4444] + 1
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor17[_506 % -stor8.length + 4444] + 1
                    stor7[stor17[_506 % -stor8.length + 4444] + 1] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor17[_506 % -stor8.length + 4444] + 1] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor17[_506 % -tokenByIndex.length + 4444] + 1]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor17[_506 % -stor8.length + 4444] + 1]
                stor9[stor17[_506 % -stor8.length + 4444] + 1] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor17[_506 % -stor8.length + 4444] + 1
            mem[32] = 2
            ownerOf[stor17[_506 % -stor8.length + 4444] + 1] = msg.sender
            emit Transfer(0, msg.sender, stor17[_506 % -stor8.length + 4444] + 1);
            if ext_code.size(msg.sender):
                mem[_503 + 180] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_503 + 184] = msg.sender
                mem[_503 + 216] = 0
                mem[_503 + 248] = stor17[_506 % -stor8.length + 4444] + 1
                mem[_503 + 280] = 128
                mem[_503 + 312] = 0
                s = 0
                while s < 0:
                    mem[s + _503 + 344] = mem[s + _503 + 180]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor17[_506 % -stor8.length + 4444] + 1, 128, 0
                mem[_503 + 180] = ext_call.return_data[0]
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
                mem[64] = _503 + ceil32(return_data.size) + 180
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor11 = 1
}



}
