contract main {




// =====================  Runtime code  =====================


#
#  - sub_04848a23(?)
#
const MAX_SUPPLY = 150

const MAX_MINT_PER_WALLET = 5


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor8;
array of uint256 tokenByIndex;
mapping of uint256 stor10;
address sub_07968db1Address;
mapping of struct stor12;
uint256 sub_db7e0c7e;
array of struct stor14;
array of struct stor15;
uint256 mintPrice;
uint256 lastTokenId;
uint8 isMintActive; offset 16
uint16 mintedSupply;
uint256 stor18; offset 16
mapping of uint256 sub_24014f2d;

function sub_07968db1(?) {
    return sub_07968db1Address
}

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

function sub_24014f2d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_24014f2d[arg1]
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

function isMintActive() {
    return bool(isMintActive)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function mintPrice() {
    return mintPrice
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

function lastTokenId() {
    return lastTokenId
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_780c8187(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_db7e0c7e = arg1
}

function setMintPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mintPrice = arg1
}

function setMintActive(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18 = Mask(240, 0, arg1)
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
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
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

function sub_cbed8b9c(?) {
    require calldata.size - 4 >= 128
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_07968db1Address)
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
    if balanceOf[stor2[arg1]] < 1:
        revert with 'NH{q', 17
    if stor8[arg1] != balanceOf[stor2[arg1]] - 1:
        tokenOfOwnerByIndex[stor2[arg1]][stor8[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
        stor8[stor7[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor8[arg1]
    stor8[arg1] = 0
    tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 'NH{q', 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if stor10[arg1] >= tokenByIndex.length:
        revert with 'NH{q', 50
    tokenByIndex[stor10[arg1]] = tokenByIndex[tokenByIndex.length]
    stor10[stor9[stor9.length]] = stor10[arg1]
    stor10[arg1] = 0
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
        if stor12[cd[4] << 240].field_0 == stor12[cd[4] << 240].field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if stor12[cd[4] << 240].field_0 == stor12[cd[4] << 240].field_1 < 32:
            revert with 'NH{q', 34
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor3[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
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
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor3[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
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

function baseExtension() {
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor14.length.field_1:
                if 31 < stor14.length.field_1:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
                mem[128] = 256 * stor14.length.field_8
        else:
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor14.length.field_1:
                if 31 < stor14.length.field_1:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
                mem[128] = 256 * stor14.length.field_8
        mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) > stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor14.length.field_1:
            if 31 < stor14.length.field_1:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor14.length.field_1:
            if 31 < stor14.length.field_1:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
    if ceil32(stor14.length.field_1) > stor14.length.field_1:
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
    return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
}

function sub_9d1f6113(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if stor12[arg1].field_0:
        if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor12[arg1].field_0:
            if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor12[arg1].field_1), data=mem[128 len ceil32(stor12[arg1].field_1)])
                mem[128] = 256 * stor12[arg1].field_8
        else:
            if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor12[arg1].field_1), data=mem[128 len ceil32(stor12[arg1].field_1)])
                mem[128] = 256 * stor12[arg1].field_8
        mem[ceil32(stor12[arg1].field_1) + 192 len ceil32(stor12[arg1].field_1)] = mem[128 len ceil32(stor12[arg1].field_1)]
        if ceil32(stor12[arg1].field_1) > stor12[arg1].field_1:
            mem[ceil32(stor12[arg1].field_1) + stor12[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12[arg1].field_1), data=mem[128 len ceil32(stor12[arg1].field_1)], mem[(2 * ceil32(stor12[arg1].field_1)) + 192 len 2 * ceil32(stor12[arg1].field_1)]), 
    if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor12[arg1].field_0:
        if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor12[arg1].field_1) + stor12[arg1].field_1 + 192] = 0
    return Array(len=stor12[arg1].field_0, data=mem[128 len ceil32(stor12[arg1].field_1)], mem[(2 * ceil32(stor12[arg1].field_1)) + 192 len 2 * ceil32(stor12[arg1].field_1)]), 
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
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor3[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
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

function mint(uint8 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not isMintActive:
        revert with 0, 'Public sale not active'
    if mintedSupply >= 150:
        revert with 0, 'Max mint supply reached'
    if mintPrice and arg1 > -1 / mintPrice:
        revert with 'NH{q', 17
    if mintPrice * arg1 > msg.value:
        revert with 0, 'Incorrect value sent'
    mem[0] = msg.sender
    mem[32] = 19
    if sub_24014f2d[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_24014f2d[address(msg.sender)] + arg1 > 5:
        revert with 0, '5 NFTs max per wallet'
    idx = 0
    while idx < arg1:
        if lastTokenId == -1:
            revert with 'NH{q', 17
        lastTokenId++
        _99 = mem[64]
        mem[64] = mem[64] + 32
        mem[_99] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor17 + 1]:
            revert with 0, 'ERC721: token already minted'
        stor10[stor17 + 1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = lastTokenId + 1
        if msg.sender:
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = lastTokenId + 1
            stor8[stor17 + 1] = balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = lastTokenId + 1
            mem[32] = 2
            ownerOf[stor17 + 1] = msg.sender
            emit Transfer(0, msg.sender, lastTokenId + 1);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = lastTokenId + 1
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_99 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, lastTokenId + 1, 128, 0
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
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor10[stor17 + 1] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor10[stor17 + 1]] = tokenByIndex[tokenByIndex.length]
            stor10[stor9[stor9.length]] = stor10[stor17 + 1]
            stor10[stor17 + 1] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = lastTokenId + 1
            mem[32] = 2
            ownerOf[stor17 + 1] = msg.sender
            emit Transfer(0, msg.sender, lastTokenId + 1);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = lastTokenId + 1
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_99 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, lastTokenId + 1, 128, 0
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
                _195 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_195] == Mask(32, 224, mem[_195])
                if Mask(32, 224, mem[_195]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if sub_24014f2d[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    sub_24014f2d[address(msg.sender)] += arg1
    if mintedSupply == 65535:
        revert with 'NH{q', 17
    mintedSupply = uint16(mintedSupply + 1)
}

function sub_584c9ac6(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == uint16(arg3)
    if stor12[arg3 << 240].field_0:
        if stor12[arg3 << 240].field_0 == stor12[arg3 << 240].field_1 < 32:
            revert with 'NH{q', 34
        if stor12[arg3 << 240].field_0:
            if stor12[arg3 << 240].field_0 == stor12[arg3 << 240].field_1 < 32:
                revert with 'NH{q', 34
            if not stor12[arg3 << 240].field_1:
                require ext_code.size(sub_07968db1Address)
                staticcall sub_07968db1Address.0x40a7bb10 with:
                        gas gas_remaining wei
                       args arg3 << 240, address(mem[290 len 20]), 160, 0, 256, 64, address(arg2), arg1, 34, sub_db7e0c7e, stor12[arg3 << 240].field_16 >> 16, 0
            else:
                if 31 >= stor12[arg3 << 240].field_1:
                    require ext_code.size(sub_07968db1Address)
                    staticcall sub_07968db1Address.0x40a7bb10 with:
                            gas gas_remaining wei
                           args arg3 << 240, stor12[arg3 << 240].field_0, 160, 0, 256, 64, address(arg2), arg1, 34, sub_db7e0c7e, stor12[arg3 << 240].field_16 >> 16, 0
                else:
                    mem[290] = stor12[arg3 << 240].field_0
                    idx = 290
                    s = 0
                    while stor12[arg3 << 240].field_1 + 258 > idx:
                        mem[idx + 32] = stor12[arg3 << 240][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_07968db1Address)
                    staticcall sub_07968db1Address.0x40a7bb10 with:
                            gas gas_remaining wei
                           args arg3 << 240, address(mem[290 len 20]), 160, 0, 256, 64, address(arg2), arg1 >> 256, 34, sub_db7e0c7e, stor12[arg3 << 240].field_16 >> 16, 0
        else:
            if stor12[arg3 << 240].field_0 == stor12[arg3 << 240].field_1 < 32:
                revert with 'NH{q', 34
            if not stor12[arg3 << 240].field_1:
                require ext_code.size(sub_07968db1Address)
                staticcall sub_07968db1Address.0x40a7bb10 with:
                        gas gas_remaining wei
                       args arg3 << 240, address(mem[290 len 20]), 160, 0, 256, 64, address(arg2), arg1, 34, sub_db7e0c7e, stor12[arg3 << 240].field_16 >> 16, 0
            else:
                if 31 >= stor12[arg3 << 240].field_1:
                    require ext_code.size(sub_07968db1Address)
                    staticcall sub_07968db1Address.0x40a7bb10 with:
                            gas gas_remaining wei
                           args arg3 << 240, stor12[arg3 << 240].field_0, 160, 0, 256, 64, address(arg2), arg1, 34, sub_db7e0c7e, stor12[arg3 << 240].field_16 >> 16, 0
                else:
                    mem[290] = stor12[arg3 << 240].field_0
                    idx = 290
                    s = 0
                    while stor12[arg3 << 240].field_1 + 258 > idx:
                        mem[idx + 32] = stor12[arg3 << 240][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_07968db1Address)
                    staticcall sub_07968db1Address.0x40a7bb10 with:
                            gas gas_remaining wei
                           args arg3 << 240, address(mem[290 len 20]), 160, 0, 256, 64, address(arg2), arg1 >> 256, 34, sub_db7e0c7e, stor12[arg3 << 240].field_16 >> 16, 0
    else:
        if stor12[arg3 << 240].field_0 == stor12[arg3 << 240].field_1 < 32:
            revert with 'NH{q', 34
        if stor12[arg3 << 240].field_0:
            if stor12[arg3 << 240].field_0 == stor12[arg3 << 240].field_1 < 32:
                revert with 'NH{q', 34
            if not stor12[arg3 << 240].field_1:
                require ext_code.size(sub_07968db1Address)
                staticcall sub_07968db1Address.0x40a7bb10 with:
                        gas gas_remaining wei
                       args arg3 << 240, address(mem[290 len 20]), 160, 0, 256, 64, address(arg2), arg1, 34, sub_db7e0c7e, stor12[arg3 << 240].field_0 >> 16, 0
            else:
                if 31 >= stor12[arg3 << 240].field_1:
                    require ext_code.size(sub_07968db1Address)
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
                    require ext_code.size(sub_07968db1Address)
                    staticcall sub_07968db1Address.0x40a7bb10 with:
                            gas gas_remaining wei
                           args arg3 << 240, address(mem[290 len 20]), 160, 0, 256, 64, address(arg2), arg1 >> 256, 34, sub_db7e0c7e, stor12[arg3 << 240].field_0 >> 16, 0
        else:
            if stor12[arg3 << 240].field_0 == stor12[arg3 << 240].field_1 < 32:
                revert with 'NH{q', 34
            if not stor12[arg3 << 240].field_1:
                require ext_code.size(sub_07968db1Address)
                staticcall sub_07968db1Address.0x40a7bb10 with:
                        gas gas_remaining wei
                       args arg3 << 240, address(mem[290 len 20]), 160, 0, 256, 64, address(arg2), arg1, 34, sub_db7e0c7e, stor12[arg3 << 240].field_0 >> 16, 0
            else:
                if 31 >= stor12[arg3 << 240].field_1:
                    require ext_code.size(sub_07968db1Address)
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
                    require ext_code.size(sub_07968db1Address)
                    staticcall sub_07968db1Address.0x40a7bb10 with:
                            gas gas_remaining wei
                           args arg3 << 240, address(mem[290 len 20]), 160, 0, 256, 64, address(arg2), arg1 >> 256, 34, sub_db7e0c7e, stor12[arg3 << 240].field_0 >> 16, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return ext_call.return_data[0], ext_call.return_data[32]
}

function lzReceive(uint16 arg1, bytes arg2, uint64 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
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
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307() or ceil32(ceil32(arg4.length)) + 98 < 97:
        revert with 'NH{q', 65
    mem[ceil32(ceil32(arg2.length)) + 97] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + 129 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg2.length)) + arg4.length + 129] = 0
    require msg.sender == sub_07968db1Address
    if stor12[arg1 << 240].field_0:
        if stor12[arg1 << 240].field_0 == stor12[arg1 << 240].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length != stor12[arg1 << 240].field_1:
            revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
        if stor12[arg1 << 240].field_0:
            if stor12[arg1 << 240].field_0 == stor12[arg1 << 240].field_1 < 32:
                revert with 'NH{q', 34
            if not stor12[arg1 << 240].field_0:
                mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98] = Mask(248, 8, stor12[arg1 << 240].field_0)
                if sha3(arg2[all]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len stor12[arg1 << 240].field_1]):
                    revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
                require arg4.length >= 64
                require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                require mem[ceil32(ceil32(arg2.length)) + 161] == mem[ceil32(ceil32(arg2.length)) + 161]
                if not mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]]:
                    revert with 0, 'ERC721: token already minted'
                stor10[mem[ceil32(ceil32(arg2.length)) + 161]] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = mem[ceil32(ceil32(arg2.length)) + 161]
                if mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
                    tokenOfOwnerByIndex[address(mem[ceil32(ceil32(arg2.length)) + 129])][stor3[address(mem[ceil32(ceil32(arg2.length)) + 129])]] = mem[ceil32(ceil32(arg2.length)) + 161]
                    stor8[mem[ceil32(ceil32(arg2.length)) + 161]] = balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor10[mem[ceil32(ceil32(arg2.length)) + 161]] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor10[mem[ceil32(ceil32(arg2.length)) + 161]]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[mem[ceil32(ceil32(arg2.length)) + 161]]
                    stor10[mem[ceil32(ceil32(arg2.length)) + 161]] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]++
                ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]] = mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                emit Transfer(0, mem[ceil32(ceil32(arg2.length)) + 141 len 20], mem[ceil32(ceil32(arg2.length)) + 161]);
                if ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20]) > 0:
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
            else:
                if stor12[arg1 << 240].field_0 != 1:
                    if sha3(arg2[all]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len -ceil32(ceil32(arg2.length)) + -ceil32(ceil32(arg4.length)) - 98]):
                        revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
                    require arg4.length >= 64
                    require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                    require mem[ceil32(ceil32(arg2.length)) + 161] == mem[ceil32(ceil32(arg2.length)) + 161]
                    if not mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]]:
                        revert with 0, 'ERC721: token already minted'
                    stor10[mem[ceil32(ceil32(arg2.length)) + 161]] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = mem[ceil32(ceil32(arg2.length)) + 161]
                    if mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
                        tokenOfOwnerByIndex[address(mem[ceil32(ceil32(arg2.length)) + 129])][stor3[address(mem[ceil32(ceil32(arg2.length)) + 129])]] = mem[ceil32(ceil32(arg2.length)) + 161]
                        stor8[mem[ceil32(ceil32(arg2.length)) + 161]] = balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor10[mem[ceil32(ceil32(arg2.length)) + 161]] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor10[mem[ceil32(ceil32(arg2.length)) + 161]]] = tokenByIndex[tokenByIndex.length]
                        stor10[stor9[stor9.length]] = stor10[mem[ceil32(ceil32(arg2.length)) + 161]]
                        stor10[mem[ceil32(ceil32(arg2.length)) + 161]] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]++
                    ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]] = mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                    emit Transfer(0, mem[ceil32(ceil32(arg2.length)) + 141 len 20], mem[ceil32(ceil32(arg2.length)) + 161]);
                    if ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20]) > 0:
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
                else:
                    idx = 0
                    s = 0
                    while idx < stor12[arg1 << 240].field_1:
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + idx + 98] = stor12[arg1 << 240][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if sha3(mem[128 len mem[96]]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len stor12[arg1 << 240].field_1]):
                        revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
                    require mem[ceil32(ceil32(arg2.length)) + 97] >= 64
                    _1160 = mem[ceil32(ceil32(arg2.length)) + 129]
                    require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                    _1454 = mem[ceil32(ceil32(arg2.length)) + 161]
                    require mem[ceil32(ceil32(arg2.length)) + 161] == mem[ceil32(ceil32(arg2.length)) + 161]
                    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98] = 0
                    if not address(_1160):
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[_1454]:
                        revert with 0, 'ERC721: token already minted'
                    stor10[_1454] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = _1454
                    if address(_1160):
                        tokenOfOwnerByIndex[address(_1160)][stor3[address(_1160)]] = _1454
                        stor8[_1454] = balanceOf[address(_1160)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor10[_1454] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor10[_1454]] = tokenByIndex[tokenByIndex.length]
                        stor10[stor9[stor9.length]] = stor10[_1454]
                        stor10[_1454] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(_1160)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(_1160)]++
                    ownerOf[_1454] = address(_1160)
                    emit Transfer(0, address(_1160), _1454);
                    if ext_code.size(address(_1160)) > 0:
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 134] = msg.sender
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 166] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 198] = _1454
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 230] = 128
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 262] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 294 len 0] = None
                        require ext_code.size(address(_1160))
                        call address(_1160).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, _1454, 128, 0
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
                revert with 'NH{q', 34
            if not stor12[arg1 << 240].field_0:
                mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98] = Mask(248, 8, stor12[arg1 << 240].field_0)
                if sha3(arg2[all]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len stor12[arg1 << 240].field_1]):
                    revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
                require arg4.length >= 64
                require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                require mem[ceil32(ceil32(arg2.length)) + 161] == mem[ceil32(ceil32(arg2.length)) + 161]
                if not mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]]:
                    revert with 0, 'ERC721: token already minted'
                stor10[mem[ceil32(ceil32(arg2.length)) + 161]] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = mem[ceil32(ceil32(arg2.length)) + 161]
                if mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
                    tokenOfOwnerByIndex[address(mem[ceil32(ceil32(arg2.length)) + 129])][stor3[address(mem[ceil32(ceil32(arg2.length)) + 129])]] = mem[ceil32(ceil32(arg2.length)) + 161]
                    stor8[mem[ceil32(ceil32(arg2.length)) + 161]] = balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor10[mem[ceil32(ceil32(arg2.length)) + 161]] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor10[mem[ceil32(ceil32(arg2.length)) + 161]]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[mem[ceil32(ceil32(arg2.length)) + 161]]
                    stor10[mem[ceil32(ceil32(arg2.length)) + 161]] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]++
                ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]] = mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                emit Transfer(0, mem[ceil32(ceil32(arg2.length)) + 141 len 20], mem[ceil32(ceil32(arg2.length)) + 161]);
                if ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20]) > 0:
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
            else:
                if stor12[arg1 << 240].field_0 != 1:
                    if sha3(arg2[all]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len -ceil32(ceil32(arg2.length)) + -ceil32(ceil32(arg4.length)) - 98]):
                        revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
                    require arg4.length >= 64
                    require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                    require mem[ceil32(ceil32(arg2.length)) + 161] == mem[ceil32(ceil32(arg2.length)) + 161]
                    if not mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]]:
                        revert with 0, 'ERC721: token already minted'
                    stor10[mem[ceil32(ceil32(arg2.length)) + 161]] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = mem[ceil32(ceil32(arg2.length)) + 161]
                    if mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
                        tokenOfOwnerByIndex[address(mem[ceil32(ceil32(arg2.length)) + 129])][stor3[address(mem[ceil32(ceil32(arg2.length)) + 129])]] = mem[ceil32(ceil32(arg2.length)) + 161]
                        stor8[mem[ceil32(ceil32(arg2.length)) + 161]] = balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor10[mem[ceil32(ceil32(arg2.length)) + 161]] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor10[mem[ceil32(ceil32(arg2.length)) + 161]]] = tokenByIndex[tokenByIndex.length]
                        stor10[stor9[stor9.length]] = stor10[mem[ceil32(ceil32(arg2.length)) + 161]]
                        stor10[mem[ceil32(ceil32(arg2.length)) + 161]] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]++
                    ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]] = mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                    emit Transfer(0, mem[ceil32(ceil32(arg2.length)) + 141 len 20], mem[ceil32(ceil32(arg2.length)) + 161]);
                    if ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20]) > 0:
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
                else:
                    idx = 0
                    s = 0
                    while idx < stor12[arg1 << 240].field_1:
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + idx + 98] = stor12[arg1 << 240][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if sha3(mem[128 len mem[96]]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len stor12[arg1 << 240].field_1]):
                        revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
                    require mem[ceil32(ceil32(arg2.length)) + 97] >= 64
                    _1165 = mem[ceil32(ceil32(arg2.length)) + 129]
                    require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                    _1455 = mem[ceil32(ceil32(arg2.length)) + 161]
                    require mem[ceil32(ceil32(arg2.length)) + 161] == mem[ceil32(ceil32(arg2.length)) + 161]
                    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98] = 0
                    if not address(_1165):
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[_1455]:
                        revert with 0, 'ERC721: token already minted'
                    stor10[_1455] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = _1455
                    if address(_1165):
                        tokenOfOwnerByIndex[address(_1165)][stor3[address(_1165)]] = _1455
                        stor8[_1455] = balanceOf[address(_1165)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor10[_1455] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor10[_1455]] = tokenByIndex[tokenByIndex.length]
                        stor10[stor9[stor9.length]] = stor10[_1455]
                        stor10[_1455] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(_1165)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(_1165)]++
                    ownerOf[_1455] = address(_1165)
                    emit Transfer(0, address(_1165), _1455);
                    if ext_code.size(address(_1165)) > 0:
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 134] = msg.sender
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 166] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 198] = _1455
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 230] = 128
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 262] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 294 len 0] = None
                        require ext_code.size(address(_1165))
                        call address(_1165).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, _1455, 128, 0
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
            revert with 'NH{q', 34
        if arg2.length != stor12[arg1 << 240].field_1:
            revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
        if stor12[arg1 << 240].field_0:
            if stor12[arg1 << 240].field_0 == stor12[arg1 << 240].field_1 < 32:
                revert with 'NH{q', 34
            if not stor12[arg1 << 240].field_0:
                mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98] = Mask(248, 8, stor12[arg1 << 240].field_0)
                if sha3(arg2[all]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len stor12[arg1 << 240].field_1]):
                    revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
                require arg4.length >= 64
                require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                require mem[ceil32(ceil32(arg2.length)) + 161] == mem[ceil32(ceil32(arg2.length)) + 161]
                if not mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]]:
                    revert with 0, 'ERC721: token already minted'
                stor10[mem[ceil32(ceil32(arg2.length)) + 161]] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = mem[ceil32(ceil32(arg2.length)) + 161]
                if mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
                    tokenOfOwnerByIndex[address(mem[ceil32(ceil32(arg2.length)) + 129])][stor3[address(mem[ceil32(ceil32(arg2.length)) + 129])]] = mem[ceil32(ceil32(arg2.length)) + 161]
                    stor8[mem[ceil32(ceil32(arg2.length)) + 161]] = balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor10[mem[ceil32(ceil32(arg2.length)) + 161]] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor10[mem[ceil32(ceil32(arg2.length)) + 161]]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[mem[ceil32(ceil32(arg2.length)) + 161]]
                    stor10[mem[ceil32(ceil32(arg2.length)) + 161]] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]++
                ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]] = mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                emit Transfer(0, mem[ceil32(ceil32(arg2.length)) + 141 len 20], mem[ceil32(ceil32(arg2.length)) + 161]);
                if ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20]) > 0:
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
            else:
                if stor12[arg1 << 240].field_0 != 1:
                    if sha3(arg2[all]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len -ceil32(ceil32(arg2.length)) + -ceil32(ceil32(arg4.length)) - 98]):
                        revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
                    require arg4.length >= 64
                    require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                    require mem[ceil32(ceil32(arg2.length)) + 161] == mem[ceil32(ceil32(arg2.length)) + 161]
                    if not mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]]:
                        revert with 0, 'ERC721: token already minted'
                    stor10[mem[ceil32(ceil32(arg2.length)) + 161]] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = mem[ceil32(ceil32(arg2.length)) + 161]
                    if mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
                        tokenOfOwnerByIndex[address(mem[ceil32(ceil32(arg2.length)) + 129])][stor3[address(mem[ceil32(ceil32(arg2.length)) + 129])]] = mem[ceil32(ceil32(arg2.length)) + 161]
                        stor8[mem[ceil32(ceil32(arg2.length)) + 161]] = balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor10[mem[ceil32(ceil32(arg2.length)) + 161]] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor10[mem[ceil32(ceil32(arg2.length)) + 161]]] = tokenByIndex[tokenByIndex.length]
                        stor10[stor9[stor9.length]] = stor10[mem[ceil32(ceil32(arg2.length)) + 161]]
                        stor10[mem[ceil32(ceil32(arg2.length)) + 161]] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]++
                    ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]] = mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                    emit Transfer(0, mem[ceil32(ceil32(arg2.length)) + 141 len 20], mem[ceil32(ceil32(arg2.length)) + 161]);
                    if ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20]) > 0:
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
                else:
                    idx = 0
                    s = 0
                    while idx < stor12[arg1 << 240].field_1:
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + idx + 98] = stor12[arg1 << 240][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if sha3(mem[128 len mem[96]]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len stor12[arg1 << 240].field_1]):
                        revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
                    require mem[ceil32(ceil32(arg2.length)) + 97] >= 64
                    _1170 = mem[ceil32(ceil32(arg2.length)) + 129]
                    require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                    _1456 = mem[ceil32(ceil32(arg2.length)) + 161]
                    require mem[ceil32(ceil32(arg2.length)) + 161] == mem[ceil32(ceil32(arg2.length)) + 161]
                    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98] = 0
                    if not address(_1170):
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[_1456]:
                        revert with 0, 'ERC721: token already minted'
                    stor10[_1456] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = _1456
                    if address(_1170):
                        tokenOfOwnerByIndex[address(_1170)][stor3[address(_1170)]] = _1456
                        stor8[_1456] = balanceOf[address(_1170)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor10[_1456] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor10[_1456]] = tokenByIndex[tokenByIndex.length]
                        stor10[stor9[stor9.length]] = stor10[_1456]
                        stor10[_1456] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(_1170)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(_1170)]++
                    ownerOf[_1456] = address(_1170)
                    emit Transfer(0, address(_1170), _1456);
                    if ext_code.size(address(_1170)) > 0:
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 134] = msg.sender
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 166] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 198] = _1456
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 230] = 128
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 262] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 294 len 0] = None
                        require ext_code.size(address(_1170))
                        call address(_1170).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, _1456, 128, 0
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
                revert with 'NH{q', 34
            if not stor12[arg1 << 240].field_0:
                mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98] = Mask(248, 8, stor12[arg1 << 240].field_0)
                if sha3(arg2[all]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len stor12[arg1 << 240].field_1]):
                    revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
                require arg4.length >= 64
                require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                require mem[ceil32(ceil32(arg2.length)) + 161] == mem[ceil32(ceil32(arg2.length)) + 161]
                if not mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]]:
                    revert with 0, 'ERC721: token already minted'
                stor10[mem[ceil32(ceil32(arg2.length)) + 161]] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = mem[ceil32(ceil32(arg2.length)) + 161]
                if mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
                    tokenOfOwnerByIndex[address(mem[ceil32(ceil32(arg2.length)) + 129])][stor3[address(mem[ceil32(ceil32(arg2.length)) + 129])]] = mem[ceil32(ceil32(arg2.length)) + 161]
                    stor8[mem[ceil32(ceil32(arg2.length)) + 161]] = balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor10[mem[ceil32(ceil32(arg2.length)) + 161]] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor10[mem[ceil32(ceil32(arg2.length)) + 161]]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[mem[ceil32(ceil32(arg2.length)) + 161]]
                    stor10[mem[ceil32(ceil32(arg2.length)) + 161]] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]++
                ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]] = mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                emit Transfer(0, mem[ceil32(ceil32(arg2.length)) + 141 len 20], mem[ceil32(ceil32(arg2.length)) + 161]);
                if ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20]) > 0:
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
            else:
                if stor12[arg1 << 240].field_0 != 1:
                    if sha3(arg2[all]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len -ceil32(ceil32(arg2.length)) + -ceil32(ceil32(arg4.length)) - 98]):
                        revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
                    require arg4.length >= 64
                    require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                    require mem[ceil32(ceil32(arg2.length)) + 161] == mem[ceil32(ceil32(arg2.length)) + 161]
                    if not mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]]:
                        revert with 0, 'ERC721: token already minted'
                    stor10[mem[ceil32(ceil32(arg2.length)) + 161]] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = mem[ceil32(ceil32(arg2.length)) + 161]
                    if mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
                        tokenOfOwnerByIndex[address(mem[ceil32(ceil32(arg2.length)) + 129])][stor3[address(mem[ceil32(ceil32(arg2.length)) + 129])]] = mem[ceil32(ceil32(arg2.length)) + 161]
                        stor8[mem[ceil32(ceil32(arg2.length)) + 161]] = balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor10[mem[ceil32(ceil32(arg2.length)) + 161]] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor10[mem[ceil32(ceil32(arg2.length)) + 161]]] = tokenByIndex[tokenByIndex.length]
                        stor10[stor9[stor9.length]] = stor10[mem[ceil32(ceil32(arg2.length)) + 161]]
                        stor10[mem[ceil32(ceil32(arg2.length)) + 161]] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]++
                    ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]] = mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                    emit Transfer(0, mem[ceil32(ceil32(arg2.length)) + 141 len 20], mem[ceil32(ceil32(arg2.length)) + 161]);
                    if ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20]) > 0:
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
                else:
                    idx = 0
                    s = 0
                    while idx < stor12[arg1 << 240].field_1:
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + idx + 98] = stor12[arg1 << 240][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if sha3(mem[128 len mem[96]]) != sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len stor12[arg1 << 240].field_1]):
                        revert with 0, 'Invalid remote sender address. owner should call setRemote() to enable remote contract'
                    require mem[ceil32(ceil32(arg2.length)) + 97] >= 64
                    _1175 = mem[ceil32(ceil32(arg2.length)) + 129]
                    require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
                    _1457 = mem[ceil32(ceil32(arg2.length)) + 161]
                    require mem[ceil32(ceil32(arg2.length)) + 161] == mem[ceil32(ceil32(arg2.length)) + 161]
                    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98] = 0
                    if not address(_1175):
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[_1457]:
                        revert with 0, 'ERC721: token already minted'
                    stor10[_1457] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = _1457
                    if address(_1175):
                        tokenOfOwnerByIndex[address(_1175)][stor3[address(_1175)]] = _1457
                        stor8[_1457] = balanceOf[address(_1175)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor10[_1457] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor10[_1457]] = tokenByIndex[tokenByIndex.length]
                        stor10[stor9[stor9.length]] = stor10[_1457]
                        stor10[_1457] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(_1175)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(_1175)]++
                    ownerOf[_1457] = address(_1175)
                    emit Transfer(0, address(_1175), _1457);
                    if ext_code.size(address(_1175)) > 0:
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 134] = msg.sender
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 166] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 198] = _1457
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 230] = 128
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 262] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 294 len 0] = None
                        require ext_code.size(address(_1175))
                        call address(_1175).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, _1457, 128, 0
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
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[96] = stor15.length.field_1
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor15.length.field_1:
                if stor15.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor15.length.field_1) + 128] = 1
                    mem[ceil32(stor15.length.field_1) + 160] = '0'
                    mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 0
                    if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _7126 = mem[ceil32(stor15.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                    if ceil32(_7126) > _7126:
                                        mem[_7126 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7126) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _7230 = mem[ceil32(stor15.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                if ceil32(_7230) > _7230:
                                    mem[_7230 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7230) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _7131 = mem[ceil32(stor15.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                    if ceil32(_7131) > _7131:
                                        mem[_7131 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7131) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _7233 = mem[ceil32(stor15.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                if ceil32(_7233) > _7233:
                                    mem[_7233 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7233) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
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
                mem[ceil32(stor15.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                    if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18710 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18710) > _18710:
                                            mem[_18710 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18710) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _18903 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18903) > _18903:
                                        mem[_18903 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18903) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18904 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18904) > _18904:
                                            mem[_18904 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18904) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _19096 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19096) > _19096:
                                        mem[_19096 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19096) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18715 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18715) > _18715:
                                            mem[_18715 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18715) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _18908 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18908) > _18908:
                                        mem[_18908 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18908) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18909 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18909) > _18909:
                                            mem[_18909 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18909) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _19099 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19099) > _19099:
                                        mem[_19099 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19099) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                else:
                    mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                    if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18720 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18720) > _18720:
                                            mem[_18720 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18720) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _18913 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18913) > _18913:
                                        mem[_18913 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18913) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18914 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18914) > _18914:
                                            mem[_18914 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18914) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _19102 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19102) > _19102:
                                        mem[_19102 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19102) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18725 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18725) > _18725:
                                            mem[_18725 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18725) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _18918 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18918) > _18918:
                                        mem[_18918 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18918) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18919 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18919) > _18919:
                                            mem[_18919 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18919) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _19105 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19105) > _19105:
                                        mem[_19105 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19105) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
            if 31 >= stor15.length.field_1:
                mem[128] = 256 * stor15.length.field_8
                if stor15.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor15.length.field_1) + 128] = 1
                    mem[ceil32(stor15.length.field_1) + 160] = '0'
                    mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 0
                    if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _7140 = mem[ceil32(stor15.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                    if ceil32(_7140) > _7140:
                                        mem[_7140 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7140) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _7239 = mem[ceil32(stor15.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                if ceil32(_7239) > _7239:
                                    mem[_7239 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7239) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _7145 = mem[ceil32(stor15.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                    if ceil32(_7145) > _7145:
                                        mem[_7145 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7145) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _7242 = mem[ceil32(stor15.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                if ceil32(_7242) > _7242:
                                    mem[_7242 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7242) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
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
                mem[ceil32(stor15.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                    if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18738 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18738) > _18738:
                                            mem[_18738 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18738) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _18931 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18931) > _18931:
                                        mem[_18931 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18931) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18932 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18932) > _18932:
                                            mem[_18932 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18932) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _19108 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19108) > _19108:
                                        mem[_19108 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19108) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18743 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18743) > _18743:
                                            mem[_18743 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18743) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _18936 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18936) > _18936:
                                        mem[_18936 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18936) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18937 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18937) > _18937:
                                            mem[_18937 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18937) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _19111 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19111) > _19111:
                                        mem[_19111 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19111) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                else:
                    mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                    if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18748 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18748) > _18748:
                                            mem[_18748 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18748) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _18941 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18941) > _18941:
                                        mem[_18941 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18941) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18942 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18942) > _18942:
                                            mem[_18942 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18942) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _19114 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19114) > _19114:
                                        mem[_19114 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19114) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18753 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18753) > _18753:
                                            mem[_18753 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18753) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _18946 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18946) > _18946:
                                        mem[_18946 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18946) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18947 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18947) > _18947:
                                            mem[_18947 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18947) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _19117 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19117) > _19117:
                                        mem[_19117 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19117) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
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
                mem[ceil32(stor15.length.field_1) + 128] = 1
                mem[ceil32(stor15.length.field_1) + 160] = '0'
                mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 0
                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            var86001 = ceil32(mem[ceil32(stor15.length.field_1) + 192])
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                        if bool(stor14.length) == 1:
                            idx = 0
                            s = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                        mem[64] = 0
                        _13306 = mem[ceil32(stor15.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        var87001 = ceil32(_13306)
                        if ceil32(_13306) > _13306:
                            mem[_13306 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_13306) + -mem[64] + 64
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        var87001 = ceil32(mem[ceil32(stor15.length.field_1) + 192])
                        if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                    if bool(stor14.length) == 1:
                        idx = 0
                        s = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                    mem[64] = 0
                    _13410 = mem[ceil32(stor15.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    var88001 = ceil32(_13410)
                    if ceil32(_13410) > _13410:
                        mem[_13410 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_13410) + -mem[64] + 64
                if bool(stor14.length):
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        var87001 = ceil32(mem[ceil32(stor15.length.field_1) + 192])
                        if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                    if bool(stor14.length) == 1:
                        idx = 0
                        s = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                    mem[64] = 0
                    _13311 = mem[ceil32(stor15.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    var88001 = ceil32(_13311)
                    if ceil32(_13311) > _13311:
                        mem[_13311 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_13311) + -mem[64] + 64
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    var88001 = ceil32(mem[ceil32(stor15.length.field_1) + 192])
                else:
                    if bool(stor14.length) != 1:
                        mem[64] = 0
                        _13413 = mem[ceil32(stor15.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        if ceil32(_13413) > _13413:
                            mem[_13413 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_13413) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor14.length.field_1:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
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
            mem[ceil32(stor15.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23478 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23478) > _23478:
                                        mem[_23478 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23478) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23687 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23687) > _23687:
                                    mem[_23687 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23687) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23688 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23688) > _23688:
                                        mem[_23688 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23688) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23880 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23880) > _23880:
                                    mem[_23880 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23880) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                else:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23483 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23483) > _23483:
                                        mem[_23483 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23483) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23692 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23692) > _23692:
                                    mem[_23692 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23692) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23693 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23693) > _23693:
                                        mem[_23693 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23693) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23883 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23883) > _23883:
                                    mem[_23883 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23883) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
            else:
                mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23488 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23488) > _23488:
                                        mem[_23488 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23488) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23697 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23697) > _23697:
                                    mem[_23697 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23697) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23698 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23698) > _23698:
                                        mem[_23698 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23698) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23886 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23886) > _23886:
                                    mem[_23886 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23886) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                else:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23493 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23493) > _23493:
                                        mem[_23493 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23493) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23702 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23702) > _23702:
                                    mem[_23702 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23702) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23703 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23703) > _23703:
                                        mem[_23703 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23703) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23889 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23889) > _23889:
                                    mem[_23889 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23889) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
        else:
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor15.length.field_1:
                if stor15.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor15.length.field_1) + 128] = 1
                    mem[ceil32(stor15.length.field_1) + 160] = '0'
                    mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 0
                    if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _7152 = mem[ceil32(stor15.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                    if ceil32(_7152) > _7152:
                                        mem[_7152 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7152) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _7247 = mem[ceil32(stor15.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                if ceil32(_7247) > _7247:
                                    mem[_7247 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7247) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _7157 = mem[ceil32(stor15.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                    if ceil32(_7157) > _7157:
                                        mem[_7157 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7157) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _7250 = mem[ceil32(stor15.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                if ceil32(_7250) > _7250:
                                    mem[_7250 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7250) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
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
                mem[ceil32(stor15.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                    if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18758 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18758) > _18758:
                                            mem[_18758 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18758) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _18951 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18951) > _18951:
                                        mem[_18951 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18951) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18952 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18952) > _18952:
                                            mem[_18952 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18952) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _19120 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19120) > _19120:
                                        mem[_19120 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19120) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18763 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18763) > _18763:
                                            mem[_18763 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18763) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _18956 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18956) > _18956:
                                        mem[_18956 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18956) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18957 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18957) > _18957:
                                            mem[_18957 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18957) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _19123 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19123) > _19123:
                                        mem[_19123 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19123) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                else:
                    mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                    if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18768 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18768) > _18768:
                                            mem[_18768 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18768) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _18961 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18961) > _18961:
                                        mem[_18961 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18961) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18962 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18962) > _18962:
                                            mem[_18962 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18962) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _19126 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19126) > _19126:
                                        mem[_19126 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19126) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18773 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18773) > _18773:
                                            mem[_18773 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18773) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _18966 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18966) > _18966:
                                        mem[_18966 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18966) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18967 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18967) > _18967:
                                            mem[_18967 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18967) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _19129 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19129) > _19129:
                                        mem[_19129 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19129) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
            else:
                if 31 >= stor15.length.field_1:
                    mem[128] = 256 * stor15.length.field_8
                    if stor15.length.field_1 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(stor15.length.field_1) + 128] = 1
                        mem[ceil32(stor15.length.field_1) + 160] = '0'
                        mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 0
                        if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _7166 = mem[ceil32(stor15.length.field_1) + 192]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                        if ceil32(_7166) > _7166:
                                            mem[_7166 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_7166) + -mem[64] + 64
                                    idx = 0
                                    s = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _7256 = mem[ceil32(stor15.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                    if ceil32(_7256) > _7256:
                                        mem[_7256 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7256) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _7171 = mem[ceil32(stor15.length.field_1) + 192]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                        if ceil32(_7171) > _7171:
                                            mem[_7171 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_7171) + -mem[64] + 64
                                    idx = 0
                                    s = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _7259 = mem[ceil32(stor15.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                    if ceil32(_7259) > _7259:
                                        mem[_7259 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7259) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
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
                    mem[ceil32(stor15.length.field_1) + 128] = s
                    if not s:
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                        if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                if bool(stor14.length):
                                    if bool(stor14.length) == stor14.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor14.length):
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                    else:
                                        if bool(stor14.length) != 1:
                                            mem[64] = 0
                                            _18786 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18786) > _18786:
                                                mem[_18786 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18786) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor14.length.field_1:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18979 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18979) > _18979:
                                            mem[_18979 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18979) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                                if bool(stor14.length):
                                    if bool(stor14.length) == stor14.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor14.length):
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                    else:
                                        if bool(stor14.length) != 1:
                                            mem[64] = 0
                                            _18980 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18980) > _18980:
                                                mem[_18980 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18980) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor14.length.field_1:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _19132 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19132) > _19132:
                                            mem[_19132 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19132) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                if bool(stor14.length):
                                    if bool(stor14.length) == stor14.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor14.length):
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                    else:
                                        if bool(stor14.length) != 1:
                                            mem[64] = 0
                                            _18791 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18791) > _18791:
                                                mem[_18791 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18791) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor14.length.field_1:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18984 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18984) > _18984:
                                            mem[_18984 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18984) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                                if bool(stor14.length):
                                    if bool(stor14.length) == stor14.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor14.length):
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                    else:
                                        if bool(stor14.length) != 1:
                                            mem[64] = 0
                                            _18985 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18985) > _18985:
                                                mem[_18985 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18985) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor14.length.field_1:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _19135 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19135) > _19135:
                                            mem[_19135 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19135) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                    else:
                        mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                        if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                if bool(stor14.length):
                                    if bool(stor14.length) == stor14.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor14.length):
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                    else:
                                        if bool(stor14.length) != 1:
                                            mem[64] = 0
                                            _18796 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18796) > _18796:
                                                mem[_18796 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18796) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor14.length.field_1:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18989 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18989) > _18989:
                                            mem[_18989 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18989) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                                if bool(stor14.length):
                                    if bool(stor14.length) == stor14.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor14.length):
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                    else:
                                        if bool(stor14.length) != 1:
                                            mem[64] = 0
                                            _18990 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18990) > _18990:
                                                mem[_18990 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18990) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor14.length.field_1:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _19138 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19138) > _19138:
                                            mem[_19138 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19138) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                                if bool(stor14.length):
                                    if bool(stor14.length) == stor14.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor14.length):
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                    else:
                                        if bool(stor14.length) != 1:
                                            mem[64] = 0
                                            _18801 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18801) > _18801:
                                                mem[_18801 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18801) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor14.length.field_1:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _18994 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18994) > _18994:
                                            mem[_18994 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18994) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                                if bool(stor14.length):
                                    if bool(stor14.length) == stor14.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor14.length):
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                    else:
                                        if bool(stor14.length) != 1:
                                            mem[64] = 0
                                            _18995 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18995) > _18995:
                                                mem[_18995 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18995) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor14.length.field_1:
                                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _19141 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19141) > _19141:
                                            mem[_19141 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19141) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
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
                    mem[ceil32(stor15.length.field_1) + 128] = 1
                    mem[ceil32(stor15.length.field_1) + 160] = '0'
                    mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 0
                    if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                var87001 = ceil32(mem[ceil32(stor15.length.field_1) + 192])
                                if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                            if bool(stor14.length) == 1:
                                idx = 0
                                s = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                            mem[64] = 0
                            _13334 = mem[ceil32(stor15.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            var88001 = ceil32(_13334)
                            if ceil32(_13334) > _13334:
                                mem[_13334 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_13334) + -mem[64] + 64
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            var88001 = ceil32(mem[ceil32(stor15.length.field_1) + 192])
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                        if bool(stor14.length) == 1:
                            idx = 0
                            s = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                        mem[64] = 0
                        _13418 = mem[ceil32(stor15.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        var89001 = ceil32(_13418)
                        if ceil32(_13418) > _13418:
                            mem[_13418 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_13418) + -mem[64] + 64
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            var88001 = ceil32(mem[ceil32(stor15.length.field_1) + 192])
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                        if bool(stor14.length) == 1:
                            idx = 0
                            s = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                        mem[64] = 0
                        _13339 = mem[ceil32(stor15.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        var89001 = ceil32(_13339)
                        if ceil32(_13339) > _13339:
                            mem[_13339 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_13339) + -mem[64] + 64
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        var89001 = ceil32(mem[ceil32(stor15.length.field_1) + 192])
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _13421 = mem[ceil32(stor15.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(_13421) > _13421:
                                mem[_13421 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_13421) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
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
                mem[ceil32(stor15.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                    if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _23530 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23530) > _23530:
                                            mem[_23530 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23530) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23739 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23739) > _23739:
                                        mem[_23739 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23739) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _23740 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23740) > _23740:
                                            mem[_23740 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23740) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23892 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23892) > _23892:
                                        mem[_23892 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23892) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _23535 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23535) > _23535:
                                            mem[_23535 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23535) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23744 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23744) > _23744:
                                        mem[_23744 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23744) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _23745 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23745) > _23745:
                                            mem[_23745 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23745) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23895 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23895) > _23895:
                                        mem[_23895 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23895) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                else:
                    mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                    if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _23540 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23540) > _23540:
                                            mem[_23540 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23540) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23749 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23749) > _23749:
                                        mem[_23749 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23749) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _23750 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23750) > _23750:
                                            mem[_23750 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23750) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23898 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23898) > _23898:
                                        mem[_23898 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23898) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _23545 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23545) > _23545:
                                            mem[_23545 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23545) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23754 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23754) > _23754:
                                        mem[_23754 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23754) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                            if bool(stor14.length):
                                if bool(stor14.length) == stor14.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor14.length):
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                                else:
                                    if bool(stor14.length) != 1:
                                        mem[64] = 0
                                        _23755 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23755) > _23755:
                                            mem[_23755 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23755) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor14.length.field_1:
                                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23901 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23901) > _23901:
                                        mem[_23901 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23901) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor15.length.field_1
    if not bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor15.length.field_1:
            if stor15.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor15.length.field_1) + 128] = 1
                mem[ceil32(stor15.length.field_1) + 160] = '0'
                mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 0
                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _7204 = mem[ceil32(stor15.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                if ceil32(_7204) > _7204:
                                    mem[_7204 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7204) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _7281 = mem[ceil32(stor15.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(_7281) > _7281:
                                mem[_7281 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7281) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _7209 = mem[ceil32(stor15.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                                if ceil32(_7209) > _7209:
                                    mem[_7209 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7209) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _7284 = mem[ceil32(stor15.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(_7284) > _7284:
                                mem[_7284 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7284) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
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
            mem[ceil32(stor15.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _18854 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18854) > _18854:
                                        mem[_18854 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18854) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _19047 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19047) > _19047:
                                    mem[_19047 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19047) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _19048 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19048) > _19048:
                                        mem[_19048 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19048) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _19168 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19168) > _19168:
                                    mem[_19168 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19168) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                else:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _18859 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18859) > _18859:
                                        mem[_18859 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18859) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _19052 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19052) > _19052:
                                    mem[_19052 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19052) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _19053 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19053) > _19053:
                                        mem[_19053 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19053) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _19171 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19171) > _19171:
                                    mem[_19171 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19171) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
            else:
                mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _18864 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18864) > _18864:
                                        mem[_18864 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18864) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _19057 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19057) > _19057:
                                    mem[_19057 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19057) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _19058 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19058) > _19058:
                                        mem[_19058 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19058) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _19174 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19174) > _19174:
                                    mem[_19174 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19174) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                else:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _18869 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18869) > _18869:
                                        mem[_18869 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18869) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _19062 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19062) > _19062:
                                    mem[_19062 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19062) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _19063 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19063) > _19063:
                                        mem[_19063 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19063) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _19177 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19177) > _19177:
                                    mem[_19177 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19177) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
        if 31 < stor15.length.field_1:
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
                mem[ceil32(stor15.length.field_1) + 128] = 1
                mem[ceil32(stor15.length.field_1) + 160] = '0'
                mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 0
                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            var88001 = ceil32(mem[ceil32(stor15.length.field_1) + 192])
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                        if bool(stor14.length) == 1:
                            idx = 0
                            s = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                        mem[64] = 0
                        _13390 = mem[ceil32(stor15.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        var89001 = ceil32(_13390)
                        if ceil32(_13390) > _13390:
                            mem[_13390 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_13390) + -mem[64] + 64
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        var89001 = ceil32(mem[ceil32(stor15.length.field_1) + 192])
                        if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                    if bool(stor14.length) == 1:
                        idx = 0
                        s = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                    mem[64] = 0
                    _13434 = mem[ceil32(stor15.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    var90001 = ceil32(_13434)
                    if ceil32(_13434) > _13434:
                        mem[_13434 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_13434) + -mem[64] + 64
                if bool(stor14.length):
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        var89001 = ceil32(mem[ceil32(stor15.length.field_1) + 192])
                        if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                    if bool(stor14.length) == 1:
                        idx = 0
                        s = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                    mem[64] = 0
                    _13395 = mem[ceil32(stor15.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    var90001 = ceil32(_13395)
                    if ceil32(_13395) > _13395:
                        mem[_13395 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_13395) + -mem[64] + 64
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    var90001 = ceil32(mem[ceil32(stor15.length.field_1) + 192])
                else:
                    if bool(stor14.length) != 1:
                        mem[64] = 0
                        _13437 = mem[ceil32(stor15.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        if ceil32(_13437) > _13437:
                            mem[_13437 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_13437) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor14.length.field_1:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
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
            mem[ceil32(stor15.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23634 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23634) > _23634:
                                        mem[_23634 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23634) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23843 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23843) > _23843:
                                    mem[_23843 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23843) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23844 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23844) > _23844:
                                        mem[_23844 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23844) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23916 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23916) > _23916:
                                    mem[_23916 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23916) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                else:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23639 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23639) > _23639:
                                        mem[_23639 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23639) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23848 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23848) > _23848:
                                    mem[_23848 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23848) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23849 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23849) > _23849:
                                        mem[_23849 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23849) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23919 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23919) > _23919:
                                    mem[_23919 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23919) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
            else:
                mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
                if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23644 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23644) > _23644:
                                        mem[_23644 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23644) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23853 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23853) > _23853:
                                    mem[_23853 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23853) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23854 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23854) > _23854:
                                        mem[_23854 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23854) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23922 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23922) > _23922:
                                    mem[_23922 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23922) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                else:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23649 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23649) > _23649:
                                        mem[_23649 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23649) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23858 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23858) > _23858:
                                    mem[_23858 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23858) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                        if bool(stor14.length):
                            if bool(stor14.length) == stor14.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor14.length):
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            else:
                                if bool(stor14.length) != 1:
                                    mem[64] = 0
                                    _23859 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23859) > _23859:
                                        mem[_23859 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23859) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor14.length.field_1:
                                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23925 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23925) > _23925:
                                    mem[_23925 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23925) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
            return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
        mem[128] = 256 * stor15.length.field_8
        if stor15.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor15.length.field_1) + 128] = 1
            mem[ceil32(stor15.length.field_1) + 160] = '0'
            mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 0
            if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                if bool(stor14.length):
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _7218 = mem[ceil32(stor15.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(_7218) > _7218:
                                mem[_7218 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7218) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                else:
                    if bool(stor14.length) != 1:
                        mem[64] = 0
                        _7290 = mem[ceil32(stor15.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        if ceil32(_7290) > _7290:
                            mem[_7290 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7290) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor14.length.field_1:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            else:
                if bool(stor14.length):
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _7223 = mem[ceil32(stor15.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(_7223) > _7223:
                                mem[_7223 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7223) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                else:
                    if bool(stor14.length) != 1:
                        mem[64] = 0
                        _7293 = mem[ceil32(stor15.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        if ceil32(_7293) > _7293:
                            mem[_7293 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7293) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor14.length.field_1:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
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
        mem[ceil32(stor15.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
            if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                _12548 = mem[ceil32(stor15.length.field_1) + 128]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _18882 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_18882) > _18882:
                                mem[_18882 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_18882) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12548 + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12548 + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12548 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12548 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12548 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12548 + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor14.length) != 1:
                        mem[64] = 0
                        _19075 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19075) > _19075:
                            mem[_19075 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19075) + -mem[64] + 64
                else:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _19076 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19076) > _19076:
                                mem[_19076 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19076) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12548 + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12548 + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12548 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12548 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12548 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12548 + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor14.length) != 1:
                        mem[64] = 0
                        _19180 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19180) > _19180:
                            mem[_19180 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19180) + -mem[64] + 64
                ('eq', ('type', 1, ('stor', ('length', ('name', 'stor14', 14)))), 1)
                idx = 0
                t = 0
                while idx < stor14.length.field_1:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12548 + stor14.length.field_1 + 192] = 32
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12548 + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12548 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12548 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12548 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12548 + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
            _12684 = mem[ceil32(stor15.length.field_1) + 128]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                if bool(stor14.length):
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor14.length) != 1:
                        mem[64] = 0
                        _18887 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_18887) > _18887:
                            mem[_18887 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18887) + -mem[64] + 64
                    idx = 0
                    t = 0
                    while idx < stor14.length.field_1:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12684 + stor14.length.field_1 + 192] = 32
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12684 + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12684 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12684 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12684 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12684 + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                if bool(stor14.length) != 1:
                    mem[64] = 0
                    _19080 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19080) > _19080:
                        mem[_19080 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19080) + -mem[64] + 64
            else:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                if bool(stor14.length):
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor14.length) != 1:
                        mem[64] = 0
                        _19081 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19081) > _19081:
                            mem[_19081 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19081) + -mem[64] + 64
                    idx = 0
                    t = 0
                    while idx < stor14.length.field_1:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12684 + stor14.length.field_1 + 192] = 32
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12684 + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12684 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12684 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12684 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12684 + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                if bool(stor14.length) != 1:
                    mem[64] = 0
                    _19183 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19183) > _19183:
                        mem[_19183 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19183) + -mem[64] + 64
            ('eq', ('type', 1, ('stor', ('length', ('name', 'stor14', 14)))), 1)
            idx = 0
            t = 0
            while idx < stor14.length.field_1:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12684 + stor14.length.field_1 + 192] = 32
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12684 + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12684 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12684 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12684 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12684 + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
        mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
        if ceil32(stor15.length.field_1) <= stor15.length.field_1:
            _12549 = mem[ceil32(stor15.length.field_1) + 128]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                if bool(stor14.length):
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor14.length) != 1:
                        mem[64] = 0
                        _18892 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_18892) > _18892:
                            mem[_18892 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18892) + -mem[64] + 64
                    idx = 0
                    t = 0
                    while idx < stor14.length.field_1:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12549 + stor14.length.field_1 + 192] = 32
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12549 + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12549 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12549 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12549 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12549 + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                if bool(stor14.length) != 1:
                    mem[64] = 0
                    _19085 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19085) > _19085:
                        mem[_19085 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19085) + -mem[64] + 64
            else:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                if bool(stor14.length):
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor14.length) != 1:
                        mem[64] = 0
                        _19086 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19086) > _19086:
                            mem[_19086 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19086) + -mem[64] + 64
                    idx = 0
                    t = 0
                    while idx < stor14.length.field_1:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12549 + stor14.length.field_1 + 192] = 32
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12549 + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12549 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12549 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12549 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12549 + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                if bool(stor14.length) != 1:
                    mem[64] = 0
                    _19186 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19186) > _19186:
                        mem[_19186 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19186) + -mem[64] + 64
            ('eq', ('type', 1, ('stor', ('length', ('name', 'stor14', 14)))), 1)
            idx = 0
            t = 0
            while idx < stor14.length.field_1:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12549 + stor14.length.field_1 + 192] = 32
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12549 + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12549 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12549 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12549 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12549 + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
        _12685 = mem[ceil32(stor15.length.field_1) + 128]
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
            if bool(stor14.length):
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                if bool(stor14.length) != 1:
                    mem[64] = 0
                    _18897 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_18897) > _18897:
                        mem[_18897 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18897) + -mem[64] + 64
                idx = 0
                t = 0
                while idx < stor14.length.field_1:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12685 + stor14.length.field_1 + 192] = 32
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12685 + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12685 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12685 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12685 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
            if bool(stor14.length) != 1:
                mem[64] = 0
                _19090 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                if ceil32(_19090) > _19090:
                    mem[_19090 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19090) + -mem[64] + 64
        else:
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
            if bool(stor14.length):
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                if bool(stor14.length) != 1:
                    mem[64] = 0
                    _19091 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19091) > _19091:
                        mem[_19091 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19091) + -mem[64] + 64
                idx = 0
                t = 0
                while idx < stor14.length.field_1:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12685 + stor14.length.field_1 + 192] = 32
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12685 + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12685 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12685 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12685 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
            if bool(stor14.length) != 1:
                mem[64] = 0
                _19189 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                if ceil32(_19189) > _19189:
                    mem[_19189 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19189) + -mem[64] + 64
        ('eq', ('type', 1, ('stor', ('length', ('name', 'stor14', 14)))), 1)
        idx = 0
        t = 0
        while idx < stor14.length.field_1:
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12685 + stor14.length.field_1 + 192] = 32
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12685 + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12685 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12685 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12685 + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 'NH{q', 34
    if not stor15.length.field_1:
        if stor15.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor15.length.field_1) + 128] = 1
            mem[ceil32(stor15.length.field_1) + 160] = '0'
            mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 0
            if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                if bool(stor14.length):
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _7178 = mem[ceil32(stor15.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(_7178) > _7178:
                                mem[_7178 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7178) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                else:
                    if bool(stor14.length) != 1:
                        mem[64] = 0
                        _7264 = mem[ceil32(stor15.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        if ceil32(_7264) > _7264:
                            mem[_7264 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7264) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor14.length.field_1:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            else:
                if bool(stor14.length):
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _7183 = mem[ceil32(stor15.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                            if ceil32(_7183) > _7183:
                                mem[_7183 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7183) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                else:
                    if bool(stor14.length) != 1:
                        mem[64] = 0
                        _7267 = mem[ceil32(stor15.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        if ceil32(_7267) > _7267:
                            mem[_7267 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7267) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor14.length.field_1:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
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
        mem[ceil32(stor15.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
            if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _18806 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_18806) > _18806:
                                    mem[_18806 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_18806) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _18999 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_18999) > _18999:
                                mem[_18999 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_18999) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                else:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _19000 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19000) > _19000:
                                    mem[_19000 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19000) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _19144 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19144) > _19144:
                                mem[_19144 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19144) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
            else:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _18811 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_18811) > _18811:
                                    mem[_18811 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_18811) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _19004 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19004) > _19004:
                                mem[_19004 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19004) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                else:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _19005 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19005) > _19005:
                                    mem[_19005 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19005) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _19147 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19147) > _19147:
                                mem[_19147 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19147) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
        else:
            mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
            if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _18816 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_18816) > _18816:
                                    mem[_18816 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_18816) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _19009 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19009) > _19009:
                                mem[_19009 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19009) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                else:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _19010 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19010) > _19010:
                                    mem[_19010 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19010) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _19150 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19150) > _19150:
                                mem[_19150 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19150) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
            else:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _18821 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_18821) > _18821:
                                    mem[_18821 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_18821) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _19014 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19014) > _19014:
                                mem[_19014 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19014) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                else:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _19015 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19015) > _19015:
                                    mem[_19015 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19015) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _19153 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19153) > _19153:
                                mem[_19153 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19153) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
    if 31 < stor15.length.field_1:
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
            mem[ceil32(stor15.length.field_1) + 128] = 1
            mem[ceil32(stor15.length.field_1) + 160] = '0'
            mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 0
            if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                if bool(stor14.length):
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        var87001 = ceil32(mem[ceil32(stor15.length.field_1) + 192])
                        if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                    if bool(stor14.length) == 1:
                        idx = 0
                        s = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                    mem[64] = 0
                    _13362 = mem[ceil32(stor15.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    var88001 = ceil32(_13362)
                    if ceil32(_13362) > _13362:
                        mem[_13362 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_13362) + -mem[64] + 64
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    var88001 = ceil32(mem[ceil32(stor15.length.field_1) + 192])
                    if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                if bool(stor14.length) == 1:
                    idx = 0
                    s = 0
                    while idx < stor14.length.field_1:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                mem[64] = 0
                _13426 = mem[ceil32(stor15.length.field_1) + 192]
                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                var89001 = ceil32(_13426)
                if ceil32(_13426) > _13426:
                    mem[_13426 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_13426) + -mem[64] + 64
            if bool(stor14.length):
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    var88001 = ceil32(mem[ceil32(stor15.length.field_1) + 192])
                    if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                if bool(stor14.length) == 1:
                    idx = 0
                    s = 0
                    while idx < stor14.length.field_1:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
                mem[64] = 0
                _13367 = mem[ceil32(stor15.length.field_1) + 192]
                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                var89001 = ceil32(_13367)
                if ceil32(_13367) > _13367:
                    mem[_13367 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_13367) + -mem[64] + 64
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                var89001 = ceil32(mem[ceil32(stor15.length.field_1) + 192])
            else:
                if bool(stor14.length) != 1:
                    mem[64] = 0
                    _13429 = mem[ceil32(stor15.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    if ceil32(_13429) > _13429:
                        mem[_13429 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_13429) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor14.length.field_1:
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
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
        mem[ceil32(stor15.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
            if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23582 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23582) > _23582:
                                    mem[_23582 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23582) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _23791 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_23791) > _23791:
                                mem[_23791 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_23791) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                else:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23792 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23792) > _23792:
                                    mem[_23792 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23792) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _23904 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_23904) > _23904:
                                mem[_23904 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_23904) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
            else:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23587 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23587) > _23587:
                                    mem[_23587 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23587) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _23796 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_23796) > _23796:
                                mem[_23796 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_23796) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                else:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23797 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23797) > _23797:
                                    mem[_23797 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23797) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _23907 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_23907) > _23907:
                                mem[_23907 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_23907) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
        else:
            mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
            if ceil32(stor15.length.field_1) <= stor15.length.field_1:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23592 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23592) > _23592:
                                    mem[_23592 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23592) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _23801 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_23801) > _23801:
                                mem[_23801 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_23801) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                else:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23802 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23802) > _23802:
                                    mem[_23802 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23802) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _23910 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_23910) > _23910:
                                mem[_23910 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_23910) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
            else:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23597 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23597) > _23597:
                                    mem[_23597 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23597) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _23806 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_23806) > _23806:
                                mem[_23806 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_23806) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                else:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
                    if bool(stor14.length):
                        if bool(stor14.length) == stor14.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor14.length):
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        else:
                            if bool(stor14.length) != 1:
                                mem[64] = 0
                                _23807 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23807) > _23807:
                                    mem[_23807 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23807) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor14.length.field_1:
                                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    else:
                        if bool(stor14.length) != 1:
                            mem[64] = 0
                            _23913 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_23913) > _23913:
                                mem[_23913 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_23913) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor14.length.field_1:
                            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
    mem[128] = 256 * stor15.length.field_8
    if stor15.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor15.length.field_1) + 128] = 1
        mem[ceil32(stor15.length.field_1) + 160] = '0'
        mem[ceil32(stor15.length.field_1) + 224 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 224] = '0'
        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = 0
        if ceil32(stor15.length.field_1) <= stor15.length.field_1:
            if bool(stor14.length):
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                else:
                    if bool(stor14.length) != 1:
                        mem[64] = 0
                        _7192 = mem[ceil32(stor15.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        if ceil32(_7192) > _7192:
                            mem[_7192 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7192) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor14.length.field_1:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
            else:
                if bool(stor14.length) != 1:
                    mem[64] = 0
                    _7273 = mem[ceil32(stor15.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    if ceil32(_7273) > _7273:
                        mem[_7273 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_7273) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor14.length.field_1:
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
        else:
            if bool(stor14.length):
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
                else:
                    if bool(stor14.length) != 1:
                        mem[64] = 0
                        _7197 = mem[ceil32(stor15.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                        if ceil32(_7197) > _7197:
                            mem[_7197 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7197) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor14.length.field_1:
                        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 225] = Mask(248, 8, stor14.length)
            else:
                if bool(stor14.length) != 1:
                    mem[64] = 0
                    _7276 = mem[ceil32(stor15.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
                    if ceil32(_7276) > _7276:
                        mem[_7276 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_7276) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor14.length.field_1:
                    mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + idx + 225] = stor14[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 225] = 32
        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 257] = mem[ceil32(stor15.length.field_1) + 192]
        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])] = mem[ceil32(stor15.length.field_1) + 224 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor15.length.field_1) + 192]) > mem[ceil32(stor15.length.field_1) + 192]:
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + 192] + 289] = 0
        return Array(len=mem[ceil32(stor15.length.field_1) + 192], data=mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor15.length.field_1) + 192])]), 
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
    mem[ceil32(stor15.length.field_1) + 128] = s
    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + 160
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
        if ceil32(stor15.length.field_1) <= stor15.length.field_1:
            _12526 = mem[ceil32(stor15.length.field_1) + 128]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
                if bool(stor14.length):
                    if bool(stor14.length) == stor14.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor14.length):
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor14.length) != 1:
                        mem[64] = 0
                        _18834 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_18834) > _18834:
                            mem[_18834 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18834) + -mem[64] + 64
                    mem[0] = 14
                    idx = 0
                    t = 0
                    while idx < stor14.length.field_1:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22102 = mem[64]
                    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + 192
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + 192] = 32
                    _22934 = mem[_22102]
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + 224] = mem[_22102]
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + 256 len ceil32(_22934)] = mem[_22102 + 32 len ceil32(_22934)]
                    if ceil32(_22934) > _22934:
                        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + _22934 + 256] = 0
                    return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + 224 len ceil32(_22934) + 32], 
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                if bool(stor14.length) != 1:
                    mem[64] = 0
                    _19027 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19027) > _19027:
                        mem[_19027 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19027) + -mem[64] + 64
                mem[0] = 14
                idx = 0
                t = 0
                while idx < stor14.length.field_1:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22103 = mem[64]
                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + 192
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + 192] = 32
                _22935 = mem[_22103]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + 224] = mem[_22103]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + 256 len ceil32(_22935)] = mem[_22103 + 32 len ceil32(_22935)]
                if ceil32(_22935) > _22935:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + _22935 + 256] = 0
                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + 224 len ceil32(_22935) + 32], 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
            if bool(stor14.length):
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                if bool(stor14.length) != 1:
                    mem[64] = 0
                    _19028 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19028) > _19028:
                        mem[_19028 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19028) + -mem[64] + 64
                mem[0] = 14
                idx = 0
                t = 0
                while idx < stor14.length.field_1:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22104 = mem[64]
                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + 192
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + 192] = 32
                _22936 = mem[_22104]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + 224] = mem[_22104]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + 256 len ceil32(_22936)] = mem[_22104 + 32 len ceil32(_22936)]
                if ceil32(_22936) > _22936:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + _22936 + 256] = 0
                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + 224 len ceil32(_22936) + 32], 
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
            if bool(stor14.length) != 1:
                mem[64] = 0
                _19156 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                if ceil32(_19156) > _19156:
                    mem[_19156 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19156) + -mem[64] + 64
            mem[0] = 14
            idx = 0
            t = 0
            while idx < stor14.length.field_1:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22105 = mem[64]
            mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + 192
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + 192] = 32
            _22937 = mem[_22105]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + 224] = mem[_22105]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + 256 len ceil32(_22937)] = mem[_22105 + 32 len ceil32(_22937)]
            if ceil32(_22937) > _22937:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + _22937 + 256] = 0
            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12526 + stor14.length.field_1 + 224 len ceil32(_22937) + 32], 
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
        _12648 = mem[ceil32(stor15.length.field_1) + 128]
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
            if bool(stor14.length):
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                if bool(stor14.length) != 1:
                    mem[64] = 0
                    _18839 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_18839) > _18839:
                        mem[_18839 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18839) + -mem[64] + 64
                mem[0] = 14
                idx = 0
                t = 0
                while idx < stor14.length.field_1:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22106 = mem[64]
                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + 192
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + 192] = 32
                _22938 = mem[_22106]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + 224] = mem[_22106]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + 256 len ceil32(_22938)] = mem[_22106 + 32 len ceil32(_22938)]
                if ceil32(_22938) > _22938:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + _22938 + 256] = 0
                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + 224 len ceil32(_22938) + 32], 
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
            if bool(stor14.length) != 1:
                mem[64] = 0
                _19032 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                if ceil32(_19032) > _19032:
                    mem[_19032 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19032) + -mem[64] + 64
            mem[0] = 14
            idx = 0
            t = 0
            while idx < stor14.length.field_1:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22107 = mem[64]
            mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + 192
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + 192] = 32
            _22939 = mem[_22107]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + 224] = mem[_22107]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + 256 len ceil32(_22939)] = mem[_22107 + 32 len ceil32(_22939)]
            if ceil32(_22939) > _22939:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + _22939 + 256] = 0
            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + 224 len ceil32(_22939) + 32], 
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
            if bool(stor14.length) != 1:
                mem[64] = 0
                _19033 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                if ceil32(_19033) > _19033:
                    mem[_19033 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19033) + -mem[64] + 64
            mem[0] = 14
            idx = 0
            t = 0
            while idx < stor14.length.field_1:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22108 = mem[64]
            mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + 192
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + 192] = 32
            _22940 = mem[_22108]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + 224] = mem[_22108]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + 256 len ceil32(_22940)] = mem[_22108 + 32 len ceil32(_22940)]
            if ceil32(_22940) > _22940:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + _22940 + 256] = 0
            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + 224 len ceil32(_22940) + 32], 
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor14.length):
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
            mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
        if bool(stor14.length) != 1:
            mem[64] = 0
            _19159 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
            if ceil32(_19159) > _19159:
                mem[_19159 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_19159) + -mem[64] + 64
        mem[0] = 14
        idx = 0
        t = 0
        while idx < stor14.length.field_1:
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _22109 = mem[64]
        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + 192
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + 192] = 32
        _22941 = mem[_22109]
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + 224] = mem[_22109]
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + 256 len ceil32(_22941)] = mem[_22109 + 32 len ceil32(_22941)]
        if ceil32(_22941) > _22941:
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + _22941 + 256] = 0
        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12648 + stor14.length.field_1 + 224 len ceil32(_22941) + 32], 
    mem[ceil32(stor15.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor15.length.field_1) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor15.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
    if ceil32(stor15.length.field_1) <= stor15.length.field_1:
        _12527 = mem[ceil32(stor15.length.field_1) + 128]
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
            if bool(stor14.length):
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
                if bool(stor14.length) != 1:
                    mem[64] = 0
                    _18844 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_18844) > _18844:
                        mem[_18844 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18844) + -mem[64] + 64
                mem[0] = 14
                idx = 0
                t = 0
                while idx < stor14.length.field_1:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22110 = mem[64]
                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + 192
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + 192] = 32
                _22942 = mem[_22110]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + 224] = mem[_22110]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + 256 len ceil32(_22942)] = mem[_22110 + 32 len ceil32(_22942)]
                if ceil32(_22942) > _22942:
                    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + _22942 + 256] = 0
                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + 224 len ceil32(_22942) + 32], 
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
            if bool(stor14.length) != 1:
                mem[64] = 0
                _19037 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                if ceil32(_19037) > _19037:
                    mem[_19037 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19037) + -mem[64] + 64
            mem[0] = 14
            idx = 0
            t = 0
            while idx < stor14.length.field_1:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22111 = mem[64]
            mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + 192
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + 192] = 32
            _22943 = mem[_22111]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + 224] = mem[_22111]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + 256 len ceil32(_22943)] = mem[_22111 + 32 len ceil32(_22943)]
            if ceil32(_22943) > _22943:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + _22943 + 256] = 0
            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + 224 len ceil32(_22943) + 32], 
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
            if bool(stor14.length) != 1:
                mem[64] = 0
                _19038 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                if ceil32(_19038) > _19038:
                    mem[_19038 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19038) + -mem[64] + 64
            mem[0] = 14
            idx = 0
            t = 0
            while idx < stor14.length.field_1:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22112 = mem[64]
            mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + 192
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + 192] = 32
            _22944 = mem[_22112]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + 224] = mem[_22112]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + 256 len ceil32(_22944)] = mem[_22112 + 32 len ceil32(_22944)]
            if ceil32(_22944) > _22944:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + _22944 + 256] = 0
            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + 224 len ceil32(_22944) + 32], 
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor14.length):
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
            mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
        if bool(stor14.length) != 1:
            mem[64] = 0
            _19162 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
            if ceil32(_19162) > _19162:
                mem[_19162 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_19162) + -mem[64] + 64
        mem[0] = 14
        idx = 0
        t = 0
        while idx < stor14.length.field_1:
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _22113 = mem[64]
        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + 192
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + 192] = 32
        _22945 = mem[_22113]
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + 224] = mem[_22113]
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + 256 len ceil32(_22945)] = mem[_22113 + 32 len ceil32(_22945)]
        if ceil32(_22945) > _22945:
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + _22945 + 256] = 0
        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12527 + stor14.length.field_1 + 224 len ceil32(_22945) + 32], 
    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192] = 0
    _12649 = mem[ceil32(stor15.length.field_1) + 128]
    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + 192 len ceil32(mem[ceil32(stor15.length.field_1) + 128])] = mem[ceil32(stor15.length.field_1) + 160 len ceil32(mem[ceil32(stor15.length.field_1) + 128])]
    if ceil32(mem[ceil32(stor15.length.field_1) + 128]) <= mem[ceil32(stor15.length.field_1) + 128]:
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
                mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
            if bool(stor14.length) != 1:
                mem[64] = 0
                _18849 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
                if ceil32(_18849) > _18849:
                    mem[_18849 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_18849) + -mem[64] + 64
            mem[0] = 14
            idx = 0
            t = 0
            while idx < stor14.length.field_1:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22114 = mem[64]
            mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + 192
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + 192] = 32
            _22946 = mem[_22114]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + 224] = mem[_22114]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + 256 len ceil32(_22946)] = mem[_22114 + 32 len ceil32(_22946)]
            if ceil32(_22946) > _22946:
                mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + _22946 + 256] = 0
            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + 224 len ceil32(_22946) + 32], 
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor14.length):
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
            mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
        if bool(stor14.length) != 1:
            mem[64] = 0
            _19042 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
            if ceil32(_19042) > _19042:
                mem[_19042 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_19042) + -mem[64] + 64
        mem[0] = 14
        idx = 0
        t = 0
        while idx < stor14.length.field_1:
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _22115 = mem[64]
        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + 192
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + 192] = 32
        _22947 = mem[_22115]
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + 224] = mem[_22115]
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + 256 len ceil32(_22947)] = mem[_22115 + 32 len ceil32(_22947)]
        if ceil32(_22947) > _22947:
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + _22947 + 256] = 0
        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + 224 len ceil32(_22947) + 32], 
    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = 0
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor14.length):
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
            mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
        if bool(stor14.length) != 1:
            mem[64] = 0
            _19043 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
            if ceil32(_19043) > _19043:
                mem[_19043 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_19043) + -mem[64] + 64
        mem[0] = 14
        idx = 0
        t = 0
        while idx < stor14.length.field_1:
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _22116 = mem[64]
        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + 192
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + 192] = 32
        _22948 = mem[_22116]
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + 224] = mem[_22116]
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + 256 len ceil32(_22948)] = mem[_22116 + 32 len ceil32(_22948)]
        if ceil32(_22948) > _22948:
            mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + _22948 + 256] = 0
        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + 224 len ceil32(_22948) + 32], 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor14.length):
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + 192] = Mask(248, 8, stor14.length)
        mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 192] = 32
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(stor15.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]), 
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + mem[ceil32(stor15.length.field_1) + ceil32(s) + 160] + 256] = 0
        return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]) + 32], 
    if bool(stor14.length) != 1:
        mem[64] = 0
        _19165 = mem[ceil32(stor15.length.field_1) + ceil32(s) + 160]
        mem[64 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor15.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length.field_1) + ceil32(s) + 160])]
        if ceil32(_19165) > _19165:
            mem[_19165 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_19165) + -mem[64] + 64
    mem[0] = 14
    idx = 0
    t = 0
    while idx < stor14.length.field_1:
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + mem[ceil32(stor15.length.field_1) + 128] + idx + 192] = stor14[t].field_0
        idx = idx + 32
        t = t + 1
        continue 
    _22117 = mem[64]
    mem[64] = ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + 192
    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + 192] = 32
    _22949 = mem[_22117]
    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + 224] = mem[_22117]
    mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + 256 len ceil32(_22949)] = mem[_22117 + 32 len ceil32(_22949)]
    if ceil32(_22949) > _22949:
        mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + _22949 + 256] = 0
    return 32, mem[ceil32(stor15.length.field_1) + ceil32(s) + stor15.length.field_1 + _12649 + stor14.length.field_1 + 224 len ceil32(_22949) + 32], 
}



}
