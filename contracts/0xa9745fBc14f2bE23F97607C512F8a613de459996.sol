contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_4946d603(?)
#
const MAX_SUPPLY = 555


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
address sub_07968db1Address;
mapping of struct stor12;
uint256 sub_db7e0c7e;
uint8 stor14; offset 16
uint16 mintedSupply;
uint256 stor14; offset 16
array of struct stor15;
array of struct stor16;
uint256 sub_89eb03d2;
uint256 sub_fdd578ba;

function sub_07968db1(?) {
    return sub_07968db1Address
}

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

function saleEnabled() {
    return bool(uint8(stor14.field_16))
}

function sub_89eb03d2(?) {
    return sub_89eb03d2
}

function owner() {
    return owner
}

function mintedSupply() {
    return mintedSupply
}

function sub_db7e0c7e(?) {
    return sub_db7e0c7e
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function sub_fdd578ba(?) {
    return sub_fdd578ba
}

function donate() payable {
  stop
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

function sub_780c8187(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_db7e0c7e = arg1
}

function setMaxTxn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fdd578ba = arg1
}

function setLastTokenId(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_89eb03d2 = arg1
}

function toggleSaleStatus() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor14.field_16) = Mask(240, 0, not uint8(stor14.field_16))
}

function sub_95b9783c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_07968db1Address = address(arg1)
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
    require ext_code.size(sub_07968db1Address)
    call sub_07968db1Address.0x7e0db17 with:
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
    require ext_code.size(sub_07968db1Address)
    call sub_07968db1Address.0x10ddb137 with:
         gas gas_remaining wei
        args uint16(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    require ext_code.size(sub_07968db1Address)
    call sub_07968db1Address.0x42d65a8d with:
         gas gas_remaining wei
        args arg1 << 240, Array(len=arg2.length, data=arg2[all])
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
    staticcall sub_07968db1Address.0x96568f6 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_code.size(sub_07968db1Address)
    call sub_07968db1Address.0xcbed8b9c with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 240, arg2 << 240, arg3, Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function setProvenance(string arg1) {
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
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor16.length = 0
            idx = 0
            while (uint255(stor16.length) * 0.5) + 31 / 32 > idx:
                stor16[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor16.length = 0
            idx = 0
            while stor16.length.field_1 + 31 / 32 > idx:
                stor16[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_20cdd0a1(?) {
    require calldata.size - 4 >= 64
    require cd[4] == uint16(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor12[cd[4] << 240].field_0:
        if stor12[cd[4] << 240].field_0 == uint255(stor12[cd[4] << 240].field_0) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor12[cd[4] << 240].field_0 = 0
            idx = 0
            while (uint255(stor12[cd[4] << 240].field_0) * 0.5) + 31 / 32 > idx:
                stor12[cd[4] << 240][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor12[cd[4] << 240].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor12[cd[4] << 240][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while (uint255(stor12[cd[4] << 240].field_0) * 0.5) + 31 / 32 > idx:
                stor12[cd[4] << 240][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor12[cd[4] << 240].field_0 == stor12[cd[4] << 240].field_1 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor12[cd[4] << 240].field_0 = 0
            idx = 0
            while stor12[cd[4] << 240].field_1 + 31 / 32 > idx:
                stor12[cd[4] << 240][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor12[cd[4] << 240].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor12[cd[4] << 240][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while stor12[cd[4] << 240].field_1 + 31 / 32 > idx:
                stor12[cd[4] << 240][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
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
    if ownerOf[arg1]:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[stor2[arg1]] < 1:
            revert with 0, 17
        if balanceOf[stor2[arg1]] - 1 != stor7[arg1]:
            tokenOfOwnerByIndex[stor2[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
            stor7[stor6[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor7[arg1]
        stor7[arg1] = 0
        tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor9[arg1] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
    stor9[stor8[stor8.length]] = stor9[arg1]
    stor9[arg1] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor2[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
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

function PROVENANCE() {
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor16.length):
            if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor16.length):
                if 31 < uint255(stor16.length) * 0.5:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor16.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * stor16.length.field_8
        else:
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 0, 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * stor16.length.field_8
        mem[ceil32(uint255(stor16.length) * 0.5) + 192 len ceil32(uint255(stor16.length) * 0.5)] = mem[128 len ceil32(uint255(stor16.length) * 0.5)]
        if ceil32(uint255(stor16.length) * 0.5) > uint255(stor16.length) * 0.5:
            mem[(uint255(stor16.length) * 0.5) + ceil32(uint255(stor16.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)], mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor16.length) * 0.5)]), 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 0, 34
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor16.length):
            if 31 < uint255(stor16.length) * 0.5:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while (uint255(stor16.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
    if ceil32(stor16.length.field_1) > stor16.length.field_1:
        mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + 192] = 0
    return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
}

function sub_10da2eb9(?) {
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor15.length):
                if 31 < uint255(stor15.length) * 0.5:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor15.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * stor15.length.field_8
        else:
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * stor15.length.field_8
        mem[ceil32(uint255(stor15.length) * 0.5) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
        if ceil32(uint255(stor15.length) * 0.5) > uint255(stor15.length) * 0.5:
            mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)], mem[(2 * ceil32(uint255(stor15.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor15.length) * 0.5)]), 
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 0, 34
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor15.length):
            if 31 < uint255(stor15.length) * 0.5:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while (uint255(stor15.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor15.length.field_1 + ceil32(stor15.length.field_1) + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
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

function sub_9d1f6113(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if stor12[arg1].field_0:
        if stor12[arg1].field_0 == uint255(stor12[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor12[arg1].field_0:
            if stor12[arg1].field_0 == uint255(stor12[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor12[arg1].field_0):
                if 31 < uint255(stor12[arg1].field_0) * 0.5:
                    mem[128] = stor12[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor12[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor12[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12[arg1].field_0), data=mem[128 len ceil32(uint255(stor12[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor12[arg1].field_8
        else:
            if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
                revert with 0, 34
            if stor12[arg1].field_1:
                if 31 < stor12[arg1].field_1:
                    mem[128] = stor12[arg1].field_0
                    idx = 128
                    s = 0
                    while stor12[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor12[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12[arg1].field_0), data=mem[128 len ceil32(uint255(stor12[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor12[arg1].field_8
        mem[ceil32(uint255(stor12[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor12[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor12[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor12[arg1].field_0) * 0.5) > uint255(stor12[arg1].field_0) * 0.5:
            mem[(uint255(stor12[arg1].field_0) * 0.5) + ceil32(uint255(stor12[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12[arg1].field_0), data=mem[128 len ceil32(uint255(stor12[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor12[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor12[arg1].field_0) * 0.5)]), 
    if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
        revert with 0, 34
    if stor12[arg1].field_0:
        if stor12[arg1].field_0 == uint255(stor12[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor12[arg1].field_0):
            if 31 < uint255(stor12[arg1].field_0) * 0.5:
                mem[128] = stor12[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor12[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor12[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12[arg1].field_0, data=mem[128 len ceil32(stor12[arg1].field_1)])
            mem[128] = 256 * stor12[arg1].field_8
    else:
        if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
            revert with 0, 34
        if stor12[arg1].field_1:
            if 31 < stor12[arg1].field_1:
                mem[128] = stor12[arg1].field_0
                idx = 128
                s = 0
                while stor12[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor12[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12[arg1].field_0, data=mem[128 len ceil32(stor12[arg1].field_1)])
            mem[128] = 256 * stor12[arg1].field_8
    mem[ceil32(stor12[arg1].field_1) + 192 len ceil32(stor12[arg1].field_1)] = mem[128 len ceil32(stor12[arg1].field_1)]
    if ceil32(stor12[arg1].field_1) > stor12[arg1].field_1:
        mem[stor12[arg1].field_1 + ceil32(stor12[arg1].field_1) + 192] = 0
    return Array(len=stor12[arg1].field_0, data=mem[128 len ceil32(stor12[arg1].field_1)], mem[(2 * ceil32(stor12[arg1].field_1)) + 192 len 2 * ceil32(stor12[arg1].field_1)]), 
}

function sub_584c9ac6(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 == uint16(arg3)
    if stor12[arg3 << 240].field_0:
        if stor12[arg3 << 240].field_0 == uint255(stor12[arg3 << 240].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor12[arg3 << 240].field_0:
            if stor12[arg3 << 240].field_0 == uint255(stor12[arg3 << 240].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor12[arg3 << 240].field_0):
                staticcall sub_07968db1Address.0x40a7bb10 with:
                        gas gas_remaining wei
                       args arg3 << 240, address(mem[290 len 20]), 160, 0, 256, 64, address(arg2), arg1, 34, sub_db7e0c7e, stor12[arg3 << 240].field_15 >> 16, 0
            else:
                if 31 >= uint255(stor12[arg3 << 240].field_0) * 0.5:
                    staticcall sub_07968db1Address.0x40a7bb10 with:
                            gas gas_remaining wei
                           args arg3 << 240, stor12[arg3 << 240].field_0, 160, 0, 256, 64, address(arg2), arg1, 34, sub_db7e0c7e, stor12[arg3 << 240].field_15 >> 16, 0
                else:
                    mem[290] = stor12[arg3 << 240].field_0
                    idx = 290
                    s = 0
                    while (uint255(stor12[arg3 << 240].field_0) * 0.5) + 258 > idx:
                        mem[idx + 32] = stor12[arg3 << 240][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    staticcall sub_07968db1Address.0x40a7bb10 with:
                            gas gas_remaining wei
                           args arg3 << 240, address(mem[290 len 20]), 160, 0, 256, 64, address(arg2), arg1 >> 256, 34, sub_db7e0c7e, stor12[arg3 << 240].field_15 >> 16, 0
        else:
            if stor12[arg3 << 240].field_0 == stor12[arg3 << 240].field_1 < 32:
                revert with 0, 34
            if not stor12[arg3 << 240].field_1:
                staticcall sub_07968db1Address.0x40a7bb10 with:
                        gas gas_remaining wei
                       args arg3 << 240, address(mem[290 len 20]), 160, 0, 256, 64, address(arg2), arg1, 34, sub_db7e0c7e, stor12[arg3 << 240].field_15 >> 16, 0
            else:
                if 31 >= stor12[arg3 << 240].field_1:
                    staticcall sub_07968db1Address.0x40a7bb10 with:
                            gas gas_remaining wei
                           args arg3 << 240, stor12[arg3 << 240].field_0, 160, 0, 256, 64, address(arg2), arg1, 34, sub_db7e0c7e, stor12[arg3 << 240].field_15 >> 16, 0
                else:
                    mem[290] = stor12[arg3 << 240].field_0
                    idx = 290
                    s = 0
                    while stor12[arg3 << 240].field_1 + 258 > idx:
                        mem[idx + 32] = stor12[arg3 << 240][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    staticcall sub_07968db1Address.0x40a7bb10 with:
                            gas gas_remaining wei
                           args arg3 << 240, address(mem[290 len 20]), 160, 0, 256, 64, address(arg2), arg1 >> 256, 34, sub_db7e0c7e, stor12[arg3 << 240].field_15 >> 16, 0
    else:
        if stor12[arg3 << 240].field_0 == stor12[arg3 << 240].field_1 < 32:
            revert with 0, 34
        if stor12[arg3 << 240].field_0:
            if stor12[arg3 << 240].field_0 == uint255(stor12[arg3 << 240].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor12[arg3 << 240].field_0):
                staticcall sub_07968db1Address.0x40a7bb10 with:
                        gas gas_remaining wei
                       args arg3 << 240, address(mem[290 len 20]), 160, 0, 256, 64, address(arg2), arg1, 34, sub_db7e0c7e, stor12[arg3 << 240].field_0 >> 16, 0
            else:
                if 31 >= uint255(stor12[arg3 << 240].field_0) * 0.5:
                    staticcall sub_07968db1Address.0x40a7bb10 with:
                            gas gas_remaining wei
                           args arg3 << 240, stor12[arg3 << 240].field_0, 160, 0, 256, 64, address(arg2), arg1, 34, sub_db7e0c7e, stor12[arg3 << 240].field_0 >> 16, 0
                else:
                    mem[290] = stor12[arg3 << 240].field_0
                    idx = 290
                    s = 0
                    while (uint255(stor12[arg3 << 240].field_0) * 0.5) + 258 > idx:
                        mem[idx + 32] = stor12[arg3 << 240][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    staticcall sub_07968db1Address.0x40a7bb10 with:
                            gas gas_remaining wei
                           args arg3 << 240, address(mem[290 len 20]), 160, 0, 256, 64, address(arg2), arg1 >> 256, 34, sub_db7e0c7e, stor12[arg3 << 240].field_0 >> 16, 0
        else:
            if stor12[arg3 << 240].field_0 == stor12[arg3 << 240].field_1 < 32:
                revert with 0, 34
            if not stor12[arg3 << 240].field_1:
                staticcall sub_07968db1Address.0x40a7bb10 with:
                        gas gas_remaining wei
                       args arg3 << 240, address(mem[290 len 20]), 160, 0, 256, 64, address(arg2), arg1, 34, sub_db7e0c7e, stor12[arg3 << 240].field_0 >> 16, 0
            else:
                if 31 >= stor12[arg3 << 240].field_1:
                    staticcall sub_07968db1Address.0x40a7bb10 with:
                            gas gas_remaining wei
                           args arg3 << 240, stor12[arg3 << 240].field_0, 160, 0, 256, 64, address(arg2), arg1, 34, sub_db7e0c7e, stor12[arg3 << 240].field_0 >> 16, 0
                else:
                    mem[290] = stor12[arg3 << 240].field_0
                    idx = 290
                    s = 0
                    while stor12[arg3 << 240].field_1 + 258 > idx:
                        mem[idx + 32] = stor12[arg3 << 240][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    staticcall sub_07968db1Address.0x40a7bb10 with:
                            gas gas_remaining wei
                           args arg3 << 240, address(mem[290 len 20]), 160, 0, 256, 64, address(arg2), arg1 >> 256, 34, sub_db7e0c7e, stor12[arg3 << 240].field_0 >> 16, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function reserve(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if mintedSupply > !arg1:
        revert with 0, 17
    if mintedSupply + arg1 > 555:
        revert with 0, 'Exceed max supply'
    idx = 0
    while idx < arg1:
        if mintedSupply == 65535:
            revert with 0, 17
        mintedSupply = uint16(mintedSupply + 1)
        if sub_89eb03d2 == -1:
            revert with 0, 17
        sub_89eb03d2++
        _126 = mem[64]
        mem[64] = mem[64] + 32
        mem[_126] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor17 + 1]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor17 + 1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = sub_89eb03d2 + 1
        if msg.sender:
            if not msg.sender:
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_89eb03d2 + 1
                mem[32] = 2
                ownerOf[stor17 + 1] = msg.sender
                emit Transfer(0, msg.sender, sub_89eb03d2 + 1);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_89eb03d2 + 1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _126 + 32]
                        s = s + 32
                        continue 
                    call msg.sender.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_89eb03d2 + 1, 128, 0
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
                    _256 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_256] == Mask(32, 224, mem[_256])
                    if Mask(32, 224, mem[_256]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_89eb03d2 + 1
                stor7[stor17 + 1] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_89eb03d2 + 1
                mem[32] = 2
                ownerOf[stor17 + 1] = msg.sender
                emit Transfer(0, msg.sender, sub_89eb03d2 + 1);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_89eb03d2 + 1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _126 + 32]
                        s = s + 32
                        continue 
                    call msg.sender.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_89eb03d2 + 1, 128, 0
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
                    _258 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_258] == Mask(32, 224, mem[_258])
                    if Mask(32, 224, mem[_258]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[stor17 + 1] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[stor17 + 1]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor17 + 1]
            stor9[stor17 + 1] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = sub_89eb03d2 + 1
            mem[32] = 2
            ownerOf[stor17 + 1] = msg.sender
            emit Transfer(0, msg.sender, sub_89eb03d2 + 1);
            if ext_code.size(msg.sender):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = sub_89eb03d2 + 1
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _126 + 32]
                    s = s + 32
                    continue 
                call msg.sender.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, 0, sub_89eb03d2 + 1, 128, 0
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
                _260 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_260] == Mask(32, 224, mem[_260])
                if Mask(32, 224, mem[_260]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function freeMint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if not uint8(stor14.field_16):
        revert with 0, 'Sale must be active.'
    if mintedSupply > !arg1:
        revert with 0, 17
    if mintedSupply + arg1 > 555:
        revert with 0, 'Exceed max supply'
    if arg1 > sub_fdd578ba:
        revert with 0, 'Cant mint more than 2'
    if arg1 <= 0:
        revert with 0, 'Must mint at least 1 token'
    idx = 0
    while idx < arg1:
        if mintedSupply == 65535:
            revert with 0, 17
        mintedSupply = uint16(mintedSupply + 1)
        if sub_89eb03d2 == -1:
            revert with 0, 17
        sub_89eb03d2++
        _130 = mem[64]
        mem[64] = mem[64] + 32
        mem[_130] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor17 + 1]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor17 + 1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = sub_89eb03d2 + 1
        if msg.sender:
            if not msg.sender:
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_89eb03d2 + 1
                mem[32] = 2
                ownerOf[stor17 + 1] = msg.sender
                emit Transfer(0, msg.sender, sub_89eb03d2 + 1);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_89eb03d2 + 1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _130 + 32]
                        s = s + 32
                        continue 
                    call msg.sender.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_89eb03d2 + 1, 128, 0
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
                    _260 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_260] == Mask(32, 224, mem[_260])
                    if Mask(32, 224, mem[_260]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_89eb03d2 + 1
                stor7[stor17 + 1] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_89eb03d2 + 1
                mem[32] = 2
                ownerOf[stor17 + 1] = msg.sender
                emit Transfer(0, msg.sender, sub_89eb03d2 + 1);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_89eb03d2 + 1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _130 + 32]
                        s = s + 32
                        continue 
                    call msg.sender.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_89eb03d2 + 1, 128, 0
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
                    _262 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_262] == Mask(32, 224, mem[_262])
                    if Mask(32, 224, mem[_262]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[stor17 + 1] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[stor17 + 1]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor17 + 1]
            stor9[stor17 + 1] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = sub_89eb03d2 + 1
            mem[32] = 2
            ownerOf[stor17 + 1] = msg.sender
            emit Transfer(0, msg.sender, sub_89eb03d2 + 1);
            if ext_code.size(msg.sender):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = sub_89eb03d2 + 1
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _130 + 32]
                    s = s + 32
                    continue 
                call msg.sender.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, 0, sub_89eb03d2 + 1, 128, 0
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
                _264 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_264] == Mask(32, 224, mem[_264])
                if Mask(32, 224, mem[_264]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function lzReceive(uint16 arg1, bytes arg2, uint64 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg2.length)) + 97] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + 129 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg2.length)) + arg4.length + 129] = 0
    require msg.sender == sub_07968db1Address
    if stor12[arg1 << 240].field_0:
        if stor12[arg1 << 240].field_0 == uint255(stor12[arg1 << 240].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length != uint255(stor12[arg1 << 240].field_0) * 0.5:
            revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
        if stor12[arg1 << 240].field_0:
            if stor12[arg1 << 240].field_0 == uint255(stor12[arg1 << 240].field_0) * 0.5 < 32:
                revert with 0, 34
            if not stor12[arg1 << 240].field_0:
                mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98] = Mask(248, 8, stor12[arg1 << 240].field_0)
                if sha3(arg2[all]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len uint255(stor12[arg1 << 240].field_0) * 0.5]):
                    revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
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
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[mem[ceil32(ceil32(arg2.length)) + 161]] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[mem[ceil32(ceil32(arg2.length)) + 161]]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[mem[ceil32(ceil32(arg2.length)) + 161]]
                    stor9[mem[ceil32(ceil32(arg2.length)) + 161]] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])] > -2:
                    revert with 0, 17
                balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]++
                ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]] = mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                emit Transfer(0, mem[ceil32(ceil32(arg2.length)) + 141 len 20], mem[ceil32(ceil32(arg2.length)) + 161]);
                if ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20]):
                    call mem[ceil32(ceil32(arg2.length)) + 141 len 20].0x150b7a02 with:
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
            else:
                if stor12[arg1 << 240].field_0 != 1:
                    if sha3(arg2[all]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len -ceil32(ceil32(arg2.length)) + -ceil32(ceil32(arg4.length)) - 98]):
                        revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
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
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor9[mem[ceil32(ceil32(arg2.length)) + 161]] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor9[mem[ceil32(ceil32(arg2.length)) + 161]]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[mem[ceil32(ceil32(arg2.length)) + 161]]
                        stor9[mem[ceil32(ceil32(arg2.length)) + 161]] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])] > -2:
                        revert with 0, 17
                    balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]++
                    ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]] = mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                    emit Transfer(0, mem[ceil32(ceil32(arg2.length)) + 141 len 20], mem[ceil32(ceil32(arg2.length)) + 161]);
                    if ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20]):
                        call mem[ceil32(ceil32(arg2.length)) + 141 len 20].0x150b7a02 with:
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
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor12[arg1 << 240].field_0) * 0.5:
                        mem[idx + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98] = stor12[arg1 << 240][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if sha3(mem[128 len mem[96]]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len uint255(stor12[arg1 << 240].field_0) * 0.5]):
                        revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
                    require mem[ceil32(ceil32(arg2.length)) + 97] >= 64
                    _1726 = mem[ceil32(ceil32(arg2.length)) + 129]
                    require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                    _1946 = mem[ceil32(ceil32(arg2.length)) + 161]
                    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98] = 0
                    if not address(_1726):
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[_1946]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[_1946] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = _1946
                    if address(_1726):
                        if address(_1726):
                            if not address(_1726):
                                revert with 0, 'ERC721: balance query for the zero address'
                            tokenOfOwnerByIndex[address(_1726)][stor3[address(_1726)]] = _1946
                            stor7[_1946] = balanceOf[address(_1726)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor9[_1946] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor9[_1946]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[_1946]
                        stor9[_1946] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(_1726)] > -2:
                        revert with 0, 17
                    balanceOf[address(_1726)]++
                    ownerOf[_1946] = address(_1726)
                    emit Transfer(0, address(_1726), _1946);
                    if ext_code.size(address(_1726)):
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 134] = msg.sender
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 166] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 198] = _1946
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 230] = 128
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 262] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 294 len 0] = None
                        call address(_1726).0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, _1946, 128, 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 130] = ext_call.return_data[0]
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
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if stor12[arg1 << 240].field_0 == stor12[arg1 << 240].field_1 < 32:
                revert with 0, 34
            if not stor12[arg1 << 240].field_0:
                mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98] = Mask(248, 8, stor12[arg1 << 240].field_0)
                if sha3(arg2[all]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len stor12[arg1 << 240].field_1]):
                    revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
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
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[mem[ceil32(ceil32(arg2.length)) + 161]] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[mem[ceil32(ceil32(arg2.length)) + 161]]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[mem[ceil32(ceil32(arg2.length)) + 161]]
                    stor9[mem[ceil32(ceil32(arg2.length)) + 161]] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])] > -2:
                    revert with 0, 17
                balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]++
                ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]] = mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                emit Transfer(0, mem[ceil32(ceil32(arg2.length)) + 141 len 20], mem[ceil32(ceil32(arg2.length)) + 161]);
                if ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20]):
                    call mem[ceil32(ceil32(arg2.length)) + 141 len 20].0x150b7a02 with:
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
            else:
                if stor12[arg1 << 240].field_0 != 1:
                    if sha3(arg2[all]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len -ceil32(ceil32(arg2.length)) + -ceil32(ceil32(arg4.length)) - 98]):
                        revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
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
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor9[mem[ceil32(ceil32(arg2.length)) + 161]] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor9[mem[ceil32(ceil32(arg2.length)) + 161]]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[mem[ceil32(ceil32(arg2.length)) + 161]]
                        stor9[mem[ceil32(ceil32(arg2.length)) + 161]] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])] > -2:
                        revert with 0, 17
                    balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]++
                    ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]] = mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                    emit Transfer(0, mem[ceil32(ceil32(arg2.length)) + 141 len 20], mem[ceil32(ceil32(arg2.length)) + 161]);
                    if ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20]):
                        call mem[ceil32(ceil32(arg2.length)) + 141 len 20].0x150b7a02 with:
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
                else:
                    idx = 0
                    s = 0
                    while idx < stor12[arg1 << 240].field_1:
                        mem[idx + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98] = stor12[arg1 << 240][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if sha3(mem[128 len mem[96]]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len stor12[arg1 << 240].field_1]):
                        revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
                    require mem[ceil32(ceil32(arg2.length)) + 97] >= 64
                    _1727 = mem[ceil32(ceil32(arg2.length)) + 129]
                    require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                    _1995 = mem[ceil32(ceil32(arg2.length)) + 161]
                    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98] = 0
                    if not address(_1727):
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[_1995]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[_1995] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = _1995
                    if address(_1727):
                        if address(_1727):
                            if not address(_1727):
                                revert with 0, 'ERC721: balance query for the zero address'
                            tokenOfOwnerByIndex[address(_1727)][stor3[address(_1727)]] = _1995
                            stor7[_1995] = balanceOf[address(_1727)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor9[_1995] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor9[_1995]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[_1995]
                        stor9[_1995] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(_1727)] > -2:
                        revert with 0, 17
                    balanceOf[address(_1727)]++
                    ownerOf[_1995] = address(_1727)
                    emit Transfer(0, address(_1727), _1995);
                    if ext_code.size(address(_1727)):
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 134] = msg.sender
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 166] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 198] = _1995
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 230] = 128
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 262] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 294 len 0] = None
                        call address(_1727).0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, _1995, 128, 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 130] = ext_call.return_data[0]
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
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    else:
        if stor12[arg1 << 240].field_0 == stor12[arg1 << 240].field_1 < 32:
            revert with 0, 34
        if arg2.length != stor12[arg1 << 240].field_1:
            revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
        if stor12[arg1 << 240].field_0:
            if stor12[arg1 << 240].field_0 == uint255(stor12[arg1 << 240].field_0) * 0.5 < 32:
                revert with 0, 34
            if not stor12[arg1 << 240].field_0:
                mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98] = Mask(248, 8, stor12[arg1 << 240].field_0)
                if sha3(arg2[all]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len uint255(stor12[arg1 << 240].field_0) * 0.5]):
                    revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
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
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[mem[ceil32(ceil32(arg2.length)) + 161]] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[mem[ceil32(ceil32(arg2.length)) + 161]]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[mem[ceil32(ceil32(arg2.length)) + 161]]
                    stor9[mem[ceil32(ceil32(arg2.length)) + 161]] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])] > -2:
                    revert with 0, 17
                balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]++
                ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]] = mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                emit Transfer(0, mem[ceil32(ceil32(arg2.length)) + 141 len 20], mem[ceil32(ceil32(arg2.length)) + 161]);
                if ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20]):
                    call mem[ceil32(ceil32(arg2.length)) + 141 len 20].0x150b7a02 with:
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
            else:
                if stor12[arg1 << 240].field_0 != 1:
                    if sha3(arg2[all]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len -ceil32(ceil32(arg2.length)) + -ceil32(ceil32(arg4.length)) - 98]):
                        revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
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
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor9[mem[ceil32(ceil32(arg2.length)) + 161]] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor9[mem[ceil32(ceil32(arg2.length)) + 161]]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[mem[ceil32(ceil32(arg2.length)) + 161]]
                        stor9[mem[ceil32(ceil32(arg2.length)) + 161]] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])] > -2:
                        revert with 0, 17
                    balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]++
                    ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]] = mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                    emit Transfer(0, mem[ceil32(ceil32(arg2.length)) + 141 len 20], mem[ceil32(ceil32(arg2.length)) + 161]);
                    if ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20]):
                        call mem[ceil32(ceil32(arg2.length)) + 141 len 20].0x150b7a02 with:
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
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor12[arg1 << 240].field_0) * 0.5:
                        mem[idx + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98] = stor12[arg1 << 240][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if sha3(mem[128 len mem[96]]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len uint255(stor12[arg1 << 240].field_0) * 0.5]):
                        revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
                    require mem[ceil32(ceil32(arg2.length)) + 97] >= 64
                    _1728 = mem[ceil32(ceil32(arg2.length)) + 129]
                    require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                    _2044 = mem[ceil32(ceil32(arg2.length)) + 161]
                    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98] = 0
                    if not address(_1728):
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[_2044]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[_2044] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = _2044
                    if address(_1728):
                        if address(_1728):
                            if not address(_1728):
                                revert with 0, 'ERC721: balance query for the zero address'
                            tokenOfOwnerByIndex[address(_1728)][stor3[address(_1728)]] = _2044
                            stor7[_2044] = balanceOf[address(_1728)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor9[_2044] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor9[_2044]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[_2044]
                        stor9[_2044] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(_1728)] > -2:
                        revert with 0, 17
                    balanceOf[address(_1728)]++
                    ownerOf[_2044] = address(_1728)
                    emit Transfer(0, address(_1728), _2044);
                    if ext_code.size(address(_1728)):
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 134] = msg.sender
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 166] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 198] = _2044
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 230] = 128
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 262] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 294 len 0] = None
                        call address(_1728).0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, _2044, 128, 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 130] = ext_call.return_data[0]
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
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if stor12[arg1 << 240].field_0 == stor12[arg1 << 240].field_1 < 32:
                revert with 0, 34
            if not stor12[arg1 << 240].field_0:
                mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98] = Mask(248, 8, stor12[arg1 << 240].field_0)
                if sha3(arg2[all]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len stor12[arg1 << 240].field_1]):
                    revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
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
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[mem[ceil32(ceil32(arg2.length)) + 161]] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[mem[ceil32(ceil32(arg2.length)) + 161]]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[mem[ceil32(ceil32(arg2.length)) + 161]]
                    stor9[mem[ceil32(ceil32(arg2.length)) + 161]] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])] > -2:
                    revert with 0, 17
                balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]++
                ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]] = mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                emit Transfer(0, mem[ceil32(ceil32(arg2.length)) + 141 len 20], mem[ceil32(ceil32(arg2.length)) + 161]);
                if ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20]):
                    call mem[ceil32(ceil32(arg2.length)) + 141 len 20].0x150b7a02 with:
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
            else:
                if stor12[arg1 << 240].field_0 != 1:
                    if sha3(arg2[all]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len -ceil32(ceil32(arg2.length)) + -ceil32(ceil32(arg4.length)) - 98]):
                        revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
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
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor9[mem[ceil32(ceil32(arg2.length)) + 161]] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor9[mem[ceil32(ceil32(arg2.length)) + 161]]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[mem[ceil32(ceil32(arg2.length)) + 161]]
                        stor9[mem[ceil32(ceil32(arg2.length)) + 161]] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])] > -2:
                        revert with 0, 17
                    balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]++
                    ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]] = mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                    emit Transfer(0, mem[ceil32(ceil32(arg2.length)) + 141 len 20], mem[ceil32(ceil32(arg2.length)) + 161]);
                    if ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20]):
                        call mem[ceil32(ceil32(arg2.length)) + 141 len 20].0x150b7a02 with:
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
                else:
                    idx = 0
                    s = 0
                    while idx < stor12[arg1 << 240].field_1:
                        mem[idx + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98] = stor12[arg1 << 240][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if sha3(mem[128 len mem[96]]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len stor12[arg1 << 240].field_1]):
                        revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
                    require mem[ceil32(ceil32(arg2.length)) + 97] >= 64
                    _1729 = mem[ceil32(ceil32(arg2.length)) + 129]
                    require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                    _2093 = mem[ceil32(ceil32(arg2.length)) + 161]
                    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98] = 0
                    if not address(_1729):
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[_2093]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[_2093] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = _2093
                    if address(_1729):
                        if address(_1729):
                            if not address(_1729):
                                revert with 0, 'ERC721: balance query for the zero address'
                            tokenOfOwnerByIndex[address(_1729)][stor3[address(_1729)]] = _2093
                            stor7[_2093] = balanceOf[address(_1729)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor9[_2093] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor9[_2093]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[_2093]
                        stor9[_2093] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(_1729)] > -2:
                        revert with 0, 17
                    balanceOf[address(_1729)]++
                    ownerOf[_2093] = address(_1729)
                    emit Transfer(0, address(_1729), _2093);
                    if ext_code.size(address(_1729)):
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 134] = msg.sender
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 166] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 198] = _2093
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 230] = 128
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 262] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 294 len 0] = None
                        call address(_1729).0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, _2093, 128, 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 130] = ext_call.return_data[0]
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
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        mem[96] = uint255(stor15.length) * 0.5
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor15.length):
                if uint255(stor15.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
                    mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 257] = mem[ceil32(uint255(stor15.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])] = mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 192]:
                        return Array(len=mem[ceil32(uint255(stor15.length) * 0.5) + 192], data=mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]), 
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 192] + ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289] = 0
                    return 32, mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192]) + 32], 
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
                mem[ceil32(uint255(stor15.length) * 0.5) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(uint255(stor15.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
                    if ceil32(uint255(stor15.length) * 0.5) <= uint255(stor15.length) * 0.5:
                        mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
                        mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                        if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                            _3686 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3686)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3686)]
                            if ceil32(_3686) > _3686:
                                mem[_3686 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                            return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3686) + 32], 
                        _3687 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3687)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3687)]
                        if ceil32(_3687) > _3687:
                            mem[_3687 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3687) + 32], 
                    mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                        _3688 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3688)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3688)]
                        if ceil32(_3688) > _3688:
                            mem[_3688 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3688) + 32], 
                    _3689 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3689)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3689)]
                    if ceil32(_3689) > _3689:
                        mem[_3689 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3689) + 32], 
                mem[ceil32(uint255(stor15.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor15.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
                if ceil32(uint255(stor15.length) * 0.5) <= uint255(stor15.length) * 0.5:
                    mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                        _3690 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3690)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3690)]
                        if ceil32(_3690) > _3690:
                            mem[_3690 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3690) + 32], 
                    _3691 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3691)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3691)]
                    if ceil32(_3691) > _3691:
                        mem[_3691 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3691) + 32], 
                mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                    _3692 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3692)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3692)]
                    if ceil32(_3692) > _3692:
                        mem[_3692 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3692) + 32], 
                _3693 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3693)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3693)]
                if ceil32(_3693) > _3693:
                    mem[_3693 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3693) + 32], 
            if 31 >= uint255(stor15.length) * 0.5:
                mem[128] = 256 * stor15.length.field_8
                if uint255(stor15.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
                    mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 257] = mem[ceil32(uint255(stor15.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])] = mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 192]:
                        return Array(len=mem[ceil32(uint255(stor15.length) * 0.5) + 192], data=mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]), 
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 192] + ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289] = 0
                    return 32, mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192]) + 32], 
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
                mem[ceil32(uint255(stor15.length) * 0.5) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(uint255(stor15.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
                    if ceil32(uint255(stor15.length) * 0.5) <= uint255(stor15.length) * 0.5:
                        mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
                        mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                        if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                            _3694 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3694)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3694)]
                            if ceil32(_3694) > _3694:
                                mem[_3694 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                            return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3694) + 32], 
                        _3695 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3695)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3695)]
                        if ceil32(_3695) > _3695:
                            mem[_3695 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3695) + 32], 
                    mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                        _3696 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3696)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3696)]
                        if ceil32(_3696) > _3696:
                            mem[_3696 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3696) + 32], 
                    _3697 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3697)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3697)]
                    if ceil32(_3697) > _3697:
                        mem[_3697 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3697) + 32], 
                mem[ceil32(uint255(stor15.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor15.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
                if ceil32(uint255(stor15.length) * 0.5) <= uint255(stor15.length) * 0.5:
                    mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                        _3698 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3698)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3698)]
                        if ceil32(_3698) > _3698:
                            mem[_3698 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3698) + 32], 
                    _3699 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3699)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3699)]
                    if ceil32(_3699) > _3699:
                        mem[_3699 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3699) + 32], 
                mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                    _3700 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3700)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3700)]
                    if ceil32(_3700) > _3700:
                        mem[_3700 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3700) + 32], 
                _3701 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3701)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3701)]
                if ceil32(_3701) > _3701:
                    mem[_3701 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3701) + 32], 
            mem[0] = 15
            mem[128] = uint256(stor15.field_0)
            idx = 128
            s = 0
            while (uint255(stor15.length) * 0.5) + 96 > idx:
                mem[idx + 32] = stor15[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if uint255(stor15.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
                mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 257] = mem[ceil32(uint255(stor15.length) * 0.5) + 192]
                mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])] = mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 192]:
                    return Array(len=mem[ceil32(uint255(stor15.length) * 0.5) + 192], data=mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]), 
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 192] + ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289] = 0
                return 32, mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192]) + 32], 
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
            mem[ceil32(uint255(stor15.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor15.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
                if ceil32(uint255(stor15.length) * 0.5) <= uint255(stor15.length) * 0.5:
                    mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
                    if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                        mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                        _4406 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_4406)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_4406)]
                        if ceil32(_4406) > _4406:
                            mem[_4406 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_4406) + 32], 
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 0
                    mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                    _4407 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_4407)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_4407)]
                    if ceil32(_4407) > _4407:
                        mem[_4407 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_4407) + 32], 
                mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
                if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                    mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                    _4408 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_4408)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_4408)]
                    if ceil32(_4408) > _4408:
                        mem[_4408 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_4408) + 32], 
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 0
                mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                _4409 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_4409)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_4409)]
                if ceil32(_4409) > _4409:
                    mem[_4409 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_4409) + 32], 
            mem[ceil32(uint255(stor15.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor15.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
            if ceil32(uint255(stor15.length) * 0.5) <= uint255(stor15.length) * 0.5:
                mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
                if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                    mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                    _4410 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_4410)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_4410)]
                    if ceil32(_4410) > _4410:
                        mem[_4410 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_4410) + 32], 
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 0
                mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                _4411 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_4411)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_4411)]
                if ceil32(_4411) > _4411:
                    mem[_4411 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_4411) + 32], 
            mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
            if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                _4412 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_4412)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_4412)]
                if ceil32(_4412) > _4412:
                    mem[_4412 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_4412) + 32], 
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 0
            mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
            _4413 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_4413)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_4413)]
            if ceil32(_4413) > _4413:
                mem[_4413 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_4413) + 32], 
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if not stor15.length.field_1:
            if uint255(stor15.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
                mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 257] = mem[ceil32(uint255(stor15.length) * 0.5) + 192]
                mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])] = mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 192]:
                    return Array(len=mem[ceil32(uint255(stor15.length) * 0.5) + 192], data=mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]), 
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 192] + ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289] = 0
                return 32, mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192]) + 32], 
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
            mem[ceil32(uint255(stor15.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor15.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
                if ceil32(uint255(stor15.length) * 0.5) <= uint255(stor15.length) * 0.5:
                    mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                        _3702 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3702)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3702)]
                        if ceil32(_3702) > _3702:
                            mem[_3702 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3702) + 32], 
                    _3703 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3703)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3703)]
                    if ceil32(_3703) > _3703:
                        mem[_3703 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3703) + 32], 
                mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                    _3704 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3704)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3704)]
                    if ceil32(_3704) > _3704:
                        mem[_3704 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3704) + 32], 
                _3705 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3705)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3705)]
                if ceil32(_3705) > _3705:
                    mem[_3705 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3705) + 32], 
            mem[ceil32(uint255(stor15.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor15.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
            if ceil32(uint255(stor15.length) * 0.5) <= uint255(stor15.length) * 0.5:
                mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                    _3706 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3706)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3706)]
                    if ceil32(_3706) > _3706:
                        mem[_3706 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3706) + 32], 
                _3707 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3707)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3707)]
                if ceil32(_3707) > _3707:
                    mem[_3707 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3707) + 32], 
            mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                _3708 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3708)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3708)]
                if ceil32(_3708) > _3708:
                    mem[_3708 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3708) + 32], 
            _3709 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3709)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3709)]
            if ceil32(_3709) > _3709:
                mem[_3709 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3709) + 32], 
        if 31 >= stor15.length.field_1:
            mem[128] = 256 * stor15.length.field_8
            if uint255(stor15.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
                mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 257] = mem[ceil32(uint255(stor15.length) * 0.5) + 192]
                mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])] = mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 192]:
                    return Array(len=mem[ceil32(uint255(stor15.length) * 0.5) + 192], data=mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]), 
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 192] + ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289] = 0
                return 32, mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192]) + 32], 
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
            mem[ceil32(uint255(stor15.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor15.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
                if ceil32(uint255(stor15.length) * 0.5) <= uint255(stor15.length) * 0.5:
                    mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                        _3710 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3710)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3710)]
                        if ceil32(_3710) > _3710:
                            mem[_3710 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3710) + 32], 
                    _3711 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3711)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3711)]
                    if ceil32(_3711) > _3711:
                        mem[_3711 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3711) + 32], 
                mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                    _3712 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3712)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3712)]
                    if ceil32(_3712) > _3712:
                        mem[_3712 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3712) + 32], 
                _3713 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3713)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3713)]
                if ceil32(_3713) > _3713:
                    mem[_3713 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3713) + 32], 
            mem[ceil32(uint255(stor15.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor15.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
            if ceil32(uint255(stor15.length) * 0.5) <= uint255(stor15.length) * 0.5:
                mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                    _3714 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3714)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3714)]
                    if ceil32(_3714) > _3714:
                        mem[_3714 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3714) + 32], 
                _3715 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3715)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3715)]
                if ceil32(_3715) > _3715:
                    mem[_3715 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3715) + 32], 
            mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                _3716 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3716)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3716)]
                if ceil32(_3716) > _3716:
                    mem[_3716 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3716) + 32], 
            _3717 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_3717)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_3717)]
            if ceil32(_3717) > _3717:
                mem[_3717 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_3717) + 32], 
        mem[0] = 15
        mem[128] = uint256(stor15.field_0)
        idx = 128
        s = 0
        while stor15.length.field_1 + 96 > idx:
            mem[idx + 32] = stor15[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if uint255(stor15.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
            mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 225] = 32
            mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 257] = mem[ceil32(uint255(stor15.length) * 0.5) + 192]
            mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])] = mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 192]:
                return Array(len=mem[ceil32(uint255(stor15.length) * 0.5) + 192], data=mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]), 
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 192] + ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289] = 0
            return 32, mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192]) + 32], 
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
        mem[ceil32(uint255(stor15.length) * 0.5) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor15.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
            if ceil32(uint255(stor15.length) * 0.5) <= uint255(stor15.length) * 0.5:
                mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
                if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                    mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                    _4414 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_4414)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_4414)]
                    if ceil32(_4414) > _4414:
                        mem[_4414 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_4414) + 32], 
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 0
                mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                _4415 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_4415)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_4415)]
                if ceil32(_4415) > _4415:
                    mem[_4415 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_4415) + 32], 
            mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
            if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                _4416 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_4416)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_4416)]
                if ceil32(_4416) > _4416:
                    mem[_4416 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_4416) + 32], 
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 0
            mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
            _4417 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_4417)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_4417)]
            if ceil32(_4417) > _4417:
                mem[_4417 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_4417) + 32], 
        mem[ceil32(uint255(stor15.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor15.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
        if ceil32(uint255(stor15.length) * 0.5) <= uint255(stor15.length) * 0.5:
            mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
            if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                _4418 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_4418)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_4418)]
                if ceil32(_4418) > _4418:
                    mem[_4418 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_4418) + 32], 
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 0
            mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
            _4419 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_4419)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_4419)]
            if ceil32(_4419) > _4419:
                mem[_4419 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_4419) + 32], 
        mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
        if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
            mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
            _4420 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_4420)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_4420)]
            if ceil32(_4420) > _4420:
                mem[_4420 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_4420) + 32], 
        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 0
        mem[64] = mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192
        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
        _4421 = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(_4421)] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(_4421)]
        if ceil32(_4421) > _4421:
            mem[_4421 + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(_4421) + 32], 
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 0, 34
    mem[96] = stor15.length.field_1
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor15.length):
            if stor15.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 32
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor15.length.field_1) + 192]) <= mem[ceil32(stor15.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                mem[mem[ceil32(stor15.length.field_1) + 192] + ceil32(stor15.length.field_1) + stor15.length.field_1 + 289] = 0
                return 32, mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257 len ceil32(mem[ceil32(stor15.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor15.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
                    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                        _3718 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3718)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3718)]
                        if ceil32(_3718) > _3718:
                            mem[_3718 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3718) + 32], 
                    _3719 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3719)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3719)]
                    if ceil32(_3719) > _3719:
                        mem[_3719 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3719) + 32], 
                mem[stor15.length.field_1 + ceil32(stor15.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                    _3720 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3720)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3720)]
                    if ceil32(_3720) > _3720:
                        mem[_3720 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3720) + 32], 
                _3721 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3721)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3721)]
                if ceil32(_3721) > _3721:
                    mem[_3721 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3721) + 32], 
            mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
            if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                    _3722 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3722)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3722)]
                    if ceil32(_3722) > _3722:
                        mem[_3722 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3722) + 32], 
                _3723 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3723)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3723)]
                if ceil32(_3723) > _3723:
                    mem[_3723 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3723) + 32], 
            mem[stor15.length.field_1 + ceil32(stor15.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                _3724 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3724)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3724)]
                if ceil32(_3724) > _3724:
                    mem[_3724 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3724) + 32], 
            _3725 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3725)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3725)]
            if ceil32(_3725) > _3725:
                mem[_3725 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3725) + 32], 
        if 31 >= uint255(stor15.length) * 0.5:
            mem[128] = 256 * stor15.length.field_8
            if stor15.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 32
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor15.length.field_1) + 192]) <= mem[ceil32(stor15.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                mem[mem[ceil32(stor15.length.field_1) + 192] + ceil32(stor15.length.field_1) + stor15.length.field_1 + 289] = 0
                return 32, mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257 len ceil32(mem[ceil32(stor15.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor15.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
                    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                        _3726 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3726)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3726)]
                        if ceil32(_3726) > _3726:
                            mem[_3726 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3726) + 32], 
                    _3727 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3727)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3727)]
                    if ceil32(_3727) > _3727:
                        mem[_3727 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3727) + 32], 
                mem[stor15.length.field_1 + ceil32(stor15.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                    _3728 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3728)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3728)]
                    if ceil32(_3728) > _3728:
                        mem[_3728 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3728) + 32], 
                _3729 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3729)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3729)]
                if ceil32(_3729) > _3729:
                    mem[_3729 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3729) + 32], 
            mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
            if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                    _3730 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3730)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3730)]
                    if ceil32(_3730) > _3730:
                        mem[_3730 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3730) + 32], 
                _3731 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3731)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3731)]
                if ceil32(_3731) > _3731:
                    mem[_3731 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3731) + 32], 
            mem[stor15.length.field_1 + ceil32(stor15.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                _3732 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3732)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3732)]
                if ceil32(_3732) > _3732:
                    mem[_3732 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3732) + 32], 
            _3733 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3733)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3733)]
            if ceil32(_3733) > _3733:
                mem[_3733 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3733) + 32], 
        mem[0] = 15
        mem[128] = uint256(stor15.field_0)
        idx = 128
        s = 0
        while (uint255(stor15.length) * 0.5) + 96 > idx:
            mem[idx + 32] = stor15[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor15.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 32
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) <= mem[ceil32(stor15.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
            mem[mem[ceil32(stor15.length.field_1) + 192] + ceil32(stor15.length.field_1) + stor15.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257 len ceil32(mem[ceil32(stor15.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor15.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
            if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                    mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
                    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
                    _4422 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_4422)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4422)]
                    if ceil32(_4422) > _4422:
                        mem[_4422 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_4422) + 32], 
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
                _4423 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_4423)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4423)]
                if ceil32(_4423) > _4423:
                    mem[_4423 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_4423) + 32], 
            mem[stor15.length.field_1 + ceil32(stor15.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
                _4424 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_4424)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4424)]
                if ceil32(_4424) > _4424:
                    mem[_4424 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_4424) + 32], 
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
            mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
            _4425 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_4425)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4425)]
            if ceil32(_4425) > _4425:
                mem[_4425 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_4425) + 32], 
        mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
        if ceil32(stor15.length.field_1) <= stor15.length.field_1:
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
                _4426 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_4426)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4426)]
                if ceil32(_4426) > _4426:
                    mem[_4426 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_4426) + 32], 
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
            mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
            _4427 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_4427)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4427)]
            if ceil32(_4427) > _4427:
                mem[_4427 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_4427) + 32], 
        mem[stor15.length.field_1 + ceil32(stor15.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
            mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
            _4428 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_4428)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4428)]
            if ceil32(_4428) > _4428:
                mem[_4428 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_4428) + 32], 
        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
        mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
        _4429 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_4429)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4429)]
        if ceil32(_4429) > _4429:
            mem[_4429 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_4429) + 32], 
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 0, 34
    if not stor15.length.field_1:
        if stor15.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 32
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) <= mem[ceil32(stor15.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
            mem[mem[ceil32(stor15.length.field_1) + 192] + ceil32(stor15.length.field_1) + stor15.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257 len ceil32(mem[ceil32(stor15.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor15.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
            if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                    _3734 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3734)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3734)]
                    if ceil32(_3734) > _3734:
                        mem[_3734 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3734) + 32], 
                _3735 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3735)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3735)]
                if ceil32(_3735) > _3735:
                    mem[_3735 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3735) + 32], 
            mem[stor15.length.field_1 + ceil32(stor15.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                _3736 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3736)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3736)]
                if ceil32(_3736) > _3736:
                    mem[_3736 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3736) + 32], 
            _3737 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3737)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3737)]
            if ceil32(_3737) > _3737:
                mem[_3737 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3737) + 32], 
        mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
        if ceil32(stor15.length.field_1) <= stor15.length.field_1:
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                _3738 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3738)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3738)]
                if ceil32(_3738) > _3738:
                    mem[_3738 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3738) + 32], 
            _3739 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3739)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3739)]
            if ceil32(_3739) > _3739:
                mem[_3739 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3739) + 32], 
        mem[stor15.length.field_1 + ceil32(stor15.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
            _3740 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3740)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3740)]
            if ceil32(_3740) > _3740:
                mem[_3740 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3740) + 32], 
        _3741 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3741)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3741)]
        if ceil32(_3741) > _3741:
            mem[_3741 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3741) + 32], 
    if 31 >= stor15.length.field_1:
        mem[128] = 256 * stor15.length.field_8
        if stor15.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 32
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) <= mem[ceil32(stor15.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
            mem[mem[ceil32(stor15.length.field_1) + 192] + ceil32(stor15.length.field_1) + stor15.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257 len ceil32(mem[ceil32(stor15.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor15.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
            if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                    _3742 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3742)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3742)]
                    if ceil32(_3742) > _3742:
                        mem[_3742 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3742) + 32], 
                _3743 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3743)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3743)]
                if ceil32(_3743) > _3743:
                    mem[_3743 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3743) + 32], 
            mem[stor15.length.field_1 + ceil32(stor15.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                _3744 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3744)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3744)]
                if ceil32(_3744) > _3744:
                    mem[_3744 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3744) + 32], 
            _3745 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3745)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3745)]
            if ceil32(_3745) > _3745:
                mem[_3745 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3745) + 32], 
        mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
        if ceil32(stor15.length.field_1) <= stor15.length.field_1:
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                _3746 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3746)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3746)]
                if ceil32(_3746) > _3746:
                    mem[_3746 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3746) + 32], 
            _3747 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3747)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3747)]
            if ceil32(_3747) > _3747:
                mem[_3747 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3747) + 32], 
        mem[stor15.length.field_1 + ceil32(stor15.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
            _3748 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3748)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3748)]
            if ceil32(_3748) > _3748:
                mem[_3748 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3748) + 32], 
        _3749 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_3749)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_3749)]
        if ceil32(_3749) > _3749:
            mem[_3749 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_3749) + 32], 
    mem[0] = 15
    mem[128] = uint256(stor15.field_0)
    idx = 128
    s = 0
    while stor15.length.field_1 + 96 > idx:
        mem[idx + 32] = stor15[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor15.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 32
        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor15.length.field_1) + 192]) <= mem[ceil32(stor15.length.field_1) + 192]:
            return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
        mem[mem[ceil32(stor15.length.field_1) + 192] + ceil32(stor15.length.field_1) + stor15.length.field_1 + 289] = 0
        return 32, mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 257 len ceil32(mem[ceil32(stor15.length.field_1) + 192]) + 32], 
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
    mem[ceil32(stor15.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
        if ceil32(stor15.length.field_1) <= stor15.length.field_1:
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
                _4430 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_4430)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4430)]
                if ceil32(_4430) > _4430:
                    mem[_4430 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_4430) + 32], 
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
            mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
            _4431 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_4431)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4431)]
            if ceil32(_4431) > _4431:
                mem[_4431 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_4431) + 32], 
        mem[stor15.length.field_1 + ceil32(stor15.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
            mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
            _4432 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_4432)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4432)]
            if ceil32(_4432) > _4432:
                mem[_4432 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_4432) + 32], 
        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
        mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
        _4433 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_4433)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4433)]
        if ceil32(_4433) > _4433:
            mem[_4433 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_4433) + 32], 
    mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
            revert with 0, 50
        mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
    if ceil32(stor15.length.field_1) <= stor15.length.field_1:
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
            mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
            _4434 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_4434)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4434)]
            if ceil32(_4434) > _4434:
                mem[_4434 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_4434) + 32], 
        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
        mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
        _4435 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_4435)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4435)]
        if ceil32(_4435) > _4435:
            mem[_4435 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_4435) + 32], 
    mem[stor15.length.field_1 + ceil32(stor15.length.field_1) + ceil32(s) + 192] = 0
    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
        mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
        _4436 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_4436)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4436)]
        if ceil32(_4436) > _4436:
            mem[_4436 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_4436) + 32], 
    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
    mem[64] = mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192
    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 32
    _4437 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
    mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256 len ceil32(_4437)] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(_4437)]
    if ceil32(_4437) > _4437:
        mem[_4437 + mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 256] = 0
    return 32, mem[mem[ceil32(stor15.length.field_1) + 128] + ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 224 len ceil32(_4437) + 32], 
}



}
