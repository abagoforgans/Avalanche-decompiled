contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const sub_859582e5(?) = 10000

const sub_8e1dda3c(?) = 75 * 10^16

const sub_d1171030(?) = 25000

const MAX_TOKENS = 40000


array of struct stor0;
array of struct stor1;
array of uint8 ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
uint16 stor10;
uint16 MAX_AIRDROP; offset 160
uint16 purchased; offset 176
uint16 airdrop; offset 192
uint16 sub_ec5aa241; offset 208
address owner;
uint256 stor11;
uint256 stor12;
mapping of struct stor13;
mapping of uint8 stor14;
array of uint256 sub_d5843154;
array of uint256 sub_ca15fd60;
array of uint256 cows;
uint8 stor18;
uint8 stor18; offset 8
address stor18; offset 16
uint256 stor18; offset 8
uint256 stor18;
address stor19;
address stor20;
address stor21;

function count() {
    return purchased
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return address(approved[arg1])
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_1a215730(?) {
    return bool(uint8(stor18.field_8))
}

function sub_25b4b885(?) {
    return sub_ca15fd60.length
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

function airdrop() {
    return airdrop
}

function cows(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < cows.length
    return cows[arg1]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return address(ownerOf[arg1])
}

function preSaleStarted() {
    return bool(uint8(stor18.field_0))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_726795b0(?) {
    return cows.length
}

function purchased() {
    return purchased
}

function owner() {
    return owner
}

function sub_ca15fd60(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_ca15fd60.length
    return sub_ca15fd60[arg1]
}

function sub_d5843154(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_d5843154.length
    return sub_d5843154[arg1]
}

function MAX_AIRDROP() {
    return MAX_AIRDROP
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function sub_ec5aa241(?) {
    return sub_ec5aa241
}

function sub_fed01bc7(?) {
    return sub_d5843154.length
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

function sub_9edede9f(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor18.field_8) = Mask(248, 0, not uint8(stor18.field_8))
}

function togglePreSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor18.field_0) = not uint8(stor18.field_0) or Mask(248, 8, uint256(stor18.field_0))
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

function sub_1f4ba550(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    require purchased >= 10000
    if purchased > -uint16(arg1) + 65535:
        revert with 0, 17
    if uint16(uint16(arg1) + purchased) >= 25000:
        if uint16(arg1) > 2:
            revert with 0, 17
        return Mask(72, 0, 2000 * 10^18 * uint16(arg1))
    if uint16(arg1) > 4:
        revert with 0, 17
    return Mask(72, 0, 1000 * 10^18 * uint16(arg1))
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
    if not address(ownerOf[arg2]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == address(ownerOf[arg2]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if address(ownerOf[arg2]) != msg.sender:
        if not stor5[address(stor2[arg2])][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    address(approved[arg2]) = arg1
    if not address(ownerOf[arg2]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(address(ownerOf[arg2]), arg1, arg2);
}

function allTokensOfOwner(address arg1) {
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not address(ownerOf[arg1]):
        revert with 0, 'Token not minted yet'
    mem[0] = arg1
    mem[32] = 13
    mem[96] = stor13[arg1].field_0
    mem[128] = uint8(stor13[arg1].field_256)
    mem[192] = uint8(stor13[arg1].field_512)
    idx = 192
    s = 0
    while 320 > idx + 32:
        mem[idx + 32] = uint8(ownerOf[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1])
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[160] = 192
    mem[320] = 0x10428a6300000000000000000000000000000000000000000000000000000000
    mem[324] = arg1
    mem[356] = uint8(stor13[arg1].field_256)
    idx = 0
    s = 192
    t = 388
    while idx < 4:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor21)
    staticcall stor21.0x10428a63 with:
            gas gas_remaining wei
           args arg1, uint8(stor13[arg1].field_256), mem[388 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 320
    require return_data.size >= 32
    _18 = mem[320 len 4], Mask(224, 32, arg1) >> 32
    require mem[320 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg1) >> 32 + 351
    _19 = mem[mem[320 len 4], Mask(224, 32, arg1) >> 32 + 320]
    if mem[mem[320 len 4], Mask(224, 32, arg1) >> 32 + 320] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[320 len 4], Mask(224, 32, arg1) >> 32 + 320])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[320 len 4], Mask(224, 32, arg1) >> 32 + 320])) + 321 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[320 len 4], Mask(224, 32, arg1) >> 32 + 320])) + 321
    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg1) >> 32 + 320]
    require _18 + _19 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 352 len ceil32(_19)] = mem[_18 + 352 len ceil32(_19)]
    if ceil32(_19) <= _19:
        _33 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _19
        mem[mem[64] + 64 len ceil32(_19)] = mem[ceil32(return_data.size) + 352 len ceil32(_19)]
        if ceil32(_19) <= _19:
            return Array(len=_19, data=mem[mem[64] + 64 len ceil32(_19)])
        mem[_19 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_19) + _33 + -mem[64] + 64
    mem[_19 + ceil32(return_data.size) + 352] = 0
    _34 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _19
    mem[mem[64] + 64 len ceil32(_19)] = mem[ceil32(return_data.size) + 352 len ceil32(_19)]
    if ceil32(_19) <= _19:
        return Array(len=_19, data=mem[mem[64] + 64 len ceil32(_19)])
    mem[_19 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_19) + _34 + -mem[64] + 64
}

function tokenImage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not address(ownerOf[arg1]):
        revert with 0, 'Token not minted yet'
    mem[0] = arg1
    mem[32] = 13
    mem[96] = stor13[arg1].field_0
    mem[128] = uint8(stor13[arg1].field_256)
    mem[192] = uint8(stor13[arg1].field_512)
    idx = 192
    s = 0
    while 320 > idx + 32:
        mem[idx + 32] = uint8(ownerOf[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1])
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[160] = 192
    mem[320] = 0x10428a6300000000000000000000000000000000000000000000000000000000
    mem[324] = arg1
    mem[356] = uint8(stor13[arg1].field_256)
    idx = 0
    s = 192
    t = 388
    while idx < 4:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor21)
    staticcall stor21.0x10428a63 with:
            gas gas_remaining wei
           args arg1, uint8(stor13[arg1].field_256), mem[388 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 320
    require return_data.size >= 32
    _18 = mem[320 len 4], Mask(224, 32, arg1) >> 32
    require mem[320 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg1) >> 32 + 351
    _19 = mem[mem[320 len 4], Mask(224, 32, arg1) >> 32 + 320]
    if mem[mem[320 len 4], Mask(224, 32, arg1) >> 32 + 320] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[320 len 4], Mask(224, 32, arg1) >> 32 + 320])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[320 len 4], Mask(224, 32, arg1) >> 32 + 320])) + 321 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[320 len 4], Mask(224, 32, arg1) >> 32 + 320])) + 321
    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg1) >> 32 + 320]
    require _18 + _19 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 352 len ceil32(_19)] = mem[_18 + 352 len ceil32(_19)]
    if ceil32(_19) <= _19:
        _33 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _19
        mem[mem[64] + 64 len ceil32(_19)] = mem[ceil32(return_data.size) + 352 len ceil32(_19)]
        if ceil32(_19) <= _19:
            return Array(len=_19, data=mem[mem[64] + 64 len ceil32(_19)])
        mem[_19 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_19) + _33 + -mem[64] + 64
    mem[_19 + ceil32(return_data.size) + 352] = 0
    _34 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _19
    mem[mem[64] + 64 len ceil32(_19)] = mem[ceil32(return_data.size) + 352 len ceil32(_19)]
    if ceil32(_19) <= _19:
        return Array(len=_19, data=mem[mem[64] + 64 len ceil32(_19)])
    mem[_19 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_19) + _34 + -mem[64] + 64
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not address(ownerOf[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not address(ownerOf[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[arg3]) != msg.sender:
        if not address(ownerOf[arg3]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if address(approved[arg3]) != msg.sender:
            if not stor5[address(stor2[arg3])][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not address(ownerOf[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[arg3]) != arg1:
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
    address(approved[arg3]) = 0
    if not address(ownerOf[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(address(ownerOf[arg3]), 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    address(ownerOf[arg3]) = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[arg3]) != msg.sender:
        if not address(ownerOf[arg3]):
            revert with 0, 'ERC721: approved query for nonexistent token'
        if address(approved[arg3]) != msg.sender:
            if not stor5[address(stor2[arg3])][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[arg3]) != arg1:
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
    address(approved[arg3]) = 0
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(address(ownerOf[arg3]), 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    address(ownerOf[arg3]) = arg2
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
                        mem[idx + 32] = stor0[s].field_256
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

function sub_d16136d6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if airdrop >= MAX_AIRDROP:
        revert with 0, 'Max marketing airdrop reached'
    if not uint8(stor18.field_8):
        revert with 0, 'Main Sale hasn't started yet'
    if purchased >= 10000:
        revert with 0, 'Collection Sold out'
    if 4 > !block.number:
        revert with 0, 17
    if 2 > !block.number:
        revert with 0, 17
    if 3 > !block.number:
        revert with 0, 17
    if 1 > !block.number:
        revert with 0, 17
    if sha3(sha3(block.hash(block.number + 4), tx.origin, block.hash(block.number + 2), block.hash(block.number + 3), block.hash(block.number + 1), uint16(stor10.field_0), block.timestamp), 2) % 100 < stor12:
        sub_d5843154.length++
        sub_d5843154[sub_d5843154.length] = purchased
        mem[788] = 64
        mem[660] = uint8(sha3(sha3(block.hash(block.number + 4), tx.origin, block.hash(block.number + 2), block.hash(block.number + 3), block.hash(block.number + 1), uint16(stor10.field_0), block.timestamp), 2) % 20)
        mem[692] = uint8(sha3(sha3(block.hash(block.number + 4), tx.origin, block.hash(block.number + 2), block.hash(block.number + 3), block.hash(block.number + 1), uint16(stor10.field_0), block.timestamp), 1) % 20)
        mem[724] = uint8(sha3(sha3(block.hash(block.number + 4), tx.origin, block.hash(block.number + 2), block.hash(block.number + 3), block.hash(block.number + 1), uint16(stor10.field_0), block.timestamp), 3) % 20)
        mem[756] = uint8(sha3(sha3(block.hash(block.number + 4), tx.origin, block.hash(block.number + 2), block.hash(block.number + 3), block.hash(block.number + 1), uint16(stor10.field_0), block.timestamp), 5) % 20)
        stor13[uint16(stor10.field_0)].field_0 = purchased
        uint8(stor13[uint16(stor10.field_0)].field_256) = 2
    else:
        if sha3(sha3(block.hash(block.number + 4), tx.origin, block.hash(block.number + 2), block.hash(block.number + 3), block.hash(block.number + 1), uint16(stor10.field_0), block.timestamp), 2) % 100 < stor11:
            sub_ca15fd60.length++
            sub_ca15fd60[sub_ca15fd60.length] = purchased
            mem[788] = 64
            mem[660] = uint8(sha3(sha3(block.hash(block.number + 4), tx.origin, block.hash(block.number + 2), block.hash(block.number + 3), block.hash(block.number + 1), uint16(stor10.field_0), block.timestamp), 2) % 20)
            mem[692] = uint8(sha3(sha3(block.hash(block.number + 4), tx.origin, block.hash(block.number + 2), block.hash(block.number + 3), block.hash(block.number + 1), uint16(stor10.field_0), block.timestamp), 1) % 20)
            mem[724] = uint8(sha3(sha3(block.hash(block.number + 4), tx.origin, block.hash(block.number + 2), block.hash(block.number + 3), block.hash(block.number + 1), uint16(stor10.field_0), block.timestamp), 3) % 20)
            mem[756] = uint8(sha3(sha3(block.hash(block.number + 4), tx.origin, block.hash(block.number + 2), block.hash(block.number + 3), block.hash(block.number + 1), uint16(stor10.field_0), block.timestamp), 5) % 20)
            stor13[uint16(stor10.field_0)].field_0 = purchased
            uint8(stor13[uint16(stor10.field_0)].field_256) = 1
        else:
            cows.length++
            cows[cows.length] = purchased
            mem[788] = 64
            mem[660] = uint8(sha3(sha3(block.hash(block.number + 4), tx.origin, block.hash(block.number + 2), block.hash(block.number + 3), block.hash(block.number + 1), uint16(stor10.field_0), block.timestamp), 2) % 20)
            mem[692] = uint8(sha3(sha3(block.hash(block.number + 4), tx.origin, block.hash(block.number + 2), block.hash(block.number + 3), block.hash(block.number + 1), uint16(stor10.field_0), block.timestamp), 1) % 20)
            mem[724] = uint8(sha3(sha3(block.hash(block.number + 4), tx.origin, block.hash(block.number + 2), block.hash(block.number + 3), block.hash(block.number + 1), uint16(stor10.field_0), block.timestamp), 3) % 20)
            mem[756] = uint8(sha3(sha3(block.hash(block.number + 4), tx.origin, block.hash(block.number + 2), block.hash(block.number + 3), block.hash(block.number + 1), uint16(stor10.field_0), block.timestamp), 5) % 20)
            stor13[uint16(stor10.field_0)].field_0 = purchased
            uint8(stor13[uint16(stor10.field_0)].field_256) = 0
            stor13[uint16(stor10.field_0)].field_512 % 1 = 0
    s = 0
    idx = 660
    while 788 > idx:
        stor13[uint16(stor10.field_0)].field_512 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor13[uint16(stor10.field_0)].field_512
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 4
    s = sha3(uint16(stor10.field_0), 13) + 2
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-2 * None + 3 / 32) + (None * None + 3 / 32) + 2
    while 3 > idx:
        stor13[uint16(stor10.field_0)][idx].field_0 = 0
        idx = idx + 1
        continue 
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if address(ownerOf[uint16(stor10.field_0)]):
        revert with 0, 'ERC721: token already minted'
    stor9[uint16(stor10.field_0)] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = purchased
    if address(arg1):
        if address(arg1):
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = purchased
            stor7[uint16(stor10.field_0)] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[uint16(stor10.field_0)] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[uint16(stor10.field_0)]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[uint16(stor10.field_0)]
        stor9[uint16(stor10.field_176)] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    address(ownerOf[uint16(stor10.field_0)]) = address(arg1)
    emit Transfer(0, address(arg1), purchased);
    if purchased == 65535:
        revert with 0, 17
    purchased = uint16(purchased + 1)
}

function sub_b11fbc27(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor18.field_8):
        revert with 0, 'Main Sale has started already'
    if uint16(arg2) <= 0:
        revert with 0, 'Amount can't be null'
    mem[0] = address(arg1)
    mem[32] = 14
    stor14[address(arg1)] = 1
    idx = 1
    while uint16(idx) <= uint16(arg2):
        if 4 > !block.number:
            revert with 0, 17
        if 2 > !block.number:
            revert with 0, 17
        if 3 > !block.number:
            revert with 0, 17
        if 1 > !block.number:
            revert with 0, 17
        _164 = mem[64]
        mem[mem[64] + 32] = block.hash(block.number + 4)
        mem[mem[64] + 64] = tx.origin
        mem[mem[64] + 84] = block.hash(block.number + 2)
        mem[mem[64] + 116] = block.hash(block.number + 3)
        mem[mem[64] + 148] = block.hash(block.number + 1)
        mem[mem[64] + 180] = purchased
        mem[mem[64] + 212] = block.timestamp
        _165 = mem[64]
        mem[mem[64]] = 212
        mem[64] = mem[64] + 244
        _167 = sha3(mem[_165 + 32 len mem[_165]])
        mem[_164 + 244] = purchased
        mem[_164 + 372] = _167
        mem[_164 + 404] = 2
        mem[_164 + 340] = 64
        if sha3(_167, 2) % 100 < stor12:
            sub_d5843154.length++
            sub_d5843154[sub_d5843154.length] = purchased
            mem[_164 + 276] = 2
            mem[_164 + 436 len 128] = call.data[calldata.size len 128]
            mem[_164 + 724] = _167
            mem[_164 + 756] = 2
            mem[_164 + 692] = 64
            mem[_164 + 564] = uint8(sha3(_167, 2) % 20)
            mem[_164 + 820] = _167
            mem[_164 + 852] = 1
            mem[_164 + 788] = 64
            mem[_164 + 596] = uint8(sha3(_167, 1) % 20)
            mem[_164 + 916] = _167
            mem[_164 + 948] = 3
            mem[_164 + 884] = 64
            mem[_164 + 628] = uint8(sha3(_167, 3) % 20)
            mem[_164 + 1012] = _167
            mem[_164 + 1044] = 5
            mem[_164 + 980] = 64
            mem[64] = _164 + 1076
            mem[_164 + 660] = uint8(sha3(_167, 5) % 20)
            mem[_164 + 308] = _164 + 564
            stor13[uint16(stor10.field_0)].field_0 = purchased
            uint8(stor13[uint16(stor10.field_0)].field_256) = 2
        else:
            if sha3(_167, 2) % 100 < stor11:
                sub_ca15fd60.length++
                sub_ca15fd60[sub_ca15fd60.length] = purchased
                mem[_164 + 276] = 1
                mem[_164 + 436 len 128] = call.data[calldata.size len 128]
                mem[_164 + 724] = _167
                mem[_164 + 756] = 2
                mem[_164 + 692] = 64
                mem[_164 + 564] = uint8(sha3(_167, 2) % 20)
                mem[_164 + 820] = _167
                mem[_164 + 852] = 1
                mem[_164 + 788] = 64
                mem[_164 + 596] = uint8(sha3(_167, 1) % 20)
                mem[_164 + 916] = _167
                mem[_164 + 948] = 3
                mem[_164 + 884] = 64
                mem[_164 + 628] = uint8(sha3(_167, 3) % 20)
                mem[_164 + 1012] = _167
                mem[_164 + 1044] = 5
                mem[_164 + 980] = 64
                mem[64] = _164 + 1076
                mem[_164 + 660] = uint8(sha3(_167, 5) % 20)
                mem[_164 + 308] = _164 + 564
                stor13[uint16(stor10.field_0)].field_0 = purchased
                uint8(stor13[uint16(stor10.field_0)].field_256) = 1
            else:
                cows.length++
                cows[cows.length] = purchased
                mem[_164 + 276] = 0
                mem[_164 + 436 len 128] = call.data[calldata.size len 128]
                mem[_164 + 724] = _167
                mem[_164 + 756] = 2
                mem[_164 + 692] = 64
                mem[_164 + 564] = uint8(sha3(_167, 2) % 20)
                mem[_164 + 820] = _167
                mem[_164 + 852] = 1
                mem[_164 + 788] = 64
                mem[_164 + 596] = uint8(sha3(_167, 1) % 20)
                mem[_164 + 916] = _167
                mem[_164 + 948] = 3
                mem[_164 + 884] = 64
                mem[_164 + 628] = uint8(sha3(_167, 3) % 20)
                mem[_164 + 1012] = _167
                mem[_164 + 1044] = 5
                mem[_164 + 980] = 64
                mem[64] = _164 + 1076
                mem[_164 + 660] = uint8(sha3(_167, 5) % 20)
                mem[_164 + 308] = _164 + 564
                stor13[uint16(stor10.field_0)].field_0 = purchased
                uint8(stor13[uint16(stor10.field_0)].field_256) = 0
                stor13[uint16(stor10.field_0)].field_512 % 1 = 0
        t = 0
        s = _164 + 564
        while _164 + 692 > s:
            stor13[uint16(stor10.field_0)].field_512 = mem[s + 31 len 1] * 256^t or !(255 * 256^t) and stor13[uint16(stor10.field_0)].field_512
            t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
            s = s + 32
            continue 
        s = 4
        t = sha3(uint16(stor10.field_0), 13) + 2
        while s:
            stor[t] = !(255 * 256^s) and stor[t]
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            t = (s + 1 / 32) + t
            continue 
        s = sha3(uint16(stor10.field_0), 13) + (-2 * None + 3 / 32) + (None * None + 3 / 32) + 2
        while sha3(uint16(stor10.field_0), 13) + 3 > s:
            stor[s] = 0
            s = s + 1
            continue 
        if not address(arg1):
            revert with 0, 'ERC721: mint to the zero address'
        if address(ownerOf[uint16(stor10.field_0)]):
            revert with 0, 'ERC721: token already minted'
        stor9[uint16(stor10.field_0)] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = purchased
        if address(arg1):
            if address(arg1):
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = purchased
                stor7[uint16(stor10.field_0)] = balanceOf[address(arg1)]
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[uint16(stor10.field_0)] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[uint16(stor10.field_0)]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[uint16(stor10.field_0)]
            stor9[uint16(stor10.field_176)] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        if balanceOf[address(arg1)] > -2:
            revert with 0, 17
        balanceOf[address(arg1)]++
        mem[0] = purchased
        mem[32] = 2
        address(ownerOf[uint16(stor10.field_0)]) = address(arg1)
        emit Transfer(0, address(arg1), purchased);
        if purchased == 65535:
            revert with 0, 17
        purchased = uint16(purchased + 1)
        if uint16(idx) == 65535:
            revert with 0, 17
        idx = uint16(idx) + 1
        continue 
}

function sub_8092ca92(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = address(arg1)
    mem[32] = 3
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = balanceOf[address(arg1)]
    mem[64] = (32 * balanceOf[address(arg1)]) + 128
    if not balanceOf[address(arg1)]:
        idx = 0
        while idx < balanceOf[address(arg1)]:
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 13
            _107 = mem[64]
            mem[64] = mem[64] + 96
            mem[_107] = stor13[stor6[address(arg1)][idx]].field_0
            mem[_107 + 32] = uint8(stor13[stor6[address(arg1)][idx]].field_256)
            _108 = mem[64]
            mem[64] = mem[64] + 128
            mem[_108] = uint8(stor13[stor6[address(arg1)][idx]].field_512)
            s = _108
            t = 0
            while _108 + 128 > s + 32:
                mem[s + 32] = uint8(ownerOf[-(0.03125 / t + 1) + t + (-1 * 0.03125 / t + 1 * t) + 1])
                s = s + 32
                t = -(t + 1 / 32) + t + (-1 * t + 1 / 32 * t) + 1
                continue 
            mem[_107 + 64] = _108
            _122 = mem[_107 + 32]
            mem[mem[64]] = 0x4660346f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = uint8(_122)
            s = 0
            t = _108
            u = mem[64] + 36
            while s < 4:
                mem[u] = mem[t + 31 len 1]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(stor21)
            staticcall stor21.0x4660346f with:
                    gas gas_remaining wei
                   args _122 << 248, mem[mem[64] + 36 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _158 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _161 = mem[_158]
            require mem[_158] <= test266151307()
            require _158 + return_data.size > _158 + mem[_158] + 31
            _162 = mem[_158 + mem[_158]]
            if mem[_158 + mem[_158]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_158 + mem[_158]])) + 1 < 0 or _158 + ceil32(return_data.size) + ceil32(ceil32(mem[_158 + mem[_158]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _158 + ceil32(return_data.size) + ceil32(ceil32(mem[_158 + mem[_158]])) + 1
            mem[_158 + ceil32(return_data.size)] = _162
            require _161 + _162 + 32 <= return_data.size
            s = 0
            while s < _162:
                mem[s + _158 + ceil32(return_data.size) + 32] = mem[s + _158 + _161 + 32]
                s = s + 32
                continue 
            if ceil32(_162) > _162:
                mem[_162 + _158 + ceil32(return_data.size) + 32] = 0
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _158 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _93 = mem[64]
        mem[mem[64]] = 32
        _94 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _94:
            mem[t] = u + -_93 - 64
            _121 = mem[s]
            _126 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _126:
                mem[v + u + 32] = mem[v + _121 + 32]
                v = v + 32
                continue 
            if ceil32(_126) > _126:
                mem[_126 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_126) + u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = balanceOf[address(arg1)]
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < balanceOf[address(arg1)]:
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 13
            _141 = mem[64]
            mem[64] = mem[64] + 96
            mem[_141] = stor13[stor6[address(arg1)][idx]].field_0
            mem[_141 + 32] = uint8(stor13[stor6[address(arg1)][idx]].field_256)
            _142 = mem[64]
            mem[64] = mem[64] + 128
            mem[_142] = uint8(stor13[stor6[address(arg1)][idx]].field_512)
            s = _142
            t = 0
            while _142 + 128 > s + 32:
                mem[s + 32] = uint8(ownerOf[-(0.03125 / t + 1) + t + (-1 * 0.03125 / t + 1 * t) + 1])
                s = s + 32
                t = -(t + 1 / 32) + t + (-1 * t + 1 / 32 * t) + 1
                continue 
            mem[_141 + 64] = _142
            _152 = mem[_141 + 32]
            mem[mem[64]] = 0x4660346f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = uint8(_152)
            s = 0
            t = _142
            u = mem[64] + 36
            while s < 4:
                mem[u] = mem[t + 31 len 1]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(stor21)
            staticcall stor21.0x4660346f with:
                    gas gas_remaining wei
                   args _152 << 248, mem[mem[64] + 36 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _173 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _174 = mem[_173]
            require mem[_173] <= test266151307()
            require _173 + return_data.size > _173 + mem[_173] + 31
            _175 = mem[_173 + mem[_173]]
            if mem[_173 + mem[_173]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_173 + mem[_173]])) + 1 < 0 or _173 + ceil32(return_data.size) + ceil32(ceil32(mem[_173 + mem[_173]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _173 + ceil32(return_data.size) + ceil32(ceil32(mem[_173 + mem[_173]])) + 1
            mem[_173 + ceil32(return_data.size)] = _175
            require _174 + _175 + 32 <= return_data.size
            s = 0
            while s < _175:
                mem[s + _173 + ceil32(return_data.size) + 32] = mem[s + _173 + _174 + 32]
                s = s + 32
                continue 
            if ceil32(_175) > _175:
                mem[_175 + _173 + ceil32(return_data.size) + 32] = 0
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _173 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _127 = mem[64]
        mem[mem[64]] = 32
        _128 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _128:
            mem[t] = u + -_127 - 64
            _151 = mem[s]
            _156 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _156:
                mem[v + u + 32] = mem[v + _151 + 32]
                v = v + 32
                continue 
            if ceil32(_156) > _156:
                mem[_156 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_156) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_dddba9db(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    mem[0] = msg.sender
    mem[32] = 14
    if not stor14[msg.sender]:
        if not uint8(stor18.field_8):
            revert with 0, 'Main Sale hasn't started yet'
        if tx.origin != msg.sender:
            revert with 0, 'Contracts not allowed'
        if purchased > -uint8(arg1) + 65535:
            revert with 0, 17
        if uint16(uint8(arg1) + purchased) > 10000:
            revert with 0, 'Avax Sell is Sold out'
        if uint8(arg1) and 75 * 10^16 > -1 / uint8(arg1):
            revert with 0, 17
        if msg.value < 75 * 10^16 * uint8(arg1):
            revert with 0, 'Value not matching price'
        if msg.value < msg.value / 5:
            revert with 0, 17
        call stor19 with:
           value msg.value / 5 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(stor18.field_16) with:
           value msg.value - (msg.value / 5) wei
             gas 2300 * is_zero(value) wei
        idx = 0
        while uint8(idx) < uint8(arg1):
            if 4 > !block.number:
                revert with 0, 17
            if 2 > !block.number:
                revert with 0, 17
            if 3 > !block.number:
                revert with 0, 17
            if 1 > !block.number:
                revert with 0, 17
            _1270 = mem[64]
            mem[mem[64] + 32] = block.hash(block.number + 4)
            mem[mem[64] + 64] = tx.origin
            mem[mem[64] + 84] = block.hash(block.number + 2)
            mem[mem[64] + 116] = block.hash(block.number + 3)
            mem[mem[64] + 148] = block.hash(block.number + 1)
            mem[mem[64] + 180] = purchased
            mem[mem[64] + 212] = block.timestamp
            _1271 = mem[64]
            mem[mem[64]] = 212
            mem[64] = mem[64] + 244
            _1273 = sha3(mem[_1271 + 32 len mem[_1271]])
            mem[_1270 + 276] = sha3(mem[_1271 + 32 len mem[_1271]])
            mem[_1270 + 308] = 3
            mem[_1270 + 244] = 64
            if sha3(mem[_1270 + 276], 3) % 10:
                if msg.sender != msg.sender:
                    if sub_ec5aa241 == 65535:
                        revert with 0, 17
                    sub_ec5aa241 = uint16(sub_ec5aa241 + 1)
                mem[_1270 + 340] = purchased
                mem[_1270 + 468] = _1273
                mem[_1270 + 500] = 2
                mem[_1270 + 436] = 64
                if sha3(_1273, 2) % 100 < stor12:
                    sub_d5843154.length++
                    sub_d5843154[sub_d5843154.length] = purchased
                    mem[_1270 + 372] = 2
                    mem[_1270 + 532 len 128] = call.data[calldata.size len 128]
                    mem[_1270 + 820] = _1273
                    mem[_1270 + 852] = 2
                    mem[_1270 + 788] = 64
                    mem[_1270 + 660] = uint8(sha3(_1273, 2) % 20)
                    mem[_1270 + 916] = _1273
                    mem[_1270 + 948] = 1
                    mem[_1270 + 884] = 64
                    mem[_1270 + 692] = uint8(sha3(_1273, 1) % 20)
                    mem[_1270 + 1012] = _1273
                    mem[_1270 + 1044] = 3
                    mem[_1270 + 980] = 64
                    mem[_1270 + 724] = uint8(sha3(_1273, 3) % 20)
                    mem[_1270 + 1108] = _1273
                    mem[_1270 + 1140] = 5
                    mem[_1270 + 1076] = 64
                    mem[64] = _1270 + 1172
                    mem[_1270 + 756] = uint8(sha3(_1273, 5) % 20)
                    mem[_1270 + 404] = _1270 + 660
                    stor13[uint16(stor10.field_0)].field_0 = purchased
                    uint8(stor13[uint16(stor10.field_0)].field_256) = 2
                else:
                    if sha3(_1273, 2) % 100 < stor11:
                        sub_ca15fd60.length++
                        sub_ca15fd60[sub_ca15fd60.length] = purchased
                        mem[_1270 + 372] = 1
                        mem[_1270 + 532 len 128] = call.data[calldata.size len 128]
                        mem[_1270 + 820] = _1273
                        mem[_1270 + 852] = 2
                        mem[_1270 + 788] = 64
                        mem[_1270 + 660] = uint8(sha3(_1273, 2) % 20)
                        mem[_1270 + 916] = _1273
                        mem[_1270 + 948] = 1
                        mem[_1270 + 884] = 64
                        mem[_1270 + 692] = uint8(sha3(_1273, 1) % 20)
                        mem[_1270 + 1012] = _1273
                        mem[_1270 + 1044] = 3
                        mem[_1270 + 980] = 64
                        mem[_1270 + 724] = uint8(sha3(_1273, 3) % 20)
                        mem[_1270 + 1108] = _1273
                        mem[_1270 + 1140] = 5
                        mem[_1270 + 1076] = 64
                        mem[64] = _1270 + 1172
                        mem[_1270 + 756] = uint8(sha3(_1273, 5) % 20)
                        mem[_1270 + 404] = _1270 + 660
                        stor13[uint16(stor10.field_0)].field_0 = purchased
                        uint8(stor13[uint16(stor10.field_0)].field_256) = 1
                    else:
                        cows.length++
                        cows[cows.length] = purchased
                        mem[_1270 + 372] = 0
                        mem[_1270 + 532 len 128] = call.data[calldata.size len 128]
                        mem[_1270 + 820] = _1273
                        mem[_1270 + 852] = 2
                        mem[_1270 + 788] = 64
                        mem[_1270 + 660] = uint8(sha3(_1273, 2) % 20)
                        mem[_1270 + 916] = _1273
                        mem[_1270 + 948] = 1
                        mem[_1270 + 884] = 64
                        mem[_1270 + 692] = uint8(sha3(_1273, 1) % 20)
                        mem[_1270 + 1012] = _1273
                        mem[_1270 + 1044] = 3
                        mem[_1270 + 980] = 64
                        mem[_1270 + 724] = uint8(sha3(_1273, 3) % 20)
                        mem[_1270 + 1108] = _1273
                        mem[_1270 + 1140] = 5
                        mem[_1270 + 1076] = 64
                        mem[64] = _1270 + 1172
                        mem[_1270 + 756] = uint8(sha3(_1273, 5) % 20)
                        mem[_1270 + 404] = _1270 + 660
                        stor13[uint16(stor10.field_0)].field_0 = purchased
                        uint8(stor13[uint16(stor10.field_0)].field_256) = 0
                        stor13[uint16(stor10.field_0)].field_512 % 1 = 0
                t = 0
                s = _1270 + 660
                while _1270 + 788 > s:
                    stor13[uint16(stor10.field_0)].field_512 = mem[s + 31 len 1] * 256^t or !(255 * 256^t) and stor13[uint16(stor10.field_0)].field_512
                    t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                    s = s + 32
                    continue 
                s = 4
                t = sha3(uint16(stor10.field_0), 13) + 2
                while s:
                    stor[t] = !(255 * 256^s) and stor[t]
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    t = (s + 1 / 32) + t
                    continue 
                s = sha3(uint16(stor10.field_0), 13) + (-2 * None + 3 / 32) + (None * None + 3 / 32) + 2
                while sha3(uint16(stor10.field_0), 13) + 3 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if address(ownerOf[uint16(stor10.field_0)]):
                    revert with 0, 'ERC721: token already minted'
                stor9[uint16(stor10.field_0)] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = purchased
                if msg.sender:
                    if msg.sender:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = purchased
                        stor7[uint16(stor10.field_0)] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[uint16(stor10.field_0)] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[uint16(stor10.field_0)]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[uint16(stor10.field_0)]
                    stor9[uint16(stor10.field_176)] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = purchased
                mem[32] = 2
                address(ownerOf[uint16(stor10.field_0)]) = msg.sender
                emit Transfer(0, msg.sender, purchased);
            else:
                mem[_1270 + 372] = _1273
                mem[_1270 + 404] = 4
                mem[_1270 + 340] = 64
                if not sub_ca15fd60.length:
                    revert with 0, 18
                if sha3(_1273, 4) % sub_ca15fd60.length >= sub_ca15fd60.length:
                    revert with 0, 50
                if not address(ownerOf[uint256(stor16[('map', ('var', '_1273'), ('name', 'stor4', 4)) % stor16.length])]):
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if address(ownerOf[uint256(stor16[('map', ('var', '_1273'), ('name', 'stor4', 4)) % stor16.length])]) != msg.sender:
                    if sub_ec5aa241 == 65535:
                        revert with 0, 17
                    sub_ec5aa241 = uint16(sub_ec5aa241 + 1)
                mem[_1270 + 436] = purchased
                mem[_1270 + 564] = _1273
                mem[_1270 + 596] = 2
                mem[_1270 + 532] = 64
                if sha3(_1273, 2) % 100 < stor12:
                    sub_d5843154.length++
                    sub_d5843154[sub_d5843154.length] = purchased
                    mem[_1270 + 468] = 2
                    mem[_1270 + 628 len 128] = call.data[calldata.size len 128]
                    mem[_1270 + 916] = _1273
                    mem[_1270 + 948] = 2
                    mem[_1270 + 884] = 64
                    mem[_1270 + 756] = uint8(sha3(_1273, 2) % 20)
                    mem[_1270 + 1012] = _1273
                    mem[_1270 + 1044] = 1
                    mem[_1270 + 980] = 64
                    mem[_1270 + 788] = uint8(sha3(_1273, 1) % 20)
                    mem[_1270 + 1108] = _1273
                    mem[_1270 + 1140] = 3
                    mem[_1270 + 1076] = 64
                    mem[_1270 + 820] = uint8(sha3(_1273, 3) % 20)
                    mem[_1270 + 1204] = _1273
                    mem[_1270 + 1236] = 5
                    mem[_1270 + 1172] = 64
                    mem[64] = _1270 + 1268
                    mem[_1270 + 852] = uint8(sha3(_1273, 5) % 20)
                    mem[_1270 + 500] = _1270 + 756
                    stor13[uint16(stor10.field_0)].field_0 = purchased
                    uint8(stor13[uint16(stor10.field_0)].field_256) = 2
                else:
                    if sha3(_1273, 2) % 100 < stor11:
                        sub_ca15fd60.length++
                        sub_ca15fd60[sub_ca15fd60.length] = purchased
                        mem[_1270 + 468] = 1
                        mem[_1270 + 628 len 128] = call.data[calldata.size len 128]
                        mem[_1270 + 916] = _1273
                        mem[_1270 + 948] = 2
                        mem[_1270 + 884] = 64
                        mem[_1270 + 756] = uint8(sha3(_1273, 2) % 20)
                        mem[_1270 + 1012] = _1273
                        mem[_1270 + 1044] = 1
                        mem[_1270 + 980] = 64
                        mem[_1270 + 788] = uint8(sha3(_1273, 1) % 20)
                        mem[_1270 + 1108] = _1273
                        mem[_1270 + 1140] = 3
                        mem[_1270 + 1076] = 64
                        mem[_1270 + 820] = uint8(sha3(_1273, 3) % 20)
                        mem[_1270 + 1204] = _1273
                        mem[_1270 + 1236] = 5
                        mem[_1270 + 1172] = 64
                        mem[64] = _1270 + 1268
                        mem[_1270 + 852] = uint8(sha3(_1273, 5) % 20)
                        mem[_1270 + 500] = _1270 + 756
                        stor13[uint16(stor10.field_0)].field_0 = purchased
                        uint8(stor13[uint16(stor10.field_0)].field_256) = 1
                    else:
                        cows.length++
                        cows[cows.length] = purchased
                        mem[_1270 + 468] = 0
                        mem[_1270 + 628 len 128] = call.data[calldata.size len 128]
                        mem[_1270 + 916] = _1273
                        mem[_1270 + 948] = 2
                        mem[_1270 + 884] = 64
                        mem[_1270 + 756] = uint8(sha3(_1273, 2) % 20)
                        mem[_1270 + 1012] = _1273
                        mem[_1270 + 1044] = 1
                        mem[_1270 + 980] = 64
                        mem[_1270 + 788] = uint8(sha3(_1273, 1) % 20)
                        mem[_1270 + 1108] = _1273
                        mem[_1270 + 1140] = 3
                        mem[_1270 + 1076] = 64
                        mem[_1270 + 820] = uint8(sha3(_1273, 3) % 20)
                        mem[_1270 + 1204] = _1273
                        mem[_1270 + 1236] = 5
                        mem[_1270 + 1172] = 64
                        mem[64] = _1270 + 1268
                        mem[_1270 + 852] = uint8(sha3(_1273, 5) % 20)
                        mem[_1270 + 500] = _1270 + 756
                        stor13[uint16(stor10.field_0)].field_0 = purchased
                        uint8(stor13[uint16(stor10.field_0)].field_256) = 0
                        stor13[uint16(stor10.field_0)].field_512 % 1 = 0
                t = 0
                s = _1270 + 756
                while _1270 + 884 > s:
                    stor13[uint16(stor10.field_0)].field_512 = mem[s + 31 len 1] * 256^t or !(255 * 256^t) and stor13[uint16(stor10.field_0)].field_512
                    t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                    s = s + 32
                    continue 
                s = 4
                t = sha3(uint16(stor10.field_0), 13) + 2
                while s:
                    stor[t] = !(255 * 256^s) and stor[t]
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    t = (s + 1 / 32) + t
                    continue 
                s = sha3(uint16(stor10.field_0), 13) + (-2 * None + 3 / 32) + (None * None + 3 / 32) + 2
                while sha3(uint16(stor10.field_0), 13) + 3 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if not address(ownerOf[uint256(stor16[('map', ('var', '_1273'), ('name', 'stor4', 4)) % stor16.length])]):
                    revert with 0, 'ERC721: mint to the zero address'
                if address(ownerOf[uint16(stor10.field_0)]):
                    revert with 0, 'ERC721: token already minted'
                stor9[uint16(stor10.field_0)] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = purchased
                if address(ownerOf[uint256(stor16[('map', ('var', '_1273'), ('name', 'stor4', 4)) % stor16.length])]):
                    if address(ownerOf[uint256(stor16[('map', ('var', '_1273'), ('name', 'stor4', 4)) % stor16.length])]):
                        if not address(ownerOf[uint256(stor16[('map', ('var', '_1273'), ('name', 'stor4', 4)) % stor16.length])]):
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(stor2[uint256(stor16[('map', ('var', '_1273'), ('name', 'stor4', 4)) % stor16.length])])][stor3[address(stor2[uint256(stor16[('map', ('var', '_1273'), ('name', 'stor4', 4)) % stor16.length])])]] = purchased
                        stor7[uint16(stor10.field_0)] = balanceOf[address(stor2[uint256(stor16[('map', ('var', '_1273'), ('name', 'stor4', 4)) % stor16.length])])]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[uint16(stor10.field_0)] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[uint16(stor10.field_0)]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[uint16(stor10.field_0)]
                    stor9[uint16(stor10.field_176)] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(stor2[uint256(stor16[('map', ('var', '_1273'), ('name', 'stor4', 4)) % stor16.length])])] > -2:
                    revert with 0, 17
                balanceOf[address(stor2[uint256(stor16[('map', ('var', '_1273'), ('name', 'stor4', 4)) % stor16.length])])]++
                mem[0] = purchased
                mem[32] = 2
                address(ownerOf[uint16(stor10.field_0)]) = address(ownerOf[uint256(stor16[('map', ('var', '_1273'), ('name', 'stor4', 4)) % stor16.length])])
                emit Transfer(0, address(ownerOf[uint256(stor16[('map', ('var', '_1273'), ('name', 'stor4', 4)) % stor16.length])]), purchased);
            if purchased == 65535:
                revert with 0, 17
            purchased = uint16(purchased + 1)
            if uint8(idx) == 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            continue 
    else:
        if not uint8(stor18.field_0):
            revert with 0, 'Pre Sale hasn't started yet'
        if tx.origin != msg.sender:
            revert with 0, 'Contracts not allowed'
        if purchased > -uint8(arg1) + 65535:
            revert with 0, 17
        if uint16(uint8(arg1) + purchased) > 10000:
            revert with 0, 'Avax Sell is Sold out'
        if uint8(arg1) and 75 * 10^16 > -1 / uint8(arg1):
            revert with 0, 17
        if msg.value < 75 * 10^16 * uint8(arg1):
            revert with 0, 'Value not matching price'
        if msg.value < msg.value / 5:
            revert with 0, 17
        call stor19 with:
           value msg.value / 5 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(stor18.field_16) with:
           value msg.value - (msg.value / 5) wei
             gas 2300 * is_zero(value) wei
        idx = 0
        while uint8(idx) < uint8(arg1):
            if 4 > !block.number:
                revert with 0, 17
            if 2 > !block.number:
                revert with 0, 17
            if 3 > !block.number:
                revert with 0, 17
            if 1 > !block.number:
                revert with 0, 17
            _1274 = mem[64]
            mem[mem[64] + 32] = block.hash(block.number + 4)
            mem[mem[64] + 64] = tx.origin
            mem[mem[64] + 84] = block.hash(block.number + 2)
            mem[mem[64] + 116] = block.hash(block.number + 3)
            mem[mem[64] + 148] = block.hash(block.number + 1)
            mem[mem[64] + 180] = purchased
            mem[mem[64] + 212] = block.timestamp
            _1275 = mem[64]
            mem[mem[64]] = 212
            mem[64] = mem[64] + 244
            _1277 = sha3(mem[_1275 + 32 len mem[_1275]])
            mem[_1274 + 276] = sha3(mem[_1275 + 32 len mem[_1275]])
            mem[_1274 + 308] = 3
            mem[_1274 + 244] = 64
            if sha3(mem[_1274 + 276], 3) % 10:
                if msg.sender != msg.sender:
                    if sub_ec5aa241 == 65535:
                        revert with 0, 17
                    sub_ec5aa241 = uint16(sub_ec5aa241 + 1)
                mem[_1274 + 340] = purchased
                mem[_1274 + 468] = _1277
                mem[_1274 + 500] = 2
                mem[_1274 + 436] = 64
                if sha3(_1277, 2) % 100 < stor12:
                    sub_d5843154.length++
                    sub_d5843154[sub_d5843154.length] = purchased
                    mem[_1274 + 372] = 2
                    mem[_1274 + 532 len 128] = call.data[calldata.size len 128]
                    mem[_1274 + 820] = _1277
                    mem[_1274 + 852] = 2
                    mem[_1274 + 788] = 64
                    mem[_1274 + 660] = uint8(sha3(_1277, 2) % 20)
                    mem[_1274 + 916] = _1277
                    mem[_1274 + 948] = 1
                    mem[_1274 + 884] = 64
                    mem[_1274 + 692] = uint8(sha3(_1277, 1) % 20)
                    mem[_1274 + 1012] = _1277
                    mem[_1274 + 1044] = 3
                    mem[_1274 + 980] = 64
                    mem[_1274 + 724] = uint8(sha3(_1277, 3) % 20)
                    mem[_1274 + 1108] = _1277
                    mem[_1274 + 1140] = 5
                    mem[_1274 + 1076] = 64
                    mem[64] = _1274 + 1172
                    mem[_1274 + 756] = uint8(sha3(_1277, 5) % 20)
                    mem[_1274 + 404] = _1274 + 660
                    stor13[uint16(stor10.field_0)].field_0 = purchased
                    uint8(stor13[uint16(stor10.field_0)].field_256) = 2
                else:
                    if sha3(_1277, 2) % 100 < stor11:
                        sub_ca15fd60.length++
                        sub_ca15fd60[sub_ca15fd60.length] = purchased
                        mem[_1274 + 372] = 1
                        mem[_1274 + 532 len 128] = call.data[calldata.size len 128]
                        mem[_1274 + 820] = _1277
                        mem[_1274 + 852] = 2
                        mem[_1274 + 788] = 64
                        mem[_1274 + 660] = uint8(sha3(_1277, 2) % 20)
                        mem[_1274 + 916] = _1277
                        mem[_1274 + 948] = 1
                        mem[_1274 + 884] = 64
                        mem[_1274 + 692] = uint8(sha3(_1277, 1) % 20)
                        mem[_1274 + 1012] = _1277
                        mem[_1274 + 1044] = 3
                        mem[_1274 + 980] = 64
                        mem[_1274 + 724] = uint8(sha3(_1277, 3) % 20)
                        mem[_1274 + 1108] = _1277
                        mem[_1274 + 1140] = 5
                        mem[_1274 + 1076] = 64
                        mem[64] = _1274 + 1172
                        mem[_1274 + 756] = uint8(sha3(_1277, 5) % 20)
                        mem[_1274 + 404] = _1274 + 660
                        stor13[uint16(stor10.field_0)].field_0 = purchased
                        uint8(stor13[uint16(stor10.field_0)].field_256) = 1
                    else:
                        cows.length++
                        cows[cows.length] = purchased
                        mem[_1274 + 372] = 0
                        mem[_1274 + 532 len 128] = call.data[calldata.size len 128]
                        mem[_1274 + 820] = _1277
                        mem[_1274 + 852] = 2
                        mem[_1274 + 788] = 64
                        mem[_1274 + 660] = uint8(sha3(_1277, 2) % 20)
                        mem[_1274 + 916] = _1277
                        mem[_1274 + 948] = 1
                        mem[_1274 + 884] = 64
                        mem[_1274 + 692] = uint8(sha3(_1277, 1) % 20)
                        mem[_1274 + 1012] = _1277
                        mem[_1274 + 1044] = 3
                        mem[_1274 + 980] = 64
                        mem[_1274 + 724] = uint8(sha3(_1277, 3) % 20)
                        mem[_1274 + 1108] = _1277
                        mem[_1274 + 1140] = 5
                        mem[_1274 + 1076] = 64
                        mem[64] = _1274 + 1172
                        mem[_1274 + 756] = uint8(sha3(_1277, 5) % 20)
                        mem[_1274 + 404] = _1274 + 660
                        stor13[uint16(stor10.field_0)].field_0 = purchased
                        uint8(stor13[uint16(stor10.field_0)].field_256) = 0
                        stor13[uint16(stor10.field_0)].field_512 % 1 = 0
                t = 0
                s = _1274 + 660
                while _1274 + 788 > s:
                    stor13[uint16(stor10.field_0)].field_512 = mem[s + 31 len 1] * 256^t or !(255 * 256^t) and stor13[uint16(stor10.field_0)].field_512
                    t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                    s = s + 32
                    continue 
                s = 4
                t = sha3(uint16(stor10.field_0), 13) + 2
                while s:
                    stor[t] = !(255 * 256^s) and stor[t]
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    t = (s + 1 / 32) + t
                    continue 
                s = sha3(uint16(stor10.field_0), 13) + (-2 * None + 3 / 32) + (None * None + 3 / 32) + 2
                while sha3(uint16(stor10.field_0), 13) + 3 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if address(ownerOf[uint16(stor10.field_0)]):
                    revert with 0, 'ERC721: token already minted'
                stor9[uint16(stor10.field_0)] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = purchased
                if msg.sender:
                    if msg.sender:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = purchased
                        stor7[uint16(stor10.field_0)] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[uint16(stor10.field_0)] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[uint16(stor10.field_0)]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[uint16(stor10.field_0)]
                    stor9[uint16(stor10.field_176)] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = purchased
                mem[32] = 2
                address(ownerOf[uint16(stor10.field_0)]) = msg.sender
                emit Transfer(0, msg.sender, purchased);
            else:
                mem[_1274 + 372] = _1277
                mem[_1274 + 404] = 4
                mem[_1274 + 340] = 64
                if not sub_ca15fd60.length:
                    revert with 0, 18
                if sha3(_1277, 4) % sub_ca15fd60.length >= sub_ca15fd60.length:
                    revert with 0, 50
                if not address(ownerOf[uint256(stor16[('map', ('var', '_1277'), ('name', 'stor4', 4)) % stor16.length])]):
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if address(ownerOf[uint256(stor16[('map', ('var', '_1277'), ('name', 'stor4', 4)) % stor16.length])]) != msg.sender:
                    if sub_ec5aa241 == 65535:
                        revert with 0, 17
                    sub_ec5aa241 = uint16(sub_ec5aa241 + 1)
                mem[_1274 + 436] = purchased
                mem[_1274 + 564] = _1277
                mem[_1274 + 596] = 2
                mem[_1274 + 532] = 64
                if sha3(_1277, 2) % 100 < stor12:
                    sub_d5843154.length++
                    sub_d5843154[sub_d5843154.length] = purchased
                    mem[_1274 + 468] = 2
                    mem[_1274 + 628 len 128] = call.data[calldata.size len 128]
                    mem[_1274 + 916] = _1277
                    mem[_1274 + 948] = 2
                    mem[_1274 + 884] = 64
                    mem[_1274 + 756] = uint8(sha3(_1277, 2) % 20)
                    mem[_1274 + 1012] = _1277
                    mem[_1274 + 1044] = 1
                    mem[_1274 + 980] = 64
                    mem[_1274 + 788] = uint8(sha3(_1277, 1) % 20)
                    mem[_1274 + 1108] = _1277
                    mem[_1274 + 1140] = 3
                    mem[_1274 + 1076] = 64
                    mem[_1274 + 820] = uint8(sha3(_1277, 3) % 20)
                    mem[_1274 + 1204] = _1277
                    mem[_1274 + 1236] = 5
                    mem[_1274 + 1172] = 64
                    mem[64] = _1274 + 1268
                    mem[_1274 + 852] = uint8(sha3(_1277, 5) % 20)
                    mem[_1274 + 500] = _1274 + 756
                    stor13[uint16(stor10.field_0)].field_0 = purchased
                    uint8(stor13[uint16(stor10.field_0)].field_256) = 2
                else:
                    if sha3(_1277, 2) % 100 < stor11:
                        sub_ca15fd60.length++
                        sub_ca15fd60[sub_ca15fd60.length] = purchased
                        mem[_1274 + 468] = 1
                        mem[_1274 + 628 len 128] = call.data[calldata.size len 128]
                        mem[_1274 + 916] = _1277
                        mem[_1274 + 948] = 2
                        mem[_1274 + 884] = 64
                        mem[_1274 + 756] = uint8(sha3(_1277, 2) % 20)
                        mem[_1274 + 1012] = _1277
                        mem[_1274 + 1044] = 1
                        mem[_1274 + 980] = 64
                        mem[_1274 + 788] = uint8(sha3(_1277, 1) % 20)
                        mem[_1274 + 1108] = _1277
                        mem[_1274 + 1140] = 3
                        mem[_1274 + 1076] = 64
                        mem[_1274 + 820] = uint8(sha3(_1277, 3) % 20)
                        mem[_1274 + 1204] = _1277
                        mem[_1274 + 1236] = 5
                        mem[_1274 + 1172] = 64
                        mem[64] = _1274 + 1268
                        mem[_1274 + 852] = uint8(sha3(_1277, 5) % 20)
                        mem[_1274 + 500] = _1274 + 756
                        stor13[uint16(stor10.field_0)].field_0 = purchased
                        uint8(stor13[uint16(stor10.field_0)].field_256) = 1
                    else:
                        cows.length++
                        cows[cows.length] = purchased
                        mem[_1274 + 468] = 0
                        mem[_1274 + 628 len 128] = call.data[calldata.size len 128]
                        mem[_1274 + 916] = _1277
                        mem[_1274 + 948] = 2
                        mem[_1274 + 884] = 64
                        mem[_1274 + 756] = uint8(sha3(_1277, 2) % 20)
                        mem[_1274 + 1012] = _1277
                        mem[_1274 + 1044] = 1
                        mem[_1274 + 980] = 64
                        mem[_1274 + 788] = uint8(sha3(_1277, 1) % 20)
                        mem[_1274 + 1108] = _1277
                        mem[_1274 + 1140] = 3
                        mem[_1274 + 1076] = 64
                        mem[_1274 + 820] = uint8(sha3(_1277, 3) % 20)
                        mem[_1274 + 1204] = _1277
                        mem[_1274 + 1236] = 5
                        mem[_1274 + 1172] = 64
                        mem[64] = _1274 + 1268
                        mem[_1274 + 852] = uint8(sha3(_1277, 5) % 20)
                        mem[_1274 + 500] = _1274 + 756
                        stor13[uint16(stor10.field_0)].field_0 = purchased
                        uint8(stor13[uint16(stor10.field_0)].field_256) = 0
                        stor13[uint16(stor10.field_0)].field_512 % 1 = 0
                t = 0
                s = _1274 + 756
                while _1274 + 884 > s:
                    stor13[uint16(stor10.field_0)].field_512 = mem[s + 31 len 1] * 256^t or !(255 * 256^t) and stor13[uint16(stor10.field_0)].field_512
                    t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                    s = s + 32
                    continue 
                s = 4
                t = sha3(uint16(stor10.field_0), 13) + 2
                while s:
                    stor[t] = !(255 * 256^s) and stor[t]
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    t = (s + 1 / 32) + t
                    continue 
                s = sha3(uint16(stor10.field_0), 13) + (-2 * None + 3 / 32) + (None * None + 3 / 32) + 2
                while sha3(uint16(stor10.field_0), 13) + 3 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if not address(ownerOf[uint256(stor16[('map', ('var', '_1277'), ('name', 'stor4', 4)) % stor16.length])]):
                    revert with 0, 'ERC721: mint to the zero address'
                if address(ownerOf[uint16(stor10.field_0)]):
                    revert with 0, 'ERC721: token already minted'
                stor9[uint16(stor10.field_0)] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = purchased
                if address(ownerOf[uint256(stor16[('map', ('var', '_1277'), ('name', 'stor4', 4)) % stor16.length])]):
                    if address(ownerOf[uint256(stor16[('map', ('var', '_1277'), ('name', 'stor4', 4)) % stor16.length])]):
                        if not address(ownerOf[uint256(stor16[('map', ('var', '_1277'), ('name', 'stor4', 4)) % stor16.length])]):
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(stor2[uint256(stor16[('map', ('var', '_1277'), ('name', 'stor4', 4)) % stor16.length])])][stor3[address(stor2[uint256(stor16[('map', ('var', '_1277'), ('name', 'stor4', 4)) % stor16.length])])]] = purchased
                        stor7[uint16(stor10.field_0)] = balanceOf[address(stor2[uint256(stor16[('map', ('var', '_1277'), ('name', 'stor4', 4)) % stor16.length])])]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[uint16(stor10.field_0)] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[uint16(stor10.field_0)]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[uint16(stor10.field_0)]
                    stor9[uint16(stor10.field_176)] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(stor2[uint256(stor16[('map', ('var', '_1277'), ('name', 'stor4', 4)) % stor16.length])])] > -2:
                    revert with 0, 17
                balanceOf[address(stor2[uint256(stor16[('map', ('var', '_1277'), ('name', 'stor4', 4)) % stor16.length])])]++
                mem[0] = purchased
                mem[32] = 2
                address(ownerOf[uint16(stor10.field_0)]) = address(ownerOf[uint256(stor16[('map', ('var', '_1277'), ('name', 'stor4', 4)) % stor16.length])])
                emit Transfer(0, address(ownerOf[uint256(stor16[('map', ('var', '_1277'), ('name', 'stor4', 4)) % stor16.length])]), purchased);
            if purchased == 65535:
                revert with 0, 17
            purchased = uint16(purchased + 1)
            if uint8(idx) == 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            continue 
}

function sub_83bdf7bf(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if not uint8(stor18.field_8):
        revert with 0, 'Main Sale hasn't started yet'
    if tx.origin != msg.sender:
        revert with 0, 'Contracts not allowed'
    if uint16(arg1) <= 0:
        revert with 0, 'Max 20 mints per tx'
    if uint16(arg1) > 20:
        revert with 0, 'Max 20 mints per tx'
    if purchased < 10000:
        revert with 0, 'Eggs sale not active'
    if purchased > -uint16(arg1) + 65535:
        revert with 0, 17
    if uint16(uint16(arg1) + purchased) > 40000:
        revert with 0, 'Sold out'
    require purchased >= 10000
    if purchased > -uint16(arg1) + 65535:
        revert with 0, 17
    if uint16(uint16(arg1) + purchased) >= 25000:
        if uint16(arg1) > 2:
            revert with 0, 17
        if uint16(arg1) and Mask(72, 0, 2000 * 10^18 * uint16(arg1)) > -1 / uint16(arg1):
            revert with 0, 17
        mem[100] = msg.sender
        mem[132] = this.address
        require ext_code.size(stor20)
        staticcall stor20.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint16(arg1) * Mask(72, 0, 2000 * 10^18 * uint16(arg1)) > ext_call.return_data[0]:
            revert with 0, 'You need to send enough milks'
        mem[ceil32(return_data.size) + 100] = msg.sender
        require ext_code.size(stor20)
        staticcall stor20.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint16(arg1) * Mask(72, 0, 2000 * 10^18 * uint16(arg1)) > ext_call.return_data[0]:
            revert with 0, 'You need to send enough milks'
        mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        mem[(2 * ceil32(return_data.size)) + 164] = uint16(arg1) * Mask(72, 0, 2000 * 10^18 * uint16(arg1))
        require ext_code.size(stor20)
        call stor20.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, uint16(arg1) * Mask(72, 0, 2000 * 10^18 * uint16(arg1))
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        idx = 1
        while uint16(idx) <= uint16(arg1):
            if 4 > !block.number:
                revert with 0, 17
            if 2 > !block.number:
                revert with 0, 17
            if 3 > !block.number:
                revert with 0, 17
            if 1 > !block.number:
                revert with 0, 17
            _1293 = mem[64]
            mem[mem[64] + 32] = block.hash(block.number + 4)
            mem[mem[64] + 64] = tx.origin
            mem[mem[64] + 84] = block.hash(block.number + 2)
            mem[mem[64] + 116] = block.hash(block.number + 3)
            mem[mem[64] + 148] = block.hash(block.number + 1)
            mem[mem[64] + 180] = purchased
            mem[mem[64] + 212] = block.timestamp
            _1294 = mem[64]
            mem[mem[64]] = 212
            mem[64] = mem[64] + 244
            _1296 = sha3(mem[_1294 + 32 len mem[_1294]])
            mem[_1293 + 276] = sha3(mem[_1294 + 32 len mem[_1294]])
            mem[_1293 + 308] = 3
            mem[_1293 + 244] = 64
            if sha3(mem[_1293 + 276], 3) % 10:
                if msg.sender != msg.sender:
                    if sub_ec5aa241 == 65535:
                        revert with 0, 17
                    sub_ec5aa241 = uint16(sub_ec5aa241 + 1)
                mem[_1293 + 340] = purchased
                mem[_1293 + 468] = _1296
                mem[_1293 + 500] = 2
                mem[_1293 + 436] = 64
                if sha3(_1296, 2) % 100 < stor12:
                    sub_d5843154.length++
                    sub_d5843154[sub_d5843154.length] = purchased
                    mem[_1293 + 372] = 2
                    mem[_1293 + 532 len 128] = call.data[calldata.size len 128]
                    mem[_1293 + 820] = _1296
                    mem[_1293 + 852] = 2
                    mem[_1293 + 788] = 64
                    mem[_1293 + 660] = uint8(sha3(_1296, 2) % 20)
                    mem[_1293 + 916] = _1296
                    mem[_1293 + 948] = 1
                    mem[_1293 + 884] = 64
                    mem[_1293 + 692] = uint8(sha3(_1296, 1) % 20)
                    mem[_1293 + 1012] = _1296
                    mem[_1293 + 1044] = 3
                    mem[_1293 + 980] = 64
                    mem[_1293 + 724] = uint8(sha3(_1296, 3) % 20)
                    mem[_1293 + 1108] = _1296
                    mem[_1293 + 1140] = 5
                    mem[_1293 + 1076] = 64
                    mem[64] = _1293 + 1172
                    mem[_1293 + 756] = uint8(sha3(_1296, 5) % 20)
                    mem[_1293 + 404] = _1293 + 660
                    stor13[uint16(stor10.field_0)].field_0 = purchased
                    uint8(stor13[uint16(stor10.field_0)].field_256) = 2
                else:
                    if sha3(_1296, 2) % 100 < stor11:
                        sub_ca15fd60.length++
                        sub_ca15fd60[sub_ca15fd60.length] = purchased
                        mem[_1293 + 372] = 1
                        mem[_1293 + 532 len 128] = call.data[calldata.size len 128]
                        mem[_1293 + 820] = _1296
                        mem[_1293 + 852] = 2
                        mem[_1293 + 788] = 64
                        mem[_1293 + 660] = uint8(sha3(_1296, 2) % 20)
                        mem[_1293 + 916] = _1296
                        mem[_1293 + 948] = 1
                        mem[_1293 + 884] = 64
                        mem[_1293 + 692] = uint8(sha3(_1296, 1) % 20)
                        mem[_1293 + 1012] = _1296
                        mem[_1293 + 1044] = 3
                        mem[_1293 + 980] = 64
                        mem[_1293 + 724] = uint8(sha3(_1296, 3) % 20)
                        mem[_1293 + 1108] = _1296
                        mem[_1293 + 1140] = 5
                        mem[_1293 + 1076] = 64
                        mem[64] = _1293 + 1172
                        mem[_1293 + 756] = uint8(sha3(_1296, 5) % 20)
                        mem[_1293 + 404] = _1293 + 660
                        stor13[uint16(stor10.field_0)].field_0 = purchased
                        uint8(stor13[uint16(stor10.field_0)].field_256) = 1
                    else:
                        cows.length++
                        cows[cows.length] = purchased
                        mem[_1293 + 372] = 0
                        mem[_1293 + 532 len 128] = call.data[calldata.size len 128]
                        mem[_1293 + 820] = _1296
                        mem[_1293 + 852] = 2
                        mem[_1293 + 788] = 64
                        mem[_1293 + 660] = uint8(sha3(_1296, 2) % 20)
                        mem[_1293 + 916] = _1296
                        mem[_1293 + 948] = 1
                        mem[_1293 + 884] = 64
                        mem[_1293 + 692] = uint8(sha3(_1296, 1) % 20)
                        mem[_1293 + 1012] = _1296
                        mem[_1293 + 1044] = 3
                        mem[_1293 + 980] = 64
                        mem[_1293 + 724] = uint8(sha3(_1296, 3) % 20)
                        mem[_1293 + 1108] = _1296
                        mem[_1293 + 1140] = 5
                        mem[_1293 + 1076] = 64
                        mem[64] = _1293 + 1172
                        mem[_1293 + 756] = uint8(sha3(_1296, 5) % 20)
                        mem[_1293 + 404] = _1293 + 660
                        stor13[uint16(stor10.field_0)].field_0 = purchased
                        uint8(stor13[uint16(stor10.field_0)].field_256) = 0
                        stor13[uint16(stor10.field_0)].field_512 % 1 = 0
                t = 0
                s = _1293 + 660
                while _1293 + 788 > s:
                    stor13[uint16(stor10.field_0)].field_512 = mem[s + 31 len 1] * 256^t or !(255 * 256^t) and stor13[uint16(stor10.field_0)].field_512
                    t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                    s = s + 32
                    continue 
                s = 4
                t = sha3(uint16(stor10.field_0), 13) + 2
                while s:
                    stor[t] = !(255 * 256^s) and stor[t]
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    t = (s + 1 / 32) + t
                    continue 
                s = sha3(uint16(stor10.field_0), 13) + (-2 * None + 3 / 32) + (None * None + 3 / 32) + 2
                while sha3(uint16(stor10.field_0), 13) + 3 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if address(ownerOf[uint16(stor10.field_0)]):
                    revert with 0, 'ERC721: token already minted'
                stor9[uint16(stor10.field_0)] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = purchased
                if msg.sender:
                    if msg.sender:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = purchased
                        stor7[uint16(stor10.field_0)] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[uint16(stor10.field_0)] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[uint16(stor10.field_0)]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[uint16(stor10.field_0)]
                    stor9[uint16(stor10.field_176)] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = purchased
                mem[32] = 2
                address(ownerOf[uint16(stor10.field_0)]) = msg.sender
                emit Transfer(0, msg.sender, purchased);
            else:
                mem[_1293 + 372] = _1296
                mem[_1293 + 404] = 4
                mem[_1293 + 340] = 64
                if not sub_ca15fd60.length:
                    revert with 0, 18
                if sha3(_1296, 4) % sub_ca15fd60.length >= sub_ca15fd60.length:
                    revert with 0, 50
                if not address(ownerOf[uint256(stor16[('map', ('var', '_1296'), ('name', 'stor4', 4)) % stor16.length])]):
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if address(ownerOf[uint256(stor16[('map', ('var', '_1296'), ('name', 'stor4', 4)) % stor16.length])]) != msg.sender:
                    if sub_ec5aa241 == 65535:
                        revert with 0, 17
                    sub_ec5aa241 = uint16(sub_ec5aa241 + 1)
                mem[_1293 + 436] = purchased
                mem[_1293 + 564] = _1296
                mem[_1293 + 596] = 2
                mem[_1293 + 532] = 64
                if sha3(_1296, 2) % 100 < stor12:
                    sub_d5843154.length++
                    sub_d5843154[sub_d5843154.length] = purchased
                    mem[_1293 + 468] = 2
                    mem[_1293 + 628 len 128] = call.data[calldata.size len 128]
                    mem[_1293 + 916] = _1296
                    mem[_1293 + 948] = 2
                    mem[_1293 + 884] = 64
                    mem[_1293 + 756] = uint8(sha3(_1296, 2) % 20)
                    mem[_1293 + 1012] = _1296
                    mem[_1293 + 1044] = 1
                    mem[_1293 + 980] = 64
                    mem[_1293 + 788] = uint8(sha3(_1296, 1) % 20)
                    mem[_1293 + 1108] = _1296
                    mem[_1293 + 1140] = 3
                    mem[_1293 + 1076] = 64
                    mem[_1293 + 820] = uint8(sha3(_1296, 3) % 20)
                    mem[_1293 + 1204] = _1296
                    mem[_1293 + 1236] = 5
                    mem[_1293 + 1172] = 64
                    mem[64] = _1293 + 1268
                    mem[_1293 + 852] = uint8(sha3(_1296, 5) % 20)
                    mem[_1293 + 500] = _1293 + 756
                    stor13[uint16(stor10.field_0)].field_0 = purchased
                    uint8(stor13[uint16(stor10.field_0)].field_256) = 2
                else:
                    if sha3(_1296, 2) % 100 < stor11:
                        sub_ca15fd60.length++
                        sub_ca15fd60[sub_ca15fd60.length] = purchased
                        mem[_1293 + 468] = 1
                        mem[_1293 + 628 len 128] = call.data[calldata.size len 128]
                        mem[_1293 + 916] = _1296
                        mem[_1293 + 948] = 2
                        mem[_1293 + 884] = 64
                        mem[_1293 + 756] = uint8(sha3(_1296, 2) % 20)
                        mem[_1293 + 1012] = _1296
                        mem[_1293 + 1044] = 1
                        mem[_1293 + 980] = 64
                        mem[_1293 + 788] = uint8(sha3(_1296, 1) % 20)
                        mem[_1293 + 1108] = _1296
                        mem[_1293 + 1140] = 3
                        mem[_1293 + 1076] = 64
                        mem[_1293 + 820] = uint8(sha3(_1296, 3) % 20)
                        mem[_1293 + 1204] = _1296
                        mem[_1293 + 1236] = 5
                        mem[_1293 + 1172] = 64
                        mem[64] = _1293 + 1268
                        mem[_1293 + 852] = uint8(sha3(_1296, 5) % 20)
                        mem[_1293 + 500] = _1293 + 756
                        stor13[uint16(stor10.field_0)].field_0 = purchased
                        uint8(stor13[uint16(stor10.field_0)].field_256) = 1
                    else:
                        cows.length++
                        cows[cows.length] = purchased
                        mem[_1293 + 468] = 0
                        mem[_1293 + 628 len 128] = call.data[calldata.size len 128]
                        mem[_1293 + 916] = _1296
                        mem[_1293 + 948] = 2
                        mem[_1293 + 884] = 64
                        mem[_1293 + 756] = uint8(sha3(_1296, 2) % 20)
                        mem[_1293 + 1012] = _1296
                        mem[_1293 + 1044] = 1
                        mem[_1293 + 980] = 64
                        mem[_1293 + 788] = uint8(sha3(_1296, 1) % 20)
                        mem[_1293 + 1108] = _1296
                        mem[_1293 + 1140] = 3
                        mem[_1293 + 1076] = 64
                        mem[_1293 + 820] = uint8(sha3(_1296, 3) % 20)
                        mem[_1293 + 1204] = _1296
                        mem[_1293 + 1236] = 5
                        mem[_1293 + 1172] = 64
                        mem[64] = _1293 + 1268
                        mem[_1293 + 852] = uint8(sha3(_1296, 5) % 20)
                        mem[_1293 + 500] = _1293 + 756
                        stor13[uint16(stor10.field_0)].field_0 = purchased
                        uint8(stor13[uint16(stor10.field_0)].field_256) = 0
                        stor13[uint16(stor10.field_0)].field_512 % 1 = 0
                t = 0
                s = _1293 + 756
                while _1293 + 884 > s:
                    stor13[uint16(stor10.field_0)].field_512 = mem[s + 31 len 1] * 256^t or !(255 * 256^t) and stor13[uint16(stor10.field_0)].field_512
                    t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                    s = s + 32
                    continue 
                s = 4
                t = sha3(uint16(stor10.field_0), 13) + 2
                while s:
                    stor[t] = !(255 * 256^s) and stor[t]
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    t = (s + 1 / 32) + t
                    continue 
                s = sha3(uint16(stor10.field_0), 13) + (-2 * None + 3 / 32) + (None * None + 3 / 32) + 2
                while sha3(uint16(stor10.field_0), 13) + 3 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if not address(ownerOf[uint256(stor16[('map', ('var', '_1296'), ('name', 'stor4', 4)) % stor16.length])]):
                    revert with 0, 'ERC721: mint to the zero address'
                if address(ownerOf[uint16(stor10.field_0)]):
                    revert with 0, 'ERC721: token already minted'
                stor9[uint16(stor10.field_0)] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = purchased
                if address(ownerOf[uint256(stor16[('map', ('var', '_1296'), ('name', 'stor4', 4)) % stor16.length])]):
                    if address(ownerOf[uint256(stor16[('map', ('var', '_1296'), ('name', 'stor4', 4)) % stor16.length])]):
                        if not address(ownerOf[uint256(stor16[('map', ('var', '_1296'), ('name', 'stor4', 4)) % stor16.length])]):
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(stor2[uint256(stor16[('map', ('var', '_1296'), ('name', 'stor4', 4)) % stor16.length])])][stor3[address(stor2[uint256(stor16[('map', ('var', '_1296'), ('name', 'stor4', 4)) % stor16.length])])]] = purchased
                        stor7[uint16(stor10.field_0)] = balanceOf[address(stor2[uint256(stor16[('map', ('var', '_1296'), ('name', 'stor4', 4)) % stor16.length])])]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[uint16(stor10.field_0)] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[uint16(stor10.field_0)]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[uint16(stor10.field_0)]
                    stor9[uint16(stor10.field_176)] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(stor2[uint256(stor16[('map', ('var', '_1296'), ('name', 'stor4', 4)) % stor16.length])])] > -2:
                    revert with 0, 17
                balanceOf[address(stor2[uint256(stor16[('map', ('var', '_1296'), ('name', 'stor4', 4)) % stor16.length])])]++
                mem[0] = purchased
                mem[32] = 2
                address(ownerOf[uint16(stor10.field_0)]) = address(ownerOf[uint256(stor16[('map', ('var', '_1296'), ('name', 'stor4', 4)) % stor16.length])])
                emit Transfer(0, address(ownerOf[uint256(stor16[('map', ('var', '_1296'), ('name', 'stor4', 4)) % stor16.length])]), purchased);
            if purchased == 65535:
                revert with 0, 17
            purchased = uint16(purchased + 1)
            if uint16(idx) == 65535:
                revert with 0, 17
            idx = uint16(idx) + 1
            continue 
    else:
        if uint16(arg1) > 4:
            revert with 0, 17
        if uint16(arg1) and Mask(72, 0, 1000 * 10^18 * uint16(arg1)) > -1 / uint16(arg1):
            revert with 0, 17
        mem[100] = msg.sender
        mem[132] = this.address
        require ext_code.size(stor20)
        staticcall stor20.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint16(arg1) * Mask(72, 0, 1000 * 10^18 * uint16(arg1)) > ext_call.return_data[0]:
            revert with 0, 'You need to send enough milks'
        mem[ceil32(return_data.size) + 100] = msg.sender
        require ext_code.size(stor20)
        staticcall stor20.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint16(arg1) * Mask(72, 0, 1000 * 10^18 * uint16(arg1)) > ext_call.return_data[0]:
            revert with 0, 'You need to send enough milks'
        mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        mem[(2 * ceil32(return_data.size)) + 164] = uint16(arg1) * Mask(72, 0, 1000 * 10^18 * uint16(arg1))
        require ext_code.size(stor20)
        call stor20.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, uint16(arg1) * Mask(72, 0, 1000 * 10^18 * uint16(arg1))
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        idx = 1
        while uint16(idx) <= uint16(arg1):
            if 4 > !block.number:
                revert with 0, 17
            if 2 > !block.number:
                revert with 0, 17
            if 3 > !block.number:
                revert with 0, 17
            if 1 > !block.number:
                revert with 0, 17
            _1297 = mem[64]
            mem[mem[64] + 32] = block.hash(block.number + 4)
            mem[mem[64] + 64] = tx.origin
            mem[mem[64] + 84] = block.hash(block.number + 2)
            mem[mem[64] + 116] = block.hash(block.number + 3)
            mem[mem[64] + 148] = block.hash(block.number + 1)
            mem[mem[64] + 180] = purchased
            mem[mem[64] + 212] = block.timestamp
            _1298 = mem[64]
            mem[mem[64]] = 212
            mem[64] = mem[64] + 244
            _1300 = sha3(mem[_1298 + 32 len mem[_1298]])
            mem[_1297 + 276] = sha3(mem[_1298 + 32 len mem[_1298]])
            mem[_1297 + 308] = 3
            mem[_1297 + 244] = 64
            if sha3(mem[_1297 + 276], 3) % 10:
                if msg.sender != msg.sender:
                    if sub_ec5aa241 == 65535:
                        revert with 0, 17
                    sub_ec5aa241 = uint16(sub_ec5aa241 + 1)
                mem[_1297 + 340] = purchased
                mem[_1297 + 468] = _1300
                mem[_1297 + 500] = 2
                mem[_1297 + 436] = 64
                if sha3(_1300, 2) % 100 < stor12:
                    sub_d5843154.length++
                    sub_d5843154[sub_d5843154.length] = purchased
                    mem[_1297 + 372] = 2
                    mem[_1297 + 532 len 128] = call.data[calldata.size len 128]
                    mem[_1297 + 820] = _1300
                    mem[_1297 + 852] = 2
                    mem[_1297 + 788] = 64
                    mem[_1297 + 660] = uint8(sha3(_1300, 2) % 20)
                    mem[_1297 + 916] = _1300
                    mem[_1297 + 948] = 1
                    mem[_1297 + 884] = 64
                    mem[_1297 + 692] = uint8(sha3(_1300, 1) % 20)
                    mem[_1297 + 1012] = _1300
                    mem[_1297 + 1044] = 3
                    mem[_1297 + 980] = 64
                    mem[_1297 + 724] = uint8(sha3(_1300, 3) % 20)
                    mem[_1297 + 1108] = _1300
                    mem[_1297 + 1140] = 5
                    mem[_1297 + 1076] = 64
                    mem[64] = _1297 + 1172
                    mem[_1297 + 756] = uint8(sha3(_1300, 5) % 20)
                    mem[_1297 + 404] = _1297 + 660
                    stor13[uint16(stor10.field_0)].field_0 = purchased
                    uint8(stor13[uint16(stor10.field_0)].field_256) = 2
                else:
                    if sha3(_1300, 2) % 100 < stor11:
                        sub_ca15fd60.length++
                        sub_ca15fd60[sub_ca15fd60.length] = purchased
                        mem[_1297 + 372] = 1
                        mem[_1297 + 532 len 128] = call.data[calldata.size len 128]
                        mem[_1297 + 820] = _1300
                        mem[_1297 + 852] = 2
                        mem[_1297 + 788] = 64
                        mem[_1297 + 660] = uint8(sha3(_1300, 2) % 20)
                        mem[_1297 + 916] = _1300
                        mem[_1297 + 948] = 1
                        mem[_1297 + 884] = 64
                        mem[_1297 + 692] = uint8(sha3(_1300, 1) % 20)
                        mem[_1297 + 1012] = _1300
                        mem[_1297 + 1044] = 3
                        mem[_1297 + 980] = 64
                        mem[_1297 + 724] = uint8(sha3(_1300, 3) % 20)
                        mem[_1297 + 1108] = _1300
                        mem[_1297 + 1140] = 5
                        mem[_1297 + 1076] = 64
                        mem[64] = _1297 + 1172
                        mem[_1297 + 756] = uint8(sha3(_1300, 5) % 20)
                        mem[_1297 + 404] = _1297 + 660
                        stor13[uint16(stor10.field_0)].field_0 = purchased
                        uint8(stor13[uint16(stor10.field_0)].field_256) = 1
                    else:
                        cows.length++
                        cows[cows.length] = purchased
                        mem[_1297 + 372] = 0
                        mem[_1297 + 532 len 128] = call.data[calldata.size len 128]
                        mem[_1297 + 820] = _1300
                        mem[_1297 + 852] = 2
                        mem[_1297 + 788] = 64
                        mem[_1297 + 660] = uint8(sha3(_1300, 2) % 20)
                        mem[_1297 + 916] = _1300
                        mem[_1297 + 948] = 1
                        mem[_1297 + 884] = 64
                        mem[_1297 + 692] = uint8(sha3(_1300, 1) % 20)
                        mem[_1297 + 1012] = _1300
                        mem[_1297 + 1044] = 3
                        mem[_1297 + 980] = 64
                        mem[_1297 + 724] = uint8(sha3(_1300, 3) % 20)
                        mem[_1297 + 1108] = _1300
                        mem[_1297 + 1140] = 5
                        mem[_1297 + 1076] = 64
                        mem[64] = _1297 + 1172
                        mem[_1297 + 756] = uint8(sha3(_1300, 5) % 20)
                        mem[_1297 + 404] = _1297 + 660
                        stor13[uint16(stor10.field_0)].field_0 = purchased
                        uint8(stor13[uint16(stor10.field_0)].field_256) = 0
                        stor13[uint16(stor10.field_0)].field_512 % 1 = 0
                t = 0
                s = _1297 + 660
                while _1297 + 788 > s:
                    stor13[uint16(stor10.field_0)].field_512 = mem[s + 31 len 1] * 256^t or !(255 * 256^t) and stor13[uint16(stor10.field_0)].field_512
                    t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                    s = s + 32
                    continue 
                s = 4
                t = sha3(uint16(stor10.field_0), 13) + 2
                while s:
                    stor[t] = !(255 * 256^s) and stor[t]
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    t = (s + 1 / 32) + t
                    continue 
                s = sha3(uint16(stor10.field_0), 13) + (-2 * None + 3 / 32) + (None * None + 3 / 32) + 2
                while sha3(uint16(stor10.field_0), 13) + 3 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if address(ownerOf[uint16(stor10.field_0)]):
                    revert with 0, 'ERC721: token already minted'
                stor9[uint16(stor10.field_0)] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = purchased
                if msg.sender:
                    if msg.sender:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = purchased
                        stor7[uint16(stor10.field_0)] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[uint16(stor10.field_0)] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[uint16(stor10.field_0)]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[uint16(stor10.field_0)]
                    stor9[uint16(stor10.field_176)] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = purchased
                mem[32] = 2
                address(ownerOf[uint16(stor10.field_0)]) = msg.sender
                emit Transfer(0, msg.sender, purchased);
            else:
                mem[_1297 + 372] = _1300
                mem[_1297 + 404] = 4
                mem[_1297 + 340] = 64
                if not sub_ca15fd60.length:
                    revert with 0, 18
                if sha3(_1300, 4) % sub_ca15fd60.length >= sub_ca15fd60.length:
                    revert with 0, 50
                if not address(ownerOf[uint256(stor16[('map', ('var', '_1300'), ('name', 'stor4', 4)) % stor16.length])]):
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if address(ownerOf[uint256(stor16[('map', ('var', '_1300'), ('name', 'stor4', 4)) % stor16.length])]) != msg.sender:
                    if sub_ec5aa241 == 65535:
                        revert with 0, 17
                    sub_ec5aa241 = uint16(sub_ec5aa241 + 1)
                mem[_1297 + 436] = purchased
                mem[_1297 + 564] = _1300
                mem[_1297 + 596] = 2
                mem[_1297 + 532] = 64
                if sha3(_1300, 2) % 100 < stor12:
                    sub_d5843154.length++
                    sub_d5843154[sub_d5843154.length] = purchased
                    mem[_1297 + 468] = 2
                    mem[_1297 + 628 len 128] = call.data[calldata.size len 128]
                    mem[_1297 + 916] = _1300
                    mem[_1297 + 948] = 2
                    mem[_1297 + 884] = 64
                    mem[_1297 + 756] = uint8(sha3(_1300, 2) % 20)
                    mem[_1297 + 1012] = _1300
                    mem[_1297 + 1044] = 1
                    mem[_1297 + 980] = 64
                    mem[_1297 + 788] = uint8(sha3(_1300, 1) % 20)
                    mem[_1297 + 1108] = _1300
                    mem[_1297 + 1140] = 3
                    mem[_1297 + 1076] = 64
                    mem[_1297 + 820] = uint8(sha3(_1300, 3) % 20)
                    mem[_1297 + 1204] = _1300
                    mem[_1297 + 1236] = 5
                    mem[_1297 + 1172] = 64
                    mem[64] = _1297 + 1268
                    mem[_1297 + 852] = uint8(sha3(_1300, 5) % 20)
                    mem[_1297 + 500] = _1297 + 756
                    stor13[uint16(stor10.field_0)].field_0 = purchased
                    uint8(stor13[uint16(stor10.field_0)].field_256) = 2
                else:
                    if sha3(_1300, 2) % 100 < stor11:
                        sub_ca15fd60.length++
                        sub_ca15fd60[sub_ca15fd60.length] = purchased
                        mem[_1297 + 468] = 1
                        mem[_1297 + 628 len 128] = call.data[calldata.size len 128]
                        mem[_1297 + 916] = _1300
                        mem[_1297 + 948] = 2
                        mem[_1297 + 884] = 64
                        mem[_1297 + 756] = uint8(sha3(_1300, 2) % 20)
                        mem[_1297 + 1012] = _1300
                        mem[_1297 + 1044] = 1
                        mem[_1297 + 980] = 64
                        mem[_1297 + 788] = uint8(sha3(_1300, 1) % 20)
                        mem[_1297 + 1108] = _1300
                        mem[_1297 + 1140] = 3
                        mem[_1297 + 1076] = 64
                        mem[_1297 + 820] = uint8(sha3(_1300, 3) % 20)
                        mem[_1297 + 1204] = _1300
                        mem[_1297 + 1236] = 5
                        mem[_1297 + 1172] = 64
                        mem[64] = _1297 + 1268
                        mem[_1297 + 852] = uint8(sha3(_1300, 5) % 20)
                        mem[_1297 + 500] = _1297 + 756
                        stor13[uint16(stor10.field_0)].field_0 = purchased
                        uint8(stor13[uint16(stor10.field_0)].field_256) = 1
                    else:
                        cows.length++
                        cows[cows.length] = purchased
                        mem[_1297 + 468] = 0
                        mem[_1297 + 628 len 128] = call.data[calldata.size len 128]
                        mem[_1297 + 916] = _1300
                        mem[_1297 + 948] = 2
                        mem[_1297 + 884] = 64
                        mem[_1297 + 756] = uint8(sha3(_1300, 2) % 20)
                        mem[_1297 + 1012] = _1300
                        mem[_1297 + 1044] = 1
                        mem[_1297 + 980] = 64
                        mem[_1297 + 788] = uint8(sha3(_1300, 1) % 20)
                        mem[_1297 + 1108] = _1300
                        mem[_1297 + 1140] = 3
                        mem[_1297 + 1076] = 64
                        mem[_1297 + 820] = uint8(sha3(_1300, 3) % 20)
                        mem[_1297 + 1204] = _1300
                        mem[_1297 + 1236] = 5
                        mem[_1297 + 1172] = 64
                        mem[64] = _1297 + 1268
                        mem[_1297 + 852] = uint8(sha3(_1300, 5) % 20)
                        mem[_1297 + 500] = _1297 + 756
                        stor13[uint16(stor10.field_0)].field_0 = purchased
                        uint8(stor13[uint16(stor10.field_0)].field_256) = 0
                        stor13[uint16(stor10.field_0)].field_512 % 1 = 0
                t = 0
                s = _1297 + 756
                while _1297 + 884 > s:
                    stor13[uint16(stor10.field_0)].field_512 = mem[s + 31 len 1] * 256^t or !(255 * 256^t) and stor13[uint16(stor10.field_0)].field_512
                    t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                    s = s + 32
                    continue 
                s = 4
                t = sha3(uint16(stor10.field_0), 13) + 2
                while s:
                    stor[t] = !(255 * 256^s) and stor[t]
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    t = (s + 1 / 32) + t
                    continue 
                s = sha3(uint16(stor10.field_0), 13) + (-2 * None + 3 / 32) + (None * None + 3 / 32) + 2
                while sha3(uint16(stor10.field_0), 13) + 3 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if not address(ownerOf[uint256(stor16[('map', ('var', '_1300'), ('name', 'stor4', 4)) % stor16.length])]):
                    revert with 0, 'ERC721: mint to the zero address'
                if address(ownerOf[uint16(stor10.field_0)]):
                    revert with 0, 'ERC721: token already minted'
                stor9[uint16(stor10.field_0)] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = purchased
                if address(ownerOf[uint256(stor16[('map', ('var', '_1300'), ('name', 'stor4', 4)) % stor16.length])]):
                    if address(ownerOf[uint256(stor16[('map', ('var', '_1300'), ('name', 'stor4', 4)) % stor16.length])]):
                        if not address(ownerOf[uint256(stor16[('map', ('var', '_1300'), ('name', 'stor4', 4)) % stor16.length])]):
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(stor2[uint256(stor16[('map', ('var', '_1300'), ('name', 'stor4', 4)) % stor16.length])])][stor3[address(stor2[uint256(stor16[('map', ('var', '_1300'), ('name', 'stor4', 4)) % stor16.length])])]] = purchased
                        stor7[uint16(stor10.field_0)] = balanceOf[address(stor2[uint256(stor16[('map', ('var', '_1300'), ('name', 'stor4', 4)) % stor16.length])])]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[uint16(stor10.field_0)] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[uint16(stor10.field_0)]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[uint16(stor10.field_0)]
                    stor9[uint16(stor10.field_176)] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(stor2[uint256(stor16[('map', ('var', '_1300'), ('name', 'stor4', 4)) % stor16.length])])] > -2:
                    revert with 0, 17
                balanceOf[address(stor2[uint256(stor16[('map', ('var', '_1300'), ('name', 'stor4', 4)) % stor16.length])])]++
                mem[0] = purchased
                mem[32] = 2
                address(ownerOf[uint16(stor10.field_0)]) = address(ownerOf[uint256(stor16[('map', ('var', '_1300'), ('name', 'stor4', 4)) % stor16.length])])
                emit Transfer(0, address(ownerOf[uint256(stor16[('map', ('var', '_1300'), ('name', 'stor4', 4)) % stor16.length])]), purchased);
            if purchased == 65535:
                revert with 0, 17
            purchased = uint16(purchased + 1)
            if uint16(idx) == 65535:
                revert with 0, 17
            idx = uint16(idx) + 1
            continue 
}



}
