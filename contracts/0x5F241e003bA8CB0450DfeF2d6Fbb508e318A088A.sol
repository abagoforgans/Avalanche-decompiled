contract main {




// =====================  Runtime code  =====================


const START_AT = 1


function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not rawOwnerOf[arg1]:
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

function MAX_ELEMENTS() {
    return MAX_ELEMENTS
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function totalToken() {
    return totalToken
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not rawOwnerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return rawOwnerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function rawOwnerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return rawOwnerOf[arg1]
}

function PRICE() {
    return PRICE
}

function owner() {
    return owner
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 5))))))
}

function _fallback() payable {
    revert
}

function price(uint256 arg1) {
    require calldata.size - 4 >= 32
    if PRICE and arg1 > -1 / PRICE:
        revert with 0, 17
    return (PRICE * arg1)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    PRICE = arg1
    emit 0xe4af3870: arg1
}

function sub_b8ea3cb0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MAX_ELEMENTS = arg1
    emit 0xc83d13ef: arg1
}

function setPause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = uint8(arg1)
    emit PauseEvent(bool(uint8(arg1)));
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function withdrawAll(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('storage', 160, 0, 10) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('storage', 160, 0, 10) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    stor[10] = arg1
    emit OwnershipTransferred(('storage', 160, 0, 10), arg1);
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
    if not rawOwnerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == rawOwnerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if rawOwnerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not rawOwnerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(rawOwnerOf[arg2], arg1, arg2);
}

function walletOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
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
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor14[].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while (uint255(stor14.length) * 0.5) + 31 / 32 > idx:
                uint256(stor14[idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor14.length) == stor14.length.field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor14[].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while stor14.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor14[idx].field_0) = 0
                idx = idx + 1
                continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not rawOwnerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not rawOwnerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if rawOwnerOf[arg3] != msg.sender:
        if not rawOwnerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not rawOwnerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if rawOwnerOf[arg3] != arg1:
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
    if not rawOwnerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(rawOwnerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    rawOwnerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not rawOwnerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not rawOwnerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if rawOwnerOf[arg3] != msg.sender:
        if not rawOwnerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not rawOwnerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if rawOwnerOf[arg3] != arg1:
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
    if not rawOwnerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(rawOwnerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    rawOwnerOf[arg3] = arg2
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
                        mem[idx + 32] = uint256(stor0[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor0.length.field_1 % 128:
                if 31 < stor0.length.field_1 % 128:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor0[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
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
                    mem[idx + 32] = uint256(stor0[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor0.length.field_1 % 128:
            if 31 < stor0.length.field_1 % 128:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor0[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    mem[ceil32(stor0.length.field_1 % 128) + 192 len ceil32(stor0.length.field_1 % 128)] = mem[128 len ceil32(stor0.length.field_1 % 128)]
    if ceil32(stor0.length.field_1 % 128) > stor0.length.field_1 % 128:
        mem[stor0.length.field_1 % 128 + ceil32(stor0.length.field_1 % 128) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
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
                        mem[idx + 32] = uint256(stor1[s].field_256)
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
                        mem[idx + 32] = uint256(stor1[s].field_256)
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
                    mem[idx + 32] = uint256(stor1[s].field_256)
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
                    mem[idx + 32] = uint256(stor1[s].field_256)
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
    if not rawOwnerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not rawOwnerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if rawOwnerOf[arg3] != msg.sender:
        if not rawOwnerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not rawOwnerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if rawOwnerOf[arg3] != arg1:
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
    if not rawOwnerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(rawOwnerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    rawOwnerOf[arg3] = arg2
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

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if totalToken > MAX_ELEMENTS:
        revert with 0, 'Soldout!'
    if stor13:
        revert with 0, 'Sales not open'
    if totalToken > !arg1:
        revert with 0, 17
    if totalToken + arg1 > MAX_ELEMENTS:
        revert with 0, 'Max limit'
    if PRICE and arg1 > -1 / PRICE:
        revert with 0, 17
    if msg.value < PRICE * arg1:
        revert with 0, 'Value below price'
    idx = 1
    while uint8(idx) <= arg1:
        if totalToken > !uint8(idx):
            revert with 0, 17
        totalToken++
        _139 = mem[64]
        mem[64] = mem[64] + 32
        mem[_139] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if rawOwnerOf[stor15 + uint8(idx)]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor15 + uint8(idx)] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = totalToken + uint8(idx)
        if msg.sender:
            if not msg.sender:
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = totalToken + uint8(idx)
                mem[32] = 2
                rawOwnerOf[stor15 + uint8(idx)] = msg.sender
                emit Transfer(0, msg.sender, totalToken + uint8(idx));
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = totalToken + uint8(idx)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _139 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, totalToken + uint8(idx), 128, 0
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
                    _278 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_278] == Mask(32, 224, mem[_278])
                    if Mask(32, 224, mem[_278]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = totalToken + uint8(idx)
                stor7[stor15 + uint8(idx)] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = totalToken + uint8(idx)
                mem[32] = 2
                rawOwnerOf[stor15 + uint8(idx)] = msg.sender
                emit Transfer(0, msg.sender, totalToken + uint8(idx));
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = totalToken + uint8(idx)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _139 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, totalToken + uint8(idx), 128, 0
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
                    _280 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_280] == Mask(32, 224, mem[_280])
                    if Mask(32, 224, mem[_280]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[stor15 + uint8(idx)] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[stor15 + uint8(idx)]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor15 + uint8(idx)]
            stor9[stor15 + uint8(idx)] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = totalToken + uint8(idx)
            mem[32] = 2
            rawOwnerOf[stor15 + uint8(idx)] = msg.sender
            emit Transfer(0, msg.sender, totalToken + uint8(idx));
            if ext_code.size(msg.sender):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = totalToken + uint8(idx)
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _139 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, 0, totalToken + uint8(idx), 128, 0
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
                _282 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_282] == Mask(32, 224, mem[_282])
                if Mask(32, 224, mem[_282]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        emit 0xceaac793: totalToken + uint8(idx)
        if uint8(idx) == 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        continue 
}

function sub_6ea5d178(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if s > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        continue 
    if totalToken > !(s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length):
        revert with 0, 17
    if totalToken + (s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) > MAX_ELEMENTS:
        revert with 0, 'Max limit'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if var111003 >= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if var115001 == -1:
            revert with 0, 17
        if idx >= ('cd', 4).length:
            revert with 0, 50
        _1608 = mem[(32 * idx) + 128]
        totalToken++
        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = 0
        s = var119003
        t = var119001
        while address(_1608):
            if rawOwnerOf[t]:
                revert with 0, 'ERC721: token already minted'
            stor9[t] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = t
            if address(_1608):
                if not address(_1608):
                    if balanceOf[address(_1608)] > -2:
                        revert with 0, 17
                    balanceOf[address(_1608)]++
                    mem[0] = t
                    mem[32] = 2
                    rawOwnerOf[t] = address(_1608)
                    emit Transfer(0, address(_1608), t);
                    if ext_code.size(address(_1608)):
                        _1632 = mem[64]
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = t
                        mem[mem[64] + 100] = 128
                        _1634 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                        u = 0
                        while u < _1634:
                            mem[u + _1632 + 164] = mem[u + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                            _1608 = mem[(32 * idx) + 128]
                            totalToken++
                            mem[64] = mem[64] + 32
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = 0
                            u = u + 32
                            continue 
                        if ceil32(_1634) <= _1634:
                            require ext_code.size(address(_1608))
                            call address(_1608).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_1634) + _1632 + -mem[64] + 160]
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
                            _1775 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1775] == Mask(32, 224, mem[_1775])
                            if Mask(32, 224, mem[_1775]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            mem[_1634 + _1632 + 164] = 0
                            require ext_code.size(address(_1608))
                            call address(_1608).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_1634) + _1632 + -mem[64] + 160]
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
                            _1776 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1776] == Mask(32, 224, mem[_1776])
                            if Mask(32, 224, mem[_1776]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not address(_1608):
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(_1608)][stor3[address(_1608)]] = t
                    stor7[t] = balanceOf[address(_1608)]
                    if balanceOf[address(_1608)] > -2:
                        revert with 0, 17
                    balanceOf[address(_1608)]++
                    mem[0] = t
                    mem[32] = 2
                    rawOwnerOf[t] = address(_1608)
                    emit Transfer(0, address(_1608), t);
                    if ext_code.size(address(_1608)):
                        _1641 = mem[64]
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = t
                        mem[mem[64] + 100] = 128
                        _1642 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                        u = 0
                        while u < _1642:
                            mem[u + _1641 + 164] = mem[u + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                            _1608 = mem[(32 * idx) + 128]
                            totalToken++
                            mem[64] = mem[64] + 32
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = 0
                            u = u + 32
                            continue 
                        if ceil32(_1642) <= _1642:
                            require ext_code.size(address(_1608))
                            call address(_1608).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_1642) + _1641 + -mem[64] + 160]
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
                            _1777 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1777] == Mask(32, 224, mem[_1777])
                            if Mask(32, 224, mem[_1777]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            mem[_1642 + _1641 + 164] = 0
                            require ext_code.size(address(_1608))
                            call address(_1608).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_1642) + _1641 + -mem[64] + 160]
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
                            _1778 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1778] == Mask(32, 224, mem[_1778])
                            if Mask(32, 224, mem[_1778]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[t] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[t]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[t]
                stor9[t] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(_1608)] > -2:
                    revert with 0, 17
                balanceOf[address(_1608)]++
                mem[0] = t
                mem[32] = 2
                rawOwnerOf[t] = address(_1608)
                emit Transfer(0, address(_1608), t);
                if ext_code.size(address(_1608)):
                    _1643 = mem[64]
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = t
                    mem[mem[64] + 100] = 128
                    _1648 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                    u = 0
                    while u < _1648:
                        mem[u + _1643 + 164] = mem[u + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                        _1608 = mem[(32 * idx) + 128]
                        totalToken++
                        mem[64] = mem[64] + 32
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = 0
                        u = u + 32
                        continue 
                    if ceil32(_1648) <= _1648:
                        require ext_code.size(address(_1608))
                        call address(_1608).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(_1648) + _1643 + -mem[64] + 160]
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
                        _1779 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1779] == Mask(32, 224, mem[_1779])
                        if Mask(32, 224, mem[_1779]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        mem[_1648 + _1643 + 164] = 0
                        require ext_code.size(address(_1608))
                        call address(_1608).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(_1648) + _1643 + -mem[64] + 160]
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
                        _1780 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1780] == Mask(32, 224, mem[_1780])
                        if Mask(32, 224, mem[_1780]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            emit 0xceaac793: t
            if s == -1:
                revert with 0, 17
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            if s + 1 >= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                if idx == -1:
                    revert with 0, 17
                _1608 = mem[(32 * idx + 1) + 128]
                totalToken++
                mem[64] = mem[64] + 32
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = 0
                idx = idx + 1
                continue 
            if t == -1:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            _1608 = mem[(32 * idx) + 128]
            totalToken++
            mem[64] = mem[64] + 32
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = 0
            s = s + 1
            t = t + 1
            continue 
        revert with 0, 'ERC721: mint to the zero address'
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if ('storage', 1, 0, 14):
        if ('storage', 1, 0, 14) == uint255(('storage', 256, 0, 14)) * 0.5 < 32:
            revert with 0, 34
        if ('storage', 1, 0, 14):
            if ('storage', 1, 0, 14) == uint255(('storage', 256, 0, 14)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, ('storage', 256, 0, 14)):
                if uint255(('storage', 256, 0, 14)) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)] = mem[128 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)]
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 225] = 32
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 257] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 289 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]:
                        return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192], data=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 289 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192])]), 
                    mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 289] = 0
                    return 32, mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 257 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]) + 32], 
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
                mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)] = mem[128 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)]
                    if ceil32(uint255(('storage', 256, 0, 14)) * 0.5) <= uint255(('storage', 256, 0, 14)) * 0.5:
                        mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 160 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])]
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192] = 32
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) + 32], 
                    mem[(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 160 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])]
                    mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128]:
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) + 32], 
                    _3689 = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(_3689) + 32], 
                mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 160 len s] = call.data[calldata.size len s]
            else:
                if 31 >= uint255(('storage', 256, 0, 14)) * 0.5:
                    mem[128] = 256 * ('storage', 248, 8, 14)
                    if uint255(('storage', 256, 0, 14)) * 0.5 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)] = mem[128 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)]
                        mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 225] = 32
                        mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 257] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]
                        mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 289 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192])]
                        if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]:
                            return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192], data=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 289 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192])]), 
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 289] = 0
                        return 32, mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 257 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]) + 32], 
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
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] = s
                    if not s:
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 0, 17
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if t - 1 >= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128]:
                                revert with 0, 50
                            mem[t + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)] = mem[128 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)]
                        if ceil32(uint255(('storage', 256, 0, 14)) * 0.5) <= uint255(('storage', 256, 0, 14)) * 0.5:
                            mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 160 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])]
                            mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192] = 32
                            mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]), 
                            mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256] = 0
                            return 32, mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) + 32], 
                        mem[(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192] = 0
                        mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 160 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])]
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192] = 32
                        if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128]) > mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128]:
                            mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]), 
                            mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256] = 0
                            return 32, mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) + 32], 
                        _3696 = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(_3696) + 32], 
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 160 len s] = call.data[calldata.size len s]
                else:
                    mem[128] = ('storage', 256, 0, ('sha3', 14))
                    idx = 128
                    s = 0
                    while (uint255(('storage', 256, 0, 14)) * 0.5) + 96 > idx:
                        mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', 14)))
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if uint255(('storage', 256, 0, 14)) * 0.5 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)] = mem[128 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)]
                        mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 225] = 32
                        mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 257] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]
                        mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 289 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192])]
                        if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]:
                            return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192], data=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 289 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192])]), 
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 289] = 0
                        return 32, mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 257 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]) + 32], 
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
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] = s
                    if s:
                        mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)] = mem[128 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)]
            if ceil32(uint255(('storage', 256, 0, 14)) * 0.5) > uint255(('storage', 256, 0, 14)) * 0.5:
                mem[(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192] = 0
        else:
            if ('storage', 1, 0, 14) == ('storage', 7, 1, 14) < 32:
                revert with 0, 34
            if not ('storage', 7, 1, 14):
                if uint255(('storage', 256, 0, 14)) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)] = mem[128 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)]
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 225] = 32
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 257] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 289 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]:
                        return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192], data=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 289 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192])]), 
                    mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 289] = 0
                    return 32, mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 257 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]) + 32], 
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
                mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] = s
                if s:
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)] = mem[128 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)]
                if ceil32(uint255(('storage', 256, 0, 14)) * 0.5) > uint255(('storage', 256, 0, 14)) * 0.5:
                    mem[(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 160 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])]
                mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192] = 32
                mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]:
                    mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256] = 0
                return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]), 
            if 31 >= ('storage', 7, 1, 14):
                mem[128] = 256 * ('storage', 248, 8, 14)
                if uint255(('storage', 256, 0, 14)) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)] = mem[128 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)]
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 225] = 32
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 257] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 289 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]:
                        return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192], data=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 289 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192])]), 
                    mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 289] = 0
                    return 32, mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 257 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]) + 32], 
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
                mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)] = mem[128 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)]
                    if ceil32(uint255(('storage', 256, 0, 14)) * 0.5) <= uint255(('storage', 256, 0, 14)) * 0.5:
                        mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 160 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])]
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192] = 32
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) + 32], 
                    mem[(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 160 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])]
                    mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128]:
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) + 32], 
                    _3713 = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(_3713) + 32], 
                mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)] = mem[128 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)]
                if ceil32(uint255(('storage', 256, 0, 14)) * 0.5) <= uint255(('storage', 256, 0, 14)) * 0.5:
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 160 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])]
                    mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128]:
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) + 32], 
                    _3715 = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(_3715) + 32], 
                mem[(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192] = 0
            else:
                mem[128] = ('storage', 256, 0, ('sha3', 14))
                idx = 128
                s = 0
                while ('storage', 7, 1, 14) + 96 > idx:
                    mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', 14)))
                    idx = idx + 32
                    s = s + 1
                    continue 
                if uint255(('storage', 256, 0, 14)) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)] = mem[128 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)]
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 225] = 32
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 257] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 289 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]:
                        return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192], data=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 289 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192])]), 
                    mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 289] = 0
                    return 32, mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + (uint255(('storage', 256, 0, 14)) * 0.5) + 257 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 192]) + 32], 
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
                mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)] = mem[128 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)]
                    if ceil32(uint255(('storage', 256, 0, 14)) * 0.5) <= uint255(('storage', 256, 0, 14)) * 0.5:
                        mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 160 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])]
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192] = 32
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) + 32], 
                    mem[(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 160 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])]
                    mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128]) > mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128]:
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) + 32], 
                    _4416 = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(_4416) + 32], 
                mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)] = mem[128 len ceil32(uint255(('storage', 256, 0, 14)) * 0.5)]
                if ceil32(uint255(('storage', 256, 0, 14)) * 0.5) > uint255(('storage', 256, 0, 14)) * 0.5:
                    mem[(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 160 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128])]
        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 192] = 32
        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160])]), 
        mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + 128] + ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + (uint255(('storage', 256, 0, 14)) * 0.5) + 224 len ceil32(mem[ceil32(uint255(('storage', 256, 0, 14)) * 0.5) + ceil32(s) + 160]) + 32], 
    if ('storage', 1, 0, 14) == ('storage', 7, 1, 14) < 32:
        revert with 0, 34
    if ('storage', 1, 0, 14):
        if ('storage', 1, 0, 14) == uint255(('storage', 256, 0, 14)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, ('storage', 256, 0, 14)):
            if 31 >= uint255(('storage', 256, 0, 14)) * 0.5:
                mem[128] = 256 * ('storage', 248, 8, 14)
            else:
                mem[128] = ('storage', 256, 0, ('sha3', 14))
                idx = 128
                s = 0
                while (uint255(('storage', 256, 0, 14)) * 0.5) + 96 > idx:
                    mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', 14)))
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if ('storage', 1, 0, 14) == ('storage', 7, 1, 14) < 32:
            revert with 0, 34
        if ('storage', 7, 1, 14):
            if 31 >= ('storage', 7, 1, 14):
                mem[128] = 256 * ('storage', 248, 8, 14)
            else:
                mem[128] = ('storage', 256, 0, ('sha3', 14))
                idx = 128
                s = 0
                while ('storage', 7, 1, 14) + 96 > idx:
                    mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', 14)))
                    idx = idx + 32
                    s = s + 1
                    continue 
    if ('storage', 7, 1, 14) <= 0:
        return ''
    if not arg1:
        mem[ceil32(('storage', 7, 1, 14)) + 224 len ceil32(('storage', 7, 1, 14))] = mem[128 len ceil32(('storage', 7, 1, 14))]
        mem[ceil32(('storage', 7, 1, 14)) + ('storage', 7, 1, 14) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(('storage', 7, 1, 14)) + ('storage', 7, 1, 14) + 225] = 32
        mem[ceil32(('storage', 7, 1, 14)) + ('storage', 7, 1, 14) + 257] = mem[ceil32(('storage', 7, 1, 14)) + 192]
        mem[ceil32(('storage', 7, 1, 14)) + ('storage', 7, 1, 14) + 289 len ceil32(mem[ceil32(('storage', 7, 1, 14)) + 192])] = mem[ceil32(('storage', 7, 1, 14)) + 224 len ceil32(mem[ceil32(('storage', 7, 1, 14)) + 192])]
        if ceil32(mem[ceil32(('storage', 7, 1, 14)) + 192]) > mem[ceil32(('storage', 7, 1, 14)) + 192]:
            mem[mem[ceil32(('storage', 7, 1, 14)) + 192] + ceil32(('storage', 7, 1, 14)) + ('storage', 7, 1, 14) + 289] = 0
        return Array(len=mem[ceil32(('storage', 7, 1, 14)) + 192], data=mem[ceil32(('storage', 7, 1, 14)) + ('storage', 7, 1, 14) + 289 len ceil32(mem[ceil32(('storage', 7, 1, 14)) + 192])]), 
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
    mem[ceil32(('storage', 7, 1, 14)) + 128] = s
    if s:
        mem[ceil32(('storage', 7, 1, 14)) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(('storage', 7, 1, 14)) + 128]:
            revert with 0, 50
        mem[t + ceil32(('storage', 7, 1, 14)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(('storage', 7, 1, 14)) + ceil32(s) + 192 len ceil32(('storage', 7, 1, 14))] = mem[128 len ceil32(('storage', 7, 1, 14))]
    if ceil32(('storage', 7, 1, 14)) > ('storage', 7, 1, 14):
        mem[('storage', 7, 1, 14) + ceil32(('storage', 7, 1, 14)) + ceil32(s) + 192] = 0
    mem[ceil32(('storage', 7, 1, 14)) + ceil32(s) + ('storage', 7, 1, 14) + 192 len ceil32(mem[ceil32(('storage', 7, 1, 14)) + 128])] = mem[ceil32(('storage', 7, 1, 14)) + 160 len ceil32(mem[ceil32(('storage', 7, 1, 14)) + 128])]
    mem[mem[ceil32(('storage', 7, 1, 14)) + 128] + ceil32(('storage', 7, 1, 14)) + ceil32(s) + ('storage', 7, 1, 14) + 192] = 32
    mem[mem[ceil32(('storage', 7, 1, 14)) + 128] + ceil32(('storage', 7, 1, 14)) + ceil32(s) + ('storage', 7, 1, 14) + 224] = mem[ceil32(('storage', 7, 1, 14)) + ceil32(s) + 160]
    mem[mem[ceil32(('storage', 7, 1, 14)) + 128] + ceil32(('storage', 7, 1, 14)) + ceil32(s) + ('storage', 7, 1, 14) + 256 len ceil32(mem[ceil32(('storage', 7, 1, 14)) + ceil32(s) + 160])] = mem[ceil32(('storage', 7, 1, 14)) + ceil32(s) + 192 len ceil32(mem[ceil32(('storage', 7, 1, 14)) + ceil32(s) + 160])]
    if ceil32(mem[ceil32(('storage', 7, 1, 14)) + ceil32(s) + 160]) > mem[ceil32(('storage', 7, 1, 14)) + ceil32(s) + 160]:
        mem[mem[ceil32(('storage', 7, 1, 14)) + ceil32(s) + 160] + mem[ceil32(('storage', 7, 1, 14)) + 128] + ceil32(('storage', 7, 1, 14)) + ceil32(s) + ('storage', 7, 1, 14) + 256] = 0
    return Array(len=mem[ceil32(('storage', 7, 1, 14)) + ceil32(s) + 160], data=mem[mem[ceil32(('storage', 7, 1, 14)) + 128] + ceil32(('storage', 7, 1, 14)) + ceil32(s) + ('storage', 7, 1, 14) + 256 len ceil32(mem[ceil32(('storage', 7, 1, 14)) + ceil32(s) + 160])]), 
}



}
