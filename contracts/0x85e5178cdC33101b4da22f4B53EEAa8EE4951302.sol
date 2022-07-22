contract main {




// =====================  Runtime code  =====================


#
#  - lzReceive(uint16 arg1, bytes arg2, uint64 arg3, bytes arg4)
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
address owner;
address endpointAddress;
mapping of struct sub_8ee74912;
mapping of struct stor13;
array of struct stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
mapping of uint256 stor99;

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

function endpoint() {
    return endpointAddress
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

function owner() {
    return owner
}

function sub_8ee74912(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint16(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    return sub_8ee74912[arg1][arg2[all]][arg3].field_0, sub_8ee74912[arg1][arg2[all]][arg3].field_256
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

function sub_07e0db17(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(endpointAddress)
    call endpointAddress.0x7e0db17 with:
         gas gas_remaining wei
        args uint16(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_10ddb137(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(endpointAddress)
    call endpointAddress.0x10ddb137 with:
         gas gas_remaining wei
        args uint16(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c7afa661(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require ext_code.size(endpointAddress)
    staticcall endpointAddress.0x40a7bb10 with:
            gas gas_remaining wei
           args arg1 << 240, address(this.address), 160, 0, 256, 64, msg.sender, arg2, 34, 0, 350000, 0, uint16(arg1) << 192 >> 16, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
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

function sub_42d65a8d(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(endpointAddress)
    call endpointAddress.0x42d65a8d with:
         gas gas_remaining wei
        args arg1 << 240, Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cbed8b9c(?) {
    require calldata.size - 4 >= 128
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[260 len arg4.length] = arg4[all]
    mem[arg4.length + 260] = 0
    require ext_code.size(endpointAddress)
    call endpointAddress.0xcbed8b9c with:
         gas gas_remaining wei
        args 0, 0, arg2 << 240, arg3, 128, arg4.length, arg4[all], mem[arg4.length + 260 len ceil32(arg4.length) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while (uint255(stor14.length) * 0.5) + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor14.length) == stor14.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while stor14.length.field_1 % 128 + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_d73f057e(?) {
    require calldata.size - 4 >= 64
    require cd[4] == uint16(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor13[cd[4] << 240].field_0):
        if bool(stor13[cd[4] << 240].field_0) == uint255(stor13[cd[4] << 240].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor13[cd[4] << 240].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'The trusted source address has already been set for the chainId!'
    else:
        if bool(stor13[cd[4] << 240].field_0) == stor13[cd[4] << 240].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor13[cd[4] << 240].field_1 % 128:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'The trusted source address has already been set for the chainId!'
    if bool(stor13[cd[4] << 240].field_0):
        if bool(stor13[cd[4] << 240].field_0) == uint255(stor13[cd[4] << 240].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if not ('cd', 36).length:
            stor13[cd[4] << 240].field_0 = 0
            idx = 0
            while (uint255(stor13[cd[4] << 240].field_0) * 0.5) + 31 / 32 > idx:
                stor13[cd[4] << 240][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor13[cd[4] << 240].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor13[cd[4] << 240][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while (uint255(stor13[cd[4] << 240].field_0) * 0.5) + 31 / 32 > idx:
                stor13[cd[4] << 240][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor13[cd[4] << 240].field_0) == stor13[cd[4] << 240].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not ('cd', 36).length:
            stor13[cd[4] << 240].field_0 = 0
            idx = 0
            while stor13[cd[4] << 240].field_1 % 128 + 31 / 32 > idx:
                stor13[cd[4] << 240][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor13[cd[4] << 240].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor13[cd[4] << 240][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while stor13[cd[4] << 240].field_1 % 128 + 31 / 32 > idx:
                stor13[cd[4] << 240][idx].field_0 = 0
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
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
        revert with 0, 'ERC721: transfer from incorrect owner'
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
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 'NH{q', 34
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
        mem[stor0.length.field_1 % 128 + ceil32(stor0.length.field_1 % 128) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 'NH{q', 34
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
        mem[stor1.length.field_1 % 128 + ceil32(stor1.length.field_1 % 128) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function baseTokenURI() {
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor14.length):
            if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor14.length):
                if 31 < uint255(stor14.length) * 0.5:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor14.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length), data=mem[128 len ceil32(uint255(stor14.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor14.length.field_8)
        else:
            if bool(stor14.length) == stor14.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor14.length.field_1 % 128:
                if 31 < stor14.length.field_1 % 128:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length), data=mem[128 len ceil32(uint255(stor14.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor14.length.field_8)
        mem[ceil32(uint255(stor14.length) * 0.5) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
        if ceil32(uint255(stor14.length) * 0.5) > uint255(stor14.length) * 0.5:
            mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor14.length), data=mem[128 len ceil32(uint255(stor14.length) * 0.5)], mem[(2 * ceil32(uint255(stor14.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor14.length) * 0.5)]), 
    if bool(stor14.length) == stor14.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor14.length):
            if 31 < uint255(stor14.length) * 0.5:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while (uint255(stor14.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor14.length.field_8)
    else:
        if bool(stor14.length) == stor14.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor14.length.field_1 % 128:
            if 31 < stor14.length.field_1 % 128:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor14.length.field_8)
    mem[ceil32(stor14.length.field_1 % 128) + 192 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
    if ceil32(stor14.length.field_1 % 128) > stor14.length.field_1 % 128:
        mem[stor14.length.field_1 % 128 + ceil32(stor14.length.field_1 % 128) + 192] = 0
    return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1 % 128)], mem[(2 * ceil32(stor14.length.field_1 % 128)) + 192 len 2 * ceil32(stor14.length.field_1 % 128)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
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
        revert with 0, 'ERC721: transfer from incorrect owner'
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

function sub_1c37a822(?) {
    require calldata.size - 4 >= 128
    require arg1 == uint16(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[arg2.length + 128] = 0
    require arg3 == uint64(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307():
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + 129 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg2.length)) + arg4.length + 129] = 0
    if msg.sender != this.address:
        revert with 0, 'NonblockingReceiver: caller must be Bridge.'
    require arg4.length >= 64
    require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
    if not mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]]:
        revert with 0, 'ERC721: token already minted'
    stor9[mem[ceil32(ceil32(arg2.length)) + 161]] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = mem[ceil32(ceil32(arg2.length)) + 161]
    if mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
        if mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
            if not mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(mem[ceil32(ceil32(arg2.length)) + 129])][stor3[address(mem[ceil32(ceil32(arg2.length)) + 129])]] = mem[ceil32(ceil32(arg2.length)) + 161]
            stor7[mem[ceil32(ceil32(arg2.length)) + 161]] = balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[mem[ceil32(ceil32(arg2.length)) + 161]] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[mem[ceil32(ceil32(arg2.length)) + 161]]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[mem[ceil32(ceil32(arg2.length)) + 161]]
        stor9[mem[ceil32(ceil32(arg2.length)) + 161]] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])] > -2:
        revert with 'NH{q', 17
    balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]++
    ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]] = mem[ceil32(ceil32(arg2.length)) + 141 len 20]
    emit Transfer(0, mem[ceil32(ceil32(arg2.length)) + 141 len 20], mem[ceil32(ceil32(arg2.length)) + 161]);
    if ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20]):
        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20])
        call mem[ceil32(ceil32(arg2.length)) + 141 len 20].onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, mem[ceil32(ceil32(arg2.length)) + 161], 128, 0
        if not ext_call.success:
            if not return_data.size:
                if not arg2.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg2[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function sub_81c986ee(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if bool(stor13[arg1].field_0):
        if bool(stor13[arg1].field_0) == uint255(stor13[arg1].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor13[arg1].field_0):
            if bool(stor13[arg1].field_0) == uint255(stor13[arg1].field_0) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor13[arg1].field_0):
                if 31 < uint255(stor13[arg1].field_0) * 0.5:
                    mem[128] = stor13[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor13[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor13[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13[arg1].field_0), data=mem[128 len ceil32(uint255(stor13[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
        else:
            if bool(stor13[arg1].field_0) == stor13[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor13[arg1].field_1 % 128:
                if 31 < stor13[arg1].field_1 % 128:
                    mem[128] = stor13[arg1].field_0
                    idx = 128
                    s = 0
                    while stor13[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor13[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13[arg1].field_0), data=mem[128 len ceil32(uint255(stor13[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
        mem[ceil32(uint255(stor13[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor13[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor13[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor13[arg1].field_0) * 0.5) > uint255(stor13[arg1].field_0) * 0.5:
            mem[(uint255(stor13[arg1].field_0) * 0.5) + ceil32(uint255(stor13[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor13[arg1].field_0), data=mem[128 len ceil32(uint255(stor13[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor13[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor13[arg1].field_0) * 0.5)]), 
    if bool(stor13[arg1].field_0) == stor13[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor13[arg1].field_0):
        if bool(stor13[arg1].field_0) == uint255(stor13[arg1].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor13[arg1].field_0):
            if 31 < uint255(stor13[arg1].field_0) * 0.5:
                mem[128] = stor13[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor13[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor13[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13[arg1].field_0 % 128, data=mem[128 len ceil32(stor13[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
    else:
        if bool(stor13[arg1].field_0) == stor13[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor13[arg1].field_1 % 128:
            if 31 < stor13[arg1].field_1 % 128:
                mem[128] = stor13[arg1].field_0
                idx = 128
                s = 0
                while stor13[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor13[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13[arg1].field_0 % 128, data=mem[128 len ceil32(stor13[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
    mem[ceil32(stor13[arg1].field_1 % 128) + 192 len ceil32(stor13[arg1].field_1 % 128)] = mem[128 len ceil32(stor13[arg1].field_1 % 128)]
    if ceil32(stor13[arg1].field_1 % 128) > stor13[arg1].field_1 % 128:
        mem[stor13[arg1].field_1 % 128 + ceil32(stor13[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor13[arg1].field_0 % 128, data=mem[128 len ceil32(stor13[arg1].field_1 % 128)], mem[(2 * ceil32(stor13[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor13[arg1].field_1 % 128)]), 
}

function sub_d1deba1f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint16(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 == uint64(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = sha3(arg1 << 240, 12)
    if ceil32(arg2.length) <= arg2.length:
        _42 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if not stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('sha3', ('mem', ('range', ('add', 97, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), ('add', 32, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0:
            revert with 0, 'NonblockingReceiver: no stored message'
        if arg4.length != stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])][arg3 << 192]:
            revert with 0, 'LayerZero: invalid payload'
        mem[ceil32(ceil32(arg2.length)) + 97 len arg4.length] = arg4[all]
        mem[arg4.length + ceil32(ceil32(arg2.length)) + 97] = 0
        if sha3(arg4[all]) != stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_42'))].field_0:
            revert with 0, 'LayerZero: invalid payload'
        stor[_42][arg3 << 192] = 0
        stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_42'))].field_0 = 0
    else:
        _45 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if not stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('sha3', ('mem', ('range', ('add', 97, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), ('add', 32, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0:
            revert with 0, 'NonblockingReceiver: no stored message'
        if arg4.length != stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])][arg3 << 192]:
            revert with 0, 'LayerZero: invalid payload'
        mem[ceil32(ceil32(arg2.length)) + 97 len arg4.length] = arg4[all]
        mem[arg4.length + ceil32(ceil32(arg2.length)) + 97] = 0
        if sha3(arg4[all]) != stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_45'))].field_0:
            revert with 0, 'LayerZero: invalid payload'
        stor[_45][arg3 << 192] = 0
        stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_45'))].field_0 = 0
    if ceil32(arg2.length) <= arg2.length:
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + 293 len arg4.length] = arg4[all]
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + arg4.length + 293] = 0
        require ext_code.size(this.address)
        call this.address.0x1c37a822 with:
             gas gas_remaining wei
            args arg1 << 240, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], 0) << (8 * ceil32(arg2.length)) - 256, arg4.length, arg4[all], mem[ceil32(ceil32(arg2.length)) + ceil32(arg2.length) + arg4.length + 293 len ceil32(arg4.length) - arg4.length]), arg3 << 192, ceil32(arg2.length) + 160
    else:
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + 261] = arg4.length
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + 293 len arg4.length] = arg4[all]
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + arg4.length + 293] = 0
        require ext_code.size(this.address)
        call this.address.0x1c37a822 with:
             gas gas_remaining wei
            args arg1 << 240, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], 0) << (8 * ceil32(arg2.length)) - 256, Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + arg2.length + 293 len ceil32(arg4.length) - arg2.length + ceil32(arg2.length)]), arg3 << 192, ceil32(arg2.length) + 160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if block.timestamp < stor18:
        revert with 0, 'NOT_LIVE'
    if arg1 > stor17:
        revert with 0, 'ONLY_2_PER_WALLET'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = msg.sender
    mem[32] = 3
    if balanceOf[address(msg.sender)] >= stor17:
        revert with 0, 'ONLY_2_PER_WALLET'
    if stor15 > !arg1:
        revert with 'NH{q', 17
    if stor15 + arg1 > stor16:
        revert with 0, 'MAX_SUPPLY_FOR_CHAIN'
    idx = 0
    while idx < arg1:
        stor15++
        _133 = mem[64]
        mem[64] = mem[64] + 32
        mem[_133] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor15 + 1]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor15 + 1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor15 + 1
        if msg.sender:
            if not msg.sender:
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor15 + 1
                mem[32] = 2
                ownerOf[stor15 + 1] = msg.sender
                emit Transfer(0, msg.sender, stor15 + 1);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor15 + 1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _133 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor15 + 1, 128, 0
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
                    _263 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_263] == Mask(32, 224, mem[_263])
                    if Mask(32, 224, mem[_263]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor15 + 1
                stor7[stor15 + 1] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor15 + 1
                mem[32] = 2
                ownerOf[stor15 + 1] = msg.sender
                emit Transfer(0, msg.sender, stor15 + 1);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor15 + 1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _133 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor15 + 1, 128, 0
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
                    _265 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_265] == Mask(32, 224, mem[_265])
                    if Mask(32, 224, mem[_265]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[stor15 + 1] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[stor15 + 1]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor15 + 1]
            stor9[stor15 + 1] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor15 + 1
            mem[32] = 2
            ownerOf[stor15 + 1] = msg.sender
            emit Transfer(0, msg.sender, stor15 + 1);
            if ext_code.size(msg.sender):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor15 + 1
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _133 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor15 + 1, 128, 0
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
                _267 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_267] == Mask(32, 224, mem[_267])
                if Mask(32, 224, mem[_267]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        idx = idx + 1
        continue 
}

function sub_cf89fa03(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Message sender must own the OmnichainNFT.'
    if bool(stor13[arg1 << 240].field_0):
        if bool(stor13[arg1 << 240].field_0) == uint255(stor13[arg1 << 240].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if not uint255(stor13[arg1 << 240].field_0) * 0.5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This chain is not a trusted source source.'
    else:
        if bool(stor13[arg1 << 240].field_0) == stor13[arg1 << 240].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not stor13[arg1 << 240].field_1 % 128:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This chain is not a trusted source source.'
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2]:
        if not ownerOf[arg2]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[stor2[arg2]] < 1:
            revert with 'NH{q', 17
        if balanceOf[stor2[arg2]] - 1 != stor7[arg2]:
            tokenOfOwnerByIndex[stor2[arg2]][stor7[arg2]] = tokenOfOwnerByIndex[stor2[arg2]][stor3[stor2[arg2]] - 1]
            stor7[stor6[stor2[arg2]][stor3[stor2[arg2]] - 1]] = stor7[arg2]
        stor7[arg2] = 0
        tokenOfOwnerByIndex[stor2[arg2]][stor3[stor2[arg2]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 'NH{q', 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if stor9[arg2] >= tokenByIndex.length:
        revert with 'NH{q', 50
    tokenByIndex[stor9[arg2]] = tokenByIndex[tokenByIndex.length]
    stor9[stor8[stor8.length]] = stor9[arg2]
    stor9[arg2] = 0
    if not tokenByIndex.length:
        revert with 'NH{q', 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg2] = 0
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], 0, arg2);
    if balanceOf[stor2[arg2]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor2[arg2]]--
    ownerOf[arg2] = 0
    emit Transfer(ownerOf[arg2], 0, arg2);
    mem[224] = 0x1000000000000000000000000000000000000000000000000000000000000
    mem[226] = 350000
    mem[192] = 34
    mem[294] = this.address
    mem[326] = 160
    mem[422] = 64
    mem[454 len 64] = msg.sender, arg2
    mem[358] = 0
    mem[390] = 256
    mem[518] = 34
    mem[550 len 64] = 0, 350000, 0, uint16(arg1) << 192
    mem[584] = 0
    require ext_code.size(endpointAddress)
    staticcall endpointAddress.0x40a7bb10 with:
            gas gas_remaining wei
           args arg1 << 240, address(this.address), 160, 0, 256, 64, msg.sender, arg2, 34, 0, 350000, 0, uint16(arg1) << 192 >> 16, 0
    mem[258 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'Not enough gas to cover cross chain transfer.'
    mem[ceil32(return_data.size) + 258] = 0xc580310000000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 262] = uint16(arg1)
    mem[ceil32(return_data.size) + 294] = 192
    if bool(stor13[arg1 << 240].field_0):
        if bool(stor13[arg1 << 240].field_0) == uint255(stor13[arg1 << 240].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        mem[ceil32(return_data.size) + 454] = uint255(stor13[arg1 << 240].field_0) * 0.5
        if not bool(stor13[arg1 << 240].field_0):
            require ext_code.size(endpointAddress)
            call endpointAddress.0xc5803100 with:
               value msg.value wei
                 gas gas_remaining wei
                args arg1 << 240, 192, 256, msg.sender, 0, 352, 2 * Mask(256, -1, stor13[arg1 << 240].field_0), Mask(248, 8, stor13[arg1 << 240].field_0), 64, msg.sender, arg2, 34, 350000, ext_call.return_data[0 len 30] >> 16, 0
        else:
            if bool(stor13[arg1 << 240].field_0) == 1:
                idx = 0
                s = 0
                while idx < uint255(stor13[arg1 << 240].field_0) * 0.5:
                    mem[idx + ceil32(return_data.size) + 486] = stor13[arg1 << 240][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + ceil32(uint255(stor13[arg1 << 240].field_0) * 0.5) + 486] = 64
                require ext_code.size(endpointAddress)
                call endpointAddress.0xc5803100 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg1 << 240, 192, ceil32(uint255(stor13[arg1 << 240].field_0) * 0.5) + 224, msg.sender, 0, ceil32(uint255(stor13[arg1 << 240].field_0) * 0.5) + 320, 2 * Mask(256, -1, stor13[arg1 << 240].field_0), mem[ceil32(return_data.size) + 486 len ceil32(uint255(stor13[arg1 << 240].field_0) * 0.5) + 32], msg.sender, arg2, 34, 350000, ext_call.return_data[0 len 30] >> 16, 0
            else:
                mem[ceil32(return_data.size) + 326] = -ceil32(return_data.size) - 262
                mem[32 len 64] = msg.sender, arg2
                mem[ceil32(return_data.size) + 358] = msg.sender
                mem[ceil32(return_data.size) + 390] = 0
                mem[ceil32(return_data.size) + 422] = -ceil32(return_data.size) - 166
                mem[96] = 34
                mem[128 len 64] = 0, 350000, ext_call.return_data[0 len 30]
                mem[162] = 0
                require ext_code.size(endpointAddress)
                call endpointAddress.mem[Mask(256, -256, msg.sender, arg2) << 256 len 4] with:
                   value msg.value wei
                     gas gas_remaining wei
                    args mem[(Mask(256, -256, msg.sender, arg2) << 256) + 4 len -(Mask(256, -256, msg.sender, arg2) << 256) + 188]
    else:
        if bool(stor13[arg1 << 240].field_0) == stor13[arg1 << 240].field_1 % 128 < 32:
            revert with 'NH{q', 34
        mem[ceil32(return_data.size) + 454] = stor13[arg1 << 240].field_1 % 128
        if not bool(stor13[arg1 << 240].field_0):
            require ext_code.size(endpointAddress)
            call endpointAddress.0xc5803100 with:
               value msg.value wei
                 gas gas_remaining wei
                args arg1 << 240, 192, 256, msg.sender, 0, 352, stor13[arg1 << 240].field_0 % 128, Mask(248, 8, stor13[arg1 << 240].field_0), 64, msg.sender, arg2, 34, 350000, ext_call.return_data[0 len 30] >> 16, 0
        else:
            if bool(stor13[arg1 << 240].field_0) == 1:
                idx = 0
                s = 0
                while idx < stor13[arg1 << 240].field_1 % 128:
                    mem[idx + ceil32(return_data.size) + 486] = stor13[arg1 << 240][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + ceil32(stor13[arg1 << 240].field_1 % 128) + 486] = 64
                require ext_code.size(endpointAddress)
                call endpointAddress.0xc5803100 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg1 << 240, 192, ceil32(stor13[arg1 << 240].field_1 % 128) + 224, msg.sender, 0, ceil32(stor13[arg1 << 240].field_1 % 128) + 320, stor13[arg1 << 240].field_0 % 128, mem[ceil32(return_data.size) + 486 len ceil32(stor13[arg1 << 240].field_1 % 128) + 32], msg.sender, arg2, 34, 350000, ext_call.return_data[0 len 30] >> 16, 0
            else:
                mem[ceil32(return_data.size) + 326] = -ceil32(return_data.size) - 262
                mem[32 len 64] = msg.sender, arg2
                mem[ceil32(return_data.size) + 358] = msg.sender
                mem[ceil32(return_data.size) + 390] = 0
                mem[ceil32(return_data.size) + 422] = -ceil32(return_data.size) - 166
                mem[96] = 34
                mem[128 len 64] = 0, 350000, ext_call.return_data[0 len 30]
                mem[162] = 0
                require ext_code.size(endpointAddress)
                call endpointAddress.mem[Mask(256, -256, msg.sender, arg2) << 256 len 4] with:
                   value msg.value wei
                     gas gas_remaining wei
                    args mem[(Mask(256, -256, msg.sender, arg2) << 256) + 4 len -(Mask(256, -256, msg.sender, arg2) << 256) + 188]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 'NH{q', 34
        mem[96] = uint255(stor14.length) * 0.5
        if not bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor14.length.field_1 % 128:
                if 31 >= stor14.length.field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor14.length.field_8)
                    if not arg1:
                        mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
                        mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 224] = '0'
                        mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 225] = '.json'
                        mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 230] = 32
                        mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 262] = mem[ceil32(uint255(stor14.length) * 0.5) + 192]
                        mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])] = mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]
                        if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192]) > mem[ceil32(uint255(stor14.length) * 0.5) + 192]:
                            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 192] + ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 294] = 0
                        return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + 192], data=mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]), 
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
                    mem[ceil32(uint255(stor14.length) * 0.5) + 128] = s
                    if s:
                        mem[ceil32(uint255(stor14.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > !(idx % 10):
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(uint255(stor14.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
                    if ceil32(uint255(stor14.length) * 0.5) > uint255(stor14.length) * 0.5:
                        mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
                    mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 192] = '.json'
                    mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 197] = 32
                    mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]:
                        mem[mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261] = 0
                    return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160], data=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]), 
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if not arg1:
                mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 224] = '0'
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 225] = '.json'
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 230] = 32
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 262] = mem[ceil32(uint255(stor14.length) * 0.5) + 192]
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])] = mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192]) > mem[ceil32(uint255(stor14.length) * 0.5) + 192]:
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 192] + ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 294] = 0
                return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + 192], data=mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]), 
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
            mem[ceil32(uint255(stor14.length) * 0.5) + 128] = s
            if s:
                mem[ceil32(uint255(stor14.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > !(idx % 10):
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor14.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
            if ceil32(uint255(stor14.length) * 0.5) > uint255(stor14.length) * 0.5:
                mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 192] = '.json'
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 197] = 32
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160], data=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]), 
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261] = 0
            return 32, mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]) + 32], 
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if not Mask(256, -1, stor14.length):
            if not arg1:
                mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 224] = '0'
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 225] = '.json'
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 230] = 32
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 262] = mem[ceil32(uint255(stor14.length) * 0.5) + 192]
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])] = mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192]) > mem[ceil32(uint255(stor14.length) * 0.5) + 192]:
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 192] + ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 294] = 0
                return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + 192], data=mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]), 
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
            mem[ceil32(uint255(stor14.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > !(idx % 10):
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(uint255(stor14.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
                if ceil32(uint255(stor14.length) * 0.5) <= uint255(stor14.length) * 0.5:
                    mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
                    mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 192] = '.json'
                    mem[64] = ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 197
                    mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 197] = 32
                    mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160], data=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261] = 0
                    return 32, mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]) + 32], 
                mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 192] = '.json'
                mem[64] = ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 197
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 197] = 32
                if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                    _3540 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160], data=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261] = 0
                    return 32, mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229 len ceil32(_3540) + 32], 
                _3541 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160], data=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]), 
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261] = 0
                return 32, mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229 len ceil32(_3541) + 32], 
            mem[ceil32(uint255(stor14.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > !(idx % 10):
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor14.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
            if ceil32(uint255(stor14.length) * 0.5) > uint255(stor14.length) * 0.5:
                mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 192] = '.json'
            mem[64] = ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 197
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 197] = 32
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160], data=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]), 
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261] = 0
            return 32, mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]) + 32], 
        if 31 < uint255(stor14.length) * 0.5:
            mem[128] = uint256(stor14.field_0)
            idx = 128
            s = 0
            while (uint255(stor14.length) * 0.5) + 96 > idx:
                mem[idx + 32] = stor14[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if not arg1:
                mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 224] = '0'
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 225] = '.json'
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 230] = 32
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 262] = mem[ceil32(uint255(stor14.length) * 0.5) + 192]
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])] = mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192]) > mem[ceil32(uint255(stor14.length) * 0.5) + 192]:
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 192] + ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 294] = 0
                return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + 192], data=mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]), 
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
            mem[ceil32(uint255(stor14.length) * 0.5) + 128] = s
            if s:
                mem[ceil32(uint255(stor14.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > !(idx % 10):
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor14.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
            if ceil32(uint255(stor14.length) * 0.5) > uint255(stor14.length) * 0.5:
                mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 192] = '.json'
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 197] = 32
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]:
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261] = 0
            return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160], data=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]), 
        mem[128] = 256 * Mask(248, 0, stor14.length.field_8)
        if not arg1:
            mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 224] = '0'
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 225] = '.json'
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 230] = 32
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 262] = mem[ceil32(uint255(stor14.length) * 0.5) + 192]
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])] = mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192]) > mem[ceil32(uint255(stor14.length) * 0.5) + 192]:
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 192] + ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 294] = 0
            return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + 192], data=mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 294 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]), 
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
        mem[ceil32(uint255(stor14.length) * 0.5) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > !(idx % 10):
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor14.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
            if ceil32(uint255(stor14.length) * 0.5) <= uint255(stor14.length) * 0.5:
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 192] = '.json'
                mem[64] = ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 197
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 197] = 32
                if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) > mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                    mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160], data=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261] = 0
                    return 32, mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]) + 32], 
                _3546 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160], data=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]), 
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261] = 0
                return 32, mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229 len ceil32(_3546) + 32], 
            mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 192] = '.json'
            mem[64] = ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 197
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 197] = 32
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) > mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160], data=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]), 
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261] = 0
                return 32, mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]) + 32], 
            _3548 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160], data=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]), 
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261] = 0
            return 32, mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229 len ceil32(_3548) + 32], 
        mem[ceil32(uint255(stor14.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > !(idx % 10):
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(uint255(stor14.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
        if ceil32(uint255(stor14.length) * 0.5) <= uint255(stor14.length) * 0.5:
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 192] = '.json'
            mem[64] = ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 197
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 197] = 32
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160], data=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]), 
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261] = 0
            return 32, mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]) + 32], 
        mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
        mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 192] = '.json'
        mem[64] = ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 197
        mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 197] = 32
        if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160], data=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]), 
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261] = 0
            return 32, mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]) + 32], 
        _3553 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
        mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
        mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160], data=mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160])]), 
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 261] = 0
        return 32, mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + 229 len ceil32(_3553) + 32], 
    if bool(stor14.length) == stor14.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    mem[96] = stor14.length.field_1 % 128
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if not Mask(256, -1, stor14.length):
            if not arg1:
                mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 224] = '0'
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 225] = '.json'
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 230] = 32
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 262] = mem[ceil32(stor14.length.field_1 % 128) + 192]
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 294 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])] = mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) <= mem[ceil32(stor14.length.field_1 % 128) + 192]:
                    return Array(len=mem[ceil32(stor14.length.field_1 % 128) + 192], data=mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 294 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]), 
                mem[mem[ceil32(stor14.length.field_1 % 128) + 192] + ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 294] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 262 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) + 32], 
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
            mem[ceil32(stor14.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > !(idx % 10):
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor14.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
                if ceil32(stor14.length.field_1 % 128) <= stor14.length.field_1 % 128:
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
                    mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
                    if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                        _3570 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3570)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3570)]
                        if ceil32(_3570) > _3570:
                            mem[_3570 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                        return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3570) + 32], 
                    _3571 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3571)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3571)]
                    if ceil32(_3571) > _3571:
                        mem[_3571 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                    return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3571) + 32], 
                mem[stor14.length.field_1 % 128 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192] = 0
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
                mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
                if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                    _3572 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3572)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3572)]
                    if ceil32(_3572) > _3572:
                        mem[_3572 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                    return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3572) + 32], 
                _3573 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3573)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3573)]
                if ceil32(_3573) > _3573:
                    mem[_3573 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3573) + 32], 
            mem[ceil32(stor14.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > !(idx % 10):
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor14.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
            if ceil32(stor14.length.field_1 % 128) <= stor14.length.field_1 % 128:
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
                mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
                if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                    _3574 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3574)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3574)]
                    if ceil32(_3574) > _3574:
                        mem[_3574 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                    return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3574) + 32], 
                _3575 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3575)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3575)]
                if ceil32(_3575) > _3575:
                    mem[_3575 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3575) + 32], 
            mem[stor14.length.field_1 % 128 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
            mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                _3576 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3576)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3576)]
                if ceil32(_3576) > _3576:
                    mem[_3576 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3576) + 32], 
            _3577 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3577)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3577)]
            if ceil32(_3577) > _3577:
                mem[_3577 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3577) + 32], 
        if 31 >= uint255(stor14.length) * 0.5:
            mem[128] = 256 * Mask(248, 0, stor14.length.field_8)
            if not arg1:
                mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 224] = '0'
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 225] = '.json'
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 230] = 32
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 262] = mem[ceil32(stor14.length.field_1 % 128) + 192]
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 294 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])] = mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) <= mem[ceil32(stor14.length.field_1 % 128) + 192]:
                    return Array(len=mem[ceil32(stor14.length.field_1 % 128) + 192], data=mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 294 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]), 
                mem[mem[ceil32(stor14.length.field_1 % 128) + 192] + ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 294] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 262 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) + 32], 
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
            mem[ceil32(stor14.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > !(idx % 10):
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor14.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
                if ceil32(stor14.length.field_1 % 128) <= stor14.length.field_1 % 128:
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
                    mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
                    if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                        _3578 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3578)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3578)]
                        if ceil32(_3578) > _3578:
                            mem[_3578 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                        return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3578) + 32], 
                    _3579 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3579)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3579)]
                    if ceil32(_3579) > _3579:
                        mem[_3579 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                    return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3579) + 32], 
                mem[stor14.length.field_1 % 128 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192] = 0
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
                mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
                if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                    _3580 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3580)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3580)]
                    if ceil32(_3580) > _3580:
                        mem[_3580 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                    return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3580) + 32], 
                _3581 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3581)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3581)]
                if ceil32(_3581) > _3581:
                    mem[_3581 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3581) + 32], 
            mem[ceil32(stor14.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > !(idx % 10):
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor14.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
            if ceil32(stor14.length.field_1 % 128) <= stor14.length.field_1 % 128:
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
                mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
                if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                    _3582 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3582)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3582)]
                    if ceil32(_3582) > _3582:
                        mem[_3582 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                    return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3582) + 32], 
                _3583 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3583)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3583)]
                if ceil32(_3583) > _3583:
                    mem[_3583 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3583) + 32], 
            mem[stor14.length.field_1 % 128 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
            mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                _3584 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3584)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3584)]
                if ceil32(_3584) > _3584:
                    mem[_3584 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3584) + 32], 
            _3585 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3585)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3585)]
            if ceil32(_3585) > _3585:
                mem[_3585 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3585) + 32], 
        mem[0] = 14
        mem[128] = uint256(stor14.field_0)
        idx = 128
        s = 0
        while (uint255(stor14.length) * 0.5) + 96 > idx:
            mem[idx + 32] = stor14[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not arg1:
            mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
            mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 224] = '0'
            mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 225] = '.json'
            mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 230] = 32
            mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 262] = mem[ceil32(stor14.length.field_1 % 128) + 192]
            mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 294 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])] = mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]
            if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) <= mem[ceil32(stor14.length.field_1 % 128) + 192]:
                return Array(len=mem[ceil32(stor14.length.field_1 % 128) + 192], data=mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 294 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]), 
            mem[mem[ceil32(stor14.length.field_1 % 128) + 192] + ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 294] = 0
            return 32, mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 262 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) + 32], 
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
        mem[ceil32(stor14.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > !(idx % 10):
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor14.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
            if ceil32(stor14.length.field_1 % 128) <= stor14.length.field_1 % 128:
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
                mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
                if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                    _4274 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_4274)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4274)]
                    if ceil32(_4274) > _4274:
                        mem[_4274 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                    return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_4274) + 32], 
                _4275 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_4275)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4275)]
                if ceil32(_4275) > _4275:
                    mem[_4275 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_4275) + 32], 
            mem[stor14.length.field_1 % 128 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
            mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                _4276 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_4276)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4276)]
                if ceil32(_4276) > _4276:
                    mem[_4276 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_4276) + 32], 
            _4277 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_4277)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4277)]
            if ceil32(_4277) > _4277:
                mem[_4277 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_4277) + 32], 
        mem[ceil32(stor14.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > !(idx % 10):
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor14.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
        if ceil32(stor14.length.field_1 % 128) <= stor14.length.field_1 % 128:
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
            mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                _4278 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_4278)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4278)]
                if ceil32(_4278) > _4278:
                    mem[_4278 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_4278) + 32], 
            _4279 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_4279)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4279)]
            if ceil32(_4279) > _4279:
                mem[_4279 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_4279) + 32], 
        mem[stor14.length.field_1 % 128 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
        mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
        if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
            _4280 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_4280)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4280)]
            if ceil32(_4280) > _4280:
                mem[_4280 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_4280) + 32], 
        _4281 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_4281)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4281)]
        if ceil32(_4281) > _4281:
            mem[_4281 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
        return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_4281) + 32], 
    if bool(stor14.length) == stor14.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if not stor14.length.field_1 % 128:
        if not arg1:
            mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
            mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 224] = '0'
            mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 225] = '.json'
            mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 230] = 32
            mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 262] = mem[ceil32(stor14.length.field_1 % 128) + 192]
            mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 294 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])] = mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]
            if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) <= mem[ceil32(stor14.length.field_1 % 128) + 192]:
                return Array(len=mem[ceil32(stor14.length.field_1 % 128) + 192], data=mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 294 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]), 
            mem[mem[ceil32(stor14.length.field_1 % 128) + 192] + ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 294] = 0
            return 32, mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 262 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) + 32], 
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
        mem[ceil32(stor14.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > !(idx % 10):
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor14.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
            if ceil32(stor14.length.field_1 % 128) <= stor14.length.field_1 % 128:
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
                mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
                if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                    _3586 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3586)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3586)]
                    if ceil32(_3586) > _3586:
                        mem[_3586 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                    return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3586) + 32], 
                _3587 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3587)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3587)]
                if ceil32(_3587) > _3587:
                    mem[_3587 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3587) + 32], 
            mem[stor14.length.field_1 % 128 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
            mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                _3588 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3588)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3588)]
                if ceil32(_3588) > _3588:
                    mem[_3588 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3588) + 32], 
            _3589 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3589)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3589)]
            if ceil32(_3589) > _3589:
                mem[_3589 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3589) + 32], 
        mem[ceil32(stor14.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > !(idx % 10):
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor14.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
        if ceil32(stor14.length.field_1 % 128) <= stor14.length.field_1 % 128:
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
            mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                _3590 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3590)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3590)]
                if ceil32(_3590) > _3590:
                    mem[_3590 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3590) + 32], 
            _3591 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3591)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3591)]
            if ceil32(_3591) > _3591:
                mem[_3591 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3591) + 32], 
        mem[stor14.length.field_1 % 128 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
        mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
        if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
            _3592 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3592)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3592)]
            if ceil32(_3592) > _3592:
                mem[_3592 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3592) + 32], 
        _3593 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3593)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3593)]
        if ceil32(_3593) > _3593:
            mem[_3593 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
        return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3593) + 32], 
    if 31 >= stor14.length.field_1 % 128:
        mem[128] = 256 * Mask(248, 0, stor14.length.field_8)
        if not arg1:
            mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
            mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 224] = '0'
            mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 225] = '.json'
            mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 230] = 32
            mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 262] = mem[ceil32(stor14.length.field_1 % 128) + 192]
            mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 294 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])] = mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]
            if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) <= mem[ceil32(stor14.length.field_1 % 128) + 192]:
                return Array(len=mem[ceil32(stor14.length.field_1 % 128) + 192], data=mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 294 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]), 
            mem[mem[ceil32(stor14.length.field_1 % 128) + 192] + ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 294] = 0
            return 32, mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 262 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) + 32], 
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
        mem[ceil32(stor14.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > !(idx % 10):
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor14.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
            if ceil32(stor14.length.field_1 % 128) <= stor14.length.field_1 % 128:
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
                mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
                if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                    _3594 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3594)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3594)]
                    if ceil32(_3594) > _3594:
                        mem[_3594 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                    return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3594) + 32], 
                _3595 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3595)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3595)]
                if ceil32(_3595) > _3595:
                    mem[_3595 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3595) + 32], 
            mem[stor14.length.field_1 % 128 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
            mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                _3596 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3596)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3596)]
                if ceil32(_3596) > _3596:
                    mem[_3596 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3596) + 32], 
            _3597 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3597)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3597)]
            if ceil32(_3597) > _3597:
                mem[_3597 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3597) + 32], 
        mem[ceil32(stor14.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > !(idx % 10):
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor14.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
        if ceil32(stor14.length.field_1 % 128) <= stor14.length.field_1 % 128:
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
            mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                _3598 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3598)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3598)]
                if ceil32(_3598) > _3598:
                    mem[_3598 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3598) + 32], 
            _3599 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3599)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3599)]
            if ceil32(_3599) > _3599:
                mem[_3599 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3599) + 32], 
        mem[stor14.length.field_1 % 128 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
        mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
        if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
            _3600 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3600)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3600)]
            if ceil32(_3600) > _3600:
                mem[_3600 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3600) + 32], 
        _3601 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_3601)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3601)]
        if ceil32(_3601) > _3601:
            mem[_3601 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
        return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_3601) + 32], 
    mem[0] = 14
    mem[128] = uint256(stor14.field_0)
    idx = 128
    s = 0
    while stor14.length.field_1 % 128 + 96 > idx:
        mem[idx + 32] = stor14[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not arg1:
        mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
        mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 224] = '0'
        mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 225] = '.json'
        mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 230] = 32
        mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 262] = mem[ceil32(stor14.length.field_1 % 128) + 192]
        mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 294 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])] = mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]
        if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) <= mem[ceil32(stor14.length.field_1 % 128) + 192]:
            return Array(len=mem[ceil32(stor14.length.field_1 % 128) + 192], data=mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 294 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]), 
        mem[mem[ceil32(stor14.length.field_1 % 128) + 192] + ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 294] = 0
        return 32, mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 262 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) + 32], 
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
    mem[ceil32(stor14.length.field_1 % 128) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > !(idx % 10):
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor14.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
        if ceil32(stor14.length.field_1 % 128) <= stor14.length.field_1 % 128:
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
            mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                _4282 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_4282)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4282)]
                if ceil32(_4282) > _4282:
                    mem[_4282 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_4282) + 32], 
            _4283 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_4283)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4283)]
            if ceil32(_4283) > _4283:
                mem[_4283 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_4283) + 32], 
        mem[stor14.length.field_1 % 128 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
        mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
        if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
            _4284 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_4284)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4284)]
            if ceil32(_4284) > _4284:
                mem[_4284 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_4284) + 32], 
        _4285 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_4285)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4285)]
        if ceil32(_4285) > _4285:
            mem[_4285 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
        return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_4285) + 32], 
    mem[ceil32(stor14.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > !(idx % 10):
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor14.length.field_1 % 128) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor14.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
    if ceil32(stor14.length.field_1 % 128) <= stor14.length.field_1 % 128:
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
        mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
        if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
            _4286 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_4286)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4286)]
            if ceil32(_4286) > _4286:
                mem[_4286 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
            return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_4286) + 32], 
        _4287 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_4287)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4287)]
        if ceil32(_4287) > _4287:
            mem[_4287 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
        return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_4287) + 32], 
    mem[stor14.length.field_1 % 128 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192] = 0
    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 192] = '.json'
    mem[64] = ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197
    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 197] = 32
    if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) <= mem[ceil32(stor14.length.field_1 % 128) + 128]:
        _4288 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_4288)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4288)]
        if ceil32(_4288) > _4288:
            mem[_4288 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
        return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_4288) + 32], 
    _4289 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261 len ceil32(_4289)] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4289)]
    if ceil32(_4289) > _4289:
        mem[_4289 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 261] = 0
    return 32, mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + mem[ceil32(stor14.length.field_1 % 128) + 128] + 229 len ceil32(_4289) + 32], 
}



}
