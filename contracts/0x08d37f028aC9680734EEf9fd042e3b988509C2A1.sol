contract main {




// =====================  Runtime code  =====================


#
#  - mint(uint256 arg1, bool arg2)
#
array of struct stor0;
array of struct stor1;
address owner;
uint256 storE028;
array of struct stor11;
uint256 maxMint;
uint256 mintPrice;
mapping of uint256 phasePrice;
uint16 phase;
uint16 sub_5bca32f4; offset 16
uint16 sub_58a621cc; offset 32
uint16 sub_3351c24f; offset 48
mapping of uint8 stor17;
uint8 stor18;
address sub_97cd9a34Address; offset 8
uint256 stor18;
address sub_6c2c8feeAddress;
mapping of address ownerOf;
address stor20;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
uint256 stor9ADB;
array of uint256 tokenByIndex;
mapping of uint256 stor9;

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

function sub_3351c24f(?) {
    return sub_3351c24f
}

function sub_41cdfd78(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    return bool(stor17[arg1 << 240])
}

function exists(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(ownerOf[arg1])
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function sub_58a621cc(?) {
    return sub_58a621cc
}

function sub_5bca32f4(?) {
    return sub_5bca32f4
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function mintPrice() {
    return mintPrice
}

function sub_6c2c8fee(?) {
    return sub_6c2c8feeAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function maxMint() {
    return maxMint
}

function owner() {
    return owner
}

function sub_97cd9a34(?) {
    return sub_97cd9a34Address
}

function sub_9a333984(?) {
    return bool(uint8(stor18.field_0))
}

function phase() {
    return phase
}

function phasePrice(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return phasePrice[arg1]
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

function setMaxMint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxMint = arg1
}

function setMintPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mintPrice = arg1
}

function sub_4c982130(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    phase = uint16(arg1)
}

function setSaleState() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor18.field_0) = not uint8(stor18.field_0) or Mask(248, 8, uint256(stor18.field_0))
}

function sub_825c5d84(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    phasePrice[1] = arg1
    stor9ADB = arg2
    storE028 = arg3
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

function setContracts(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_97cd9a34Address = arg1
    sub_6c2c8feeAddress = arg2
    stor20 = arg3
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

function sub_d022e363(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 17
        stor17[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function addAvailableTokens(uint16 arg1, uint16 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor18.field_0):
        revert with 0, 'Sale is live'
    idx = arg1
    while uint16(idx) <= arg2:
        mem[0] = uint16(idx)
        mem[32] = 2
        if not ownerOf[idx << 240]:
            stor16.length++
            mem[0] = 16
            stor16[stor16.length.field_4].field_0 = !(65535 * 256^(2 * stor16.length % 16)) and stor16[stor16.length.field_4].field_0 or 256^(2 * stor16.length % 16) * uint16(idx)
        if uint16(idx) == 65535:
            revert with 0, 17
        idx = uint16(idx) + 1
        continue 
}

function sub_b3fd9b87(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor16.length < 1:
        revert with 0, 17
    if stor16.length - 1 >= stor16.length:
        revert with 0, 50
    if arg1 >= stor16.length:
        revert with 0, 50
    stor16[0.0625 / arg1].field_0 = stor('array', ('div', 0.0625, ('add', -1, ('stor', 256, 0, ('length', ('name', 'stor16', 16))))), ('name', 'stor16', 16))[uint8(stor16.length - 1)] * 256^(2 * arg1 % 16) or !(65535 * 256^(2 * arg1 % 16)) and stor16[0.0625 / arg1].field_0
    if not stor16.length:
        revert with 0, 49
    stor16[0.0625 / stor16.length - 1].field_0 = !(65535 * 256^(2 * stor16.length - 1 % 16)) and stor16[0.0625 / stor16.length - 1].field_0
    stor16.length--
}

function availableTokens() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor16.length:
        mem[128] = uint16(stor16.field_0)
        idx = 128
        s = 0
        while (32 * stor16.length) + 96 > idx:
            mem[idx + 32] = uint16(stor16.field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
            idx = idx + 32
            s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
            continue 
    mem[(32 * stor16.length) + 128] = stor16.length
    mem[(32 * stor16.length) + 160] = 64
    mem[(32 * stor16.length) + 192] = stor16.length
    idx = 0
    s = 128
    t = (32 * stor16.length) + 224
    while idx < stor16.length:
        mem[t] = mem[s + 30 len 2]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor16.length) + 128
       len (96 * stor16.length) + 96
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

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call 0xddfabcdc4d8ffc6d5beaf154f18b778f892a0740 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_6c2c8feeAddress)
    staticcall sub_6c2c8feeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_6c2c8feeAddress)
        call sub_6c2c8feeAddress.0xa9059cbb with:
             gas gas_remaining wei
            args 0xddfabcdc4d8ffc6d5beaf154f18b778f892a0740, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while (uint255(stor11.length) * 0.5) + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if sub_97cd9a34Address != msg.sender:
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

function sub_71e2322f(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > stor16.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'All tokens for this Phase are already sold'
    idx = 0
    while idx < arg2:
        mem[mem[64] + 4] = stor16.length
        mem[mem[64] + 36] = stor16.length
        require ext_code.size(stor20)
        staticcall stor20.getRandomNumber(uint256 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args stor16.length, stor16.length
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _145 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _146 = mem[_145]
        require mem[_145] == mem[_145 + 30 len 2]
        if mem[_145 + 30 len 2] >= stor16.length:
            revert with 0, 50
        if stor16.length < 1:
            revert with 0, 17
        if stor16.length - 1 >= stor16.length:
            revert with 0, 50
        if mem[_145 + 30 len 2] >= stor16.length:
            revert with 0, 50
        stor16[uint16(mem[_145]) / 16].field_0 = stor('array', ('div', 0.0625, ('add', -1, ('stor', 256, 0, ('length', ('name', 'stor16', 16))))), ('name', 'stor16', 16))[uint8(stor16.length - 1)] * 256^(2 * mem[_145] % 16) or !(65535 * 256^(2 * mem[_145] % 16)) and stor16[uint16(mem[_145]) / 16].field_0
        if not stor16.length:
            revert with 0, 49
        mem[0] = 16
        stor16[0.0625 / stor16.length - 1].field_0 = !(65535 * 256^(2 * stor16.length - 1 % 16)) and stor16[0.0625 / stor16.length - 1].field_0
        stor16.length--
        _151 = mem[64]
        mem[64] = mem[64] + 32
        mem[_151] = 0
        if not address(arg1):
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor16[uint16(_146) / 16].field_(16 * _146 % 16) - 240]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor16[uint16(_146) / 16].field_(16 * _146 % 16) - 240] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor('array', ('mask_shl', 12, 4, -4, ('var', '_146')), ('name', 'stor16', 16))[uint8(_146)]
        if address(arg1):
            if not address(arg1):
                if balanceOf[address(arg1)] > -2:
                    revert with 0, 17
                balanceOf[address(arg1)]++
                mem[0] = stor('array', ('mask_shl', 12, 4, -4, ('var', '_146')), ('name', 'stor16', 16))[uint8(_146)]
                mem[32] = 2
                ownerOf[stor16[uint16(_146) / 16].field_(16 * _146 % 16) - 240] = address(arg1)
                emit Transfer(0, address(arg1), stor('array', ('mask_shl', 12, 4, -4, ('var', '_146')), ('name', 'stor16', 16))[uint8(_146)]);
                if ext_code.size(address(arg1)):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor('array', ('mask_shl', 12, 4, -4, ('var', '_146')), ('name', 'stor16', 16))[uint8(_146)]
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _151 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(arg1))
                    call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor16[uint16(_146) / 16].field_(16 * _146 % 16) - 240, 128, 0
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
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = stor('array', ('mask_shl', 12, 4, -4, ('var', '_146')), ('name', 'stor16', 16))[uint8(_146)]
                stor7[stor16[uint16(_146) / 16].field_(16 * _146 % 16) - 240] = balanceOf[address(arg1)]
                if balanceOf[address(arg1)] > -2:
                    revert with 0, 17
                balanceOf[address(arg1)]++
                mem[0] = stor('array', ('mask_shl', 12, 4, -4, ('var', '_146')), ('name', 'stor16', 16))[uint8(_146)]
                mem[32] = 2
                ownerOf[stor16[uint16(_146) / 16].field_(16 * _146 % 16) - 240] = address(arg1)
                emit Transfer(0, address(arg1), stor('array', ('mask_shl', 12, 4, -4, ('var', '_146')), ('name', 'stor16', 16))[uint8(_146)]);
                if ext_code.size(address(arg1)):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor('array', ('mask_shl', 12, 4, -4, ('var', '_146')), ('name', 'stor16', 16))[uint8(_146)]
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _151 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(arg1))
                    call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor16[uint16(_146) / 16].field_(16 * _146 % 16) - 240, 128, 0
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
                    _292 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_292] == Mask(32, 224, mem[_292])
                    if Mask(32, 224, mem[_292]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[stor16[uint16(_146) / 16].field_(16 * _146 % 16) - 240] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[stor16[uint16(_146) / 16].field_(16 * _146 % 16) - 240]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor16[uint16(_146) / 16].field_(16 * _146 % 16) - 240]
            stor9[stor('array', ('mask_shl', 12, 4, -4, ('var', '_146')), ('name', 'stor16', 16))[uint8(_146)]] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(arg1)] > -2:
                revert with 0, 17
            balanceOf[address(arg1)]++
            mem[0] = stor('array', ('mask_shl', 12, 4, -4, ('var', '_146')), ('name', 'stor16', 16))[uint8(_146)]
            mem[32] = 2
            ownerOf[stor16[uint16(_146) / 16].field_(16 * _146 % 16) - 240] = address(arg1)
            emit Transfer(0, address(arg1), stor('array', ('mask_shl', 12, 4, -4, ('var', '_146')), ('name', 'stor16', 16))[uint8(_146)]);
            if ext_code.size(address(arg1)):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor('array', ('mask_shl', 12, 4, -4, ('var', '_146')), ('name', 'stor16', 16))[uint8(_146)]
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _151 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(arg1))
                call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor16[uint16(_146) / 16].field_(16 * _146 % 16) - 240, 128, 0
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
                _294 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_294] == Mask(32, 224, mem[_294])
                if Mask(32, 224, mem[_294]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        mem[0] = stor('array', ('mask_shl', 12, 4, -4, ('var', '_146')), ('name', 'stor16', 16))[uint8(_146)]
        mem[32] = 17
        if stor17[stor16[uint16(_146) / 16].field_(16 * _146 % 16) - 240]:
            if sub_3351c24f > 65534:
                revert with 0, 17
            sub_3351c24f = uint16(sub_3351c24f + 1)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor11.length):
                if uint255(stor11.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
                    mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 257] = mem[ceil32(uint255(stor11.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])] = mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192]) > mem[ceil32(uint255(stor11.length) * 0.5) + 192]:
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 192] + ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289] = 0
                    return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + 192], data=mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])]), 
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
                mem[ceil32(uint255(stor11.length) * 0.5) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(uint255(stor11.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
                    if ceil32(uint255(stor11.length) * 0.5) > uint255(stor11.length) * 0.5:
                        mem[(uint255(stor11.length) * 0.5) + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]) + 32], 
                mem[ceil32(uint255(stor11.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor11.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
                if ceil32(uint255(stor11.length) * 0.5) <= uint255(stor11.length) * 0.5:
                    mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]) + 32], 
                mem[(uint255(stor11.length) * 0.5) + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) > mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]) + 32], 
                _3692 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]), 
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3692) + 32], 
            if 31 >= uint255(stor11.length) * 0.5:
                mem[128] = 256 * stor11.length.field_8
                if uint255(stor11.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
                    mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 257] = mem[ceil32(uint255(stor11.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])] = mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192]) > mem[ceil32(uint255(stor11.length) * 0.5) + 192]:
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 192] + ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289] = 0
                    return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + 192], data=mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])]), 
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
                mem[ceil32(uint255(stor11.length) * 0.5) + 128] = s
                if s:
                    mem[ceil32(uint255(stor11.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor11.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
                if ceil32(uint255(stor11.length) * 0.5) > uint255(stor11.length) * 0.5:
                    mem[(uint255(stor11.length) * 0.5) + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]), 
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]) + 32], 
            mem[128] = uint256(stor11.field_0)
            idx = 128
            s = 0
            while (uint255(stor11.length) * 0.5) + 96 > idx:
                mem[idx + 32] = stor11[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 0, 34
            if not stor11.length.field_1:
                if uint255(stor11.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
                    mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 257] = mem[ceil32(uint255(stor11.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])] = mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192]) > mem[ceil32(uint255(stor11.length) * 0.5) + 192]:
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 192] + ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289] = 0
                    return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + 192], data=mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])]), 
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
                mem[ceil32(uint255(stor11.length) * 0.5) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(uint255(stor11.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
                    if ceil32(uint255(stor11.length) * 0.5) <= uint255(stor11.length) * 0.5:
                        mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]) + 32], 
                    mem[(uint255(stor11.length) * 0.5) + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) > mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]) + 32], 
                    _3704 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3704) + 32], 
                mem[ceil32(uint255(stor11.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor11.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
                if ceil32(uint255(stor11.length) * 0.5) <= uint255(stor11.length) * 0.5:
                    mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]) + 32], 
                mem[(uint255(stor11.length) * 0.5) + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]) + 32], 
                _3709 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]), 
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3709) + 32], 
            if 31 >= stor11.length.field_1:
                mem[128] = 256 * stor11.length.field_8
            else:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
        if uint255(stor11.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
            mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 225] = 32
            mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 257] = mem[ceil32(uint255(stor11.length) * 0.5) + 192]
            mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])] = mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192]) > mem[ceil32(uint255(stor11.length) * 0.5) + 192]:
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 192] + ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289] = 0
            return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + 192], data=mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])]), 
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
        mem[ceil32(uint255(stor11.length) * 0.5) + 128] = s
        if s:
            mem[ceil32(uint255(stor11.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor11.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
        if ceil32(uint255(stor11.length) * 0.5) > uint255(stor11.length) * 0.5:
            mem[(uint255(stor11.length) * 0.5) + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]:
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
        return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160])]), 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 0, 34
    mem[96] = stor11.length.field_1
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor11.length):
            if stor11.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                mem[mem[ceil32(stor11.length.field_1) + 192] + ceil32(stor11.length.field_1) + stor11.length.field_1 + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor11.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
                    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        _3718 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3718)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3718)]
                        if ceil32(_3718) > _3718:
                            mem[_3718 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3718) + 32], 
                    _3719 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3719)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3719)]
                    if ceil32(_3719) > _3719:
                        mem[_3719 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3719) + 32], 
                mem[stor11.length.field_1 + ceil32(stor11.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3720 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3720)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3720)]
                    if ceil32(_3720) > _3720:
                        mem[_3720 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3720) + 32], 
                _3721 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3721)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3721)]
                if ceil32(_3721) > _3721:
                    mem[_3721 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3721) + 32], 
            mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3722 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3722)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3722)]
                    if ceil32(_3722) > _3722:
                        mem[_3722 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3722) + 32], 
                _3723 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3723)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3723)]
                if ceil32(_3723) > _3723:
                    mem[_3723 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3723) + 32], 
            mem[stor11.length.field_1 + ceil32(stor11.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3724 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3724)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3724)]
                if ceil32(_3724) > _3724:
                    mem[_3724 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3724) + 32], 
            _3725 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3725)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3725)]
            if ceil32(_3725) > _3725:
                mem[_3725 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3725) + 32], 
        if 31 >= uint255(stor11.length) * 0.5:
            mem[128] = 256 * stor11.length.field_8
            if stor11.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                mem[mem[ceil32(stor11.length.field_1) + 192] + ceil32(stor11.length.field_1) + stor11.length.field_1 + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor11.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
                    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        _3726 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3726)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3726)]
                        if ceil32(_3726) > _3726:
                            mem[_3726 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3726) + 32], 
                    _3727 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3727)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3727)]
                    if ceil32(_3727) > _3727:
                        mem[_3727 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3727) + 32], 
                mem[stor11.length.field_1 + ceil32(stor11.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3728 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3728)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3728)]
                    if ceil32(_3728) > _3728:
                        mem[_3728 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3728) + 32], 
                _3729 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3729)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3729)]
                if ceil32(_3729) > _3729:
                    mem[_3729 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3729) + 32], 
            mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3730 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3730)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3730)]
                    if ceil32(_3730) > _3730:
                        mem[_3730 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3730) + 32], 
                _3731 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3731)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3731)]
                if ceil32(_3731) > _3731:
                    mem[_3731 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3731) + 32], 
            mem[stor11.length.field_1 + ceil32(stor11.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3732 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3732)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3732)]
                if ceil32(_3732) > _3732:
                    mem[_3732 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3732) + 32], 
            _3733 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3733)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3733)]
            if ceil32(_3733) > _3733:
                mem[_3733 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3733) + 32], 
        mem[0] = 11
        mem[128] = uint256(stor11.field_0)
        idx = 128
        s = 0
        while (uint255(stor11.length) * 0.5) + 96 > idx:
            mem[idx + 32] = stor11[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor11.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
            mem[mem[ceil32(stor11.length.field_1) + 192] + ceil32(stor11.length.field_1) + stor11.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor11.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
                    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
                    _4422 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_4422)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4422)]
                    if ceil32(_4422) > _4422:
                        mem[_4422 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_4422) + 32], 
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
                _4423 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_4423)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4423)]
                if ceil32(_4423) > _4423:
                    mem[_4423 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_4423) + 32], 
            mem[stor11.length.field_1 + ceil32(stor11.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
                _4424 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_4424)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4424)]
                if ceil32(_4424) > _4424:
                    mem[_4424 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_4424) + 32], 
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
            _4425 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_4425)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4425)]
            if ceil32(_4425) > _4425:
                mem[_4425 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_4425) + 32], 
        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
                _4426 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_4426)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4426)]
                if ceil32(_4426) > _4426:
                    mem[_4426 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_4426) + 32], 
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
            _4427 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_4427)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4427)]
            if ceil32(_4427) > _4427:
                mem[_4427 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_4427) + 32], 
        mem[stor11.length.field_1 + ceil32(stor11.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
            _4428 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_4428)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4428)]
            if ceil32(_4428) > _4428:
                mem[_4428 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_4428) + 32], 
        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
        _4429 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_4429)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4429)]
        if ceil32(_4429) > _4429:
            mem[_4429 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_4429) + 32], 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 0, 34
    if not stor11.length.field_1:
        if stor11.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
            mem[mem[ceil32(stor11.length.field_1) + 192] + ceil32(stor11.length.field_1) + stor11.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor11.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3734 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3734)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3734)]
                    if ceil32(_3734) > _3734:
                        mem[_3734 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3734) + 32], 
                _3735 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3735)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3735)]
                if ceil32(_3735) > _3735:
                    mem[_3735 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3735) + 32], 
            mem[stor11.length.field_1 + ceil32(stor11.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3736 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3736)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3736)]
                if ceil32(_3736) > _3736:
                    mem[_3736 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3736) + 32], 
            _3737 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3737)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3737)]
            if ceil32(_3737) > _3737:
                mem[_3737 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3737) + 32], 
        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3738 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3738)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3738)]
                if ceil32(_3738) > _3738:
                    mem[_3738 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3738) + 32], 
            _3739 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3739)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3739)]
            if ceil32(_3739) > _3739:
                mem[_3739 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3739) + 32], 
        mem[stor11.length.field_1 + ceil32(stor11.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            _3740 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3740)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3740)]
            if ceil32(_3740) > _3740:
                mem[_3740 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3740) + 32], 
        _3741 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3741)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3741)]
        if ceil32(_3741) > _3741:
            mem[_3741 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3741) + 32], 
    if 31 >= stor11.length.field_1:
        mem[128] = 256 * stor11.length.field_8
        if stor11.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
            mem[mem[ceil32(stor11.length.field_1) + 192] + ceil32(stor11.length.field_1) + stor11.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor11.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3742 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3742)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3742)]
                    if ceil32(_3742) > _3742:
                        mem[_3742 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3742) + 32], 
                _3743 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3743)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3743)]
                if ceil32(_3743) > _3743:
                    mem[_3743 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3743) + 32], 
            mem[stor11.length.field_1 + ceil32(stor11.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3744 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3744)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3744)]
                if ceil32(_3744) > _3744:
                    mem[_3744 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3744) + 32], 
            _3745 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3745)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3745)]
            if ceil32(_3745) > _3745:
                mem[_3745 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3745) + 32], 
        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3746 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3746)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3746)]
                if ceil32(_3746) > _3746:
                    mem[_3746 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3746) + 32], 
            _3747 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3747)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3747)]
            if ceil32(_3747) > _3747:
                mem[_3747 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3747) + 32], 
        mem[stor11.length.field_1 + ceil32(stor11.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            _3748 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3748)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3748)]
            if ceil32(_3748) > _3748:
                mem[_3748 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3748) + 32], 
        _3749 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_3749)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3749)]
        if ceil32(_3749) > _3749:
            mem[_3749 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_3749) + 32], 
    mem[0] = 11
    mem[128] = uint256(stor11.field_0)
    idx = 128
    s = 0
    while stor11.length.field_1 + 96 > idx:
        mem[idx + 32] = stor11[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor11.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
        mem[mem[ceil32(stor11.length.field_1) + 192] + ceil32(stor11.length.field_1) + stor11.length.field_1 + 289] = 0
        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
    mem[ceil32(stor11.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
                _4430 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_4430)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4430)]
                if ceil32(_4430) > _4430:
                    mem[_4430 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_4430) + 32], 
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
            _4431 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_4431)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4431)]
            if ceil32(_4431) > _4431:
                mem[_4431 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_4431) + 32], 
        mem[stor11.length.field_1 + ceil32(stor11.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
            _4432 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_4432)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4432)]
            if ceil32(_4432) > _4432:
                mem[_4432 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_4432) + 32], 
        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
        _4433 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_4433)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4433)]
        if ceil32(_4433) > _4433:
            mem[_4433 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_4433) + 32], 
    mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
            revert with 0, 50
        mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
            _4434 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_4434)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4434)]
            if ceil32(_4434) > _4434:
                mem[_4434 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_4434) + 32], 
        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
        _4435 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_4435)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4435)]
        if ceil32(_4435) > _4435:
            mem[_4435 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_4435) + 32], 
    mem[stor11.length.field_1 + ceil32(stor11.length.field_1) + ceil32(s) + 192] = 0
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
        mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
        _4436 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_4436)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4436)]
        if ceil32(_4436) > _4436:
            mem[_4436 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_4436) + 32], 
    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
    mem[64] = mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192
    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 32
    _4437 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
    mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256 len ceil32(_4437)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4437)]
    if ceil32(_4437) > _4437:
        mem[_4437 + mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 256] = 0
    return 32, mem[mem[ceil32(stor11.length.field_1) + 128] + ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 224 len ceil32(_4437) + 32], 
}



}
