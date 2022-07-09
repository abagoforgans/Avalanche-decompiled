contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - tokenURI(uint256 arg1)
#
address owner;
array of struct stor1;
array of struct stor2;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor6;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor8;
array of uint256 tokenByIndex;
mapping of uint256 stor10;
mapping of struct stor11;
uint256 _tokenIdTracker;
uint8 sub_e00d023f; offset 184
uint8 sub_2f2ec7fe; offset 192
uint32 stor13; offset 160
address stor13;
array of struct stor14;
uint256 price;
uint256 max;
address adminAddress;
address devAddress;
address sub_99c6acf2Address;
uint256 reflectionBalance;
uint256 totalDividend;
uint256 stor22;
mapping of uint256 lastDividendAt;
uint256 stor24;
uint256 stor25;
array of uint256 sub_ee6d9d6d;
mapping of uint8 stor4470;
array of uint256 stor4471;
uint256 stor1178;

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

function sub_2112a508(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1176[arg1])
}

function sub_2f2ec7fe(?) {
    return sub_2f2ec7fe
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

function reflectionBalance() {
    return reflectionBalance
}

function totalDividend() {
    return totalDividend
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function max() {
    return max
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

function dev() {
    return devAddress
}

function _tokenIdTracker() {
    return _tokenIdTracker
}

function sub_99c6acf2(?) {
    return sub_99c6acf2Address
}

function price() {
    return price
}

function lastDividendAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastDividendAt[arg1]
}

function sub_e00d023f(?) {
    return sub_e00d023f
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor6[address(arg1)][address(arg2)])
}

function sub_ee6d9d6d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 4444
    return sub_ee6d9d6d[arg1]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return not not ownerOf[arg1]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function currentRate() {
    if not tokenByIndex.length:
        return 0
    if not tokenByIndex.length:
        revert with 'NH{q', 18
    return (reflectionBalance / tokenByIndex.length)
}

function sub_8ab517d1(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1178 = arg1
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price = arg1
}

function sub_89ea54d2(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e00d023f = uint8(arg1)
}

function sub_be04c2e7(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2f2ec7fe = uint8(arg1)
}

function getReflectionBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalDividend < lastDividendAt[arg1]:
        revert with 'NH{q', 17
    return (totalDividend - lastDividendAt[arg1])
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 and stor13.field_160 % 16777216 > -1 / arg2:
        revert with 'NH{q', 17
    return address(stor13.field_0), arg2 * stor13.field_160 % 16777216 / 10000
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor6[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function reflectToOwners() payable {
    if reflectionBalance > -msg.value - 1:
        revert with 'NH{q', 17
    reflectionBalance += msg.value
    if not tokenByIndex.length:
        revert with 'NH{q', 18
    if totalDividend > -(msg.value / tokenByIndex.length) - 1:
        revert with 'NH{q', 17
    totalDividend += msg.value / tokenByIndex.length
}

function setRoyalties(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 10000:
        revert with 0, 'Royalty Too high'
    stor13.field_160 % 16777216 = arg2 % 16777216
    address(stor13.field_0) = arg1
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

function sub_8f279f02(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4470
        stor1176[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_e20e6d97(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4470
        stor1176[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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
        if not stor6[stor3[arg2]][address(msg.sender)]:
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

function setTokenURI(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ownerOf[arg1]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if stor11[arg1].field_0:
        if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor11[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor11[arg1].field_0 = 0
            idx = 0
            while stor11[arg1].field_1 + 31 / 32 > idx:
                stor11[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor11[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor11[arg1].field_0 = 0
            idx = 0
            while stor11[arg1].field_1 + 31 / 32 > idx:
                stor11[arg1][idx].field_0 = 0
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
            if not stor6[stor3[arg3]][address(msg.sender)]:
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
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor4[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
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

function getReflectionBalances() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    idx = 0
    s = 0
    while idx < balanceOf[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 23
        if totalDividend < lastDividendAt[stor7[address(msg.sender)][idx]]:
            revert with 'NH{q', 17
        if s > -totalDividend + lastDividendAt[stor7[address(msg.sender)][idx]] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[stor7[address(msg.sender)][idx]]
        continue 
    return (s * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)])
}

function name() {
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

function symbol() {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
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
            if not stor6[stor3[arg3]][address(msg.sender)]:
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
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor4[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
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

function baseTokenURI() {
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

function baseExtension() {
    if bool(stor1177.length):
        if bool(stor1177.length) == stor1177.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1177.length):
            if bool(stor1177.length) == stor1177.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1177.length.field_1:
                if 31 < stor1177.length.field_1:
                    mem[128] = uint256(stor1177.field_0)
                    idx = 128
                    s = sha3(4471)
                    while stor1177.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1177.length.field_1), data=mem[128 len ceil32(stor1177.length.field_1)])
                mem[128] = 256 * stor1177.length.field_8
        else:
            if bool(stor1177.length) == stor1177.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1177.length.field_1:
                if 31 < stor1177.length.field_1:
                    mem[128] = uint256(stor1177.field_0)
                    idx = 128
                    s = sha3(4471)
                    while stor1177.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1177.length.field_1), data=mem[128 len ceil32(stor1177.length.field_1)])
                mem[128] = 256 * stor1177.length.field_8
        mem[ceil32(stor1177.length.field_1) + 192 len ceil32(stor1177.length.field_1)] = mem[128 len ceil32(stor1177.length.field_1)]
        if ceil32(stor1177.length.field_1) > stor1177.length.field_1:
            mem[ceil32(stor1177.length.field_1) + stor1177.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1177.length.field_1), data=mem[128 len ceil32(stor1177.length.field_1)], mem[(2 * ceil32(stor1177.length.field_1)) + 192 len 2 * ceil32(stor1177.length.field_1)]), 
    if bool(stor1177.length) == stor1177.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1177.length):
        if bool(stor1177.length) == stor1177.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1177.length.field_1:
            if 31 < stor1177.length.field_1:
                mem[128] = uint256(stor1177.field_0)
                idx = 128
                s = sha3(4471)
                while stor1177.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1177.length % 128, data=mem[128 len ceil32(stor1177.length.field_1)])
            mem[128] = 256 * stor1177.length.field_8
    else:
        if bool(stor1177.length) == stor1177.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1177.length.field_1:
            if 31 < stor1177.length.field_1:
                mem[128] = uint256(stor1177.field_0)
                idx = 128
                s = sha3(4471)
                while stor1177.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1177.length % 128, data=mem[128 len ceil32(stor1177.length.field_1)])
            mem[128] = 256 * stor1177.length.field_8
    mem[ceil32(stor1177.length.field_1) + 192 len ceil32(stor1177.length.field_1)] = mem[128 len ceil32(stor1177.length.field_1)]
    if ceil32(stor1177.length.field_1) > stor1177.length.field_1:
        mem[ceil32(stor1177.length.field_1) + stor1177.length.field_1 + 192] = 0
    return Array(len=stor1177.length % 128, data=mem[128 len ceil32(stor1177.length.field_1)], mem[(2 * ceil32(stor1177.length.field_1)) + 192 len 2 * ceil32(stor1177.length.field_1)]), 
}

function claimRewards() {
    if sub_2f2ec7fe != 1:
        revert with 0, 'claim is disabled'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    require balanceOf[address(msg.sender)] > 0
    idx = 0
    s = 0
    while idx < balanceOf[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        if totalDividend < lastDividendAt[stor7[address(msg.sender)][idx]]:
            revert with 'NH{q', 17
        if s > -totalDividend + lastDividendAt[stor7[address(msg.sender)][idx]] - 1:
            revert with 'NH{q', 17
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 23
        lastDividendAt[stor7[address(msg.sender)][idx]] = totalDividend
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[stor7[address(msg.sender)][idx]]
        continue 
    call msg.sender with:
       value s * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_e00d023f != 1:
        revert with 0, 'minting is disabled'
    require stor1178 <= block.timestamp
    if msg.sender == owner:
        if stor22 < arg1:
            revert with 0, 'Not enough mintable left'
        idx = 0
        while idx < arg1:
            _1261 = mem[64]
            mem[mem[64] + 32] = block.difficulty
            mem[mem[64] + 64] = block.timestamp
            mem[mem[64] + 96] = stor22
            _1264 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            _1266 = sha3(mem[_1264 + 32 len mem[_1264]])
            if not stor22:
                revert with 'NH{q', 18
            if sha3(mem[_1264 + 32 len mem[_1264]]) % stor22 >= 4444:
                revert with 'NH{q', 50
            if not sub_ee6d9d6d[sha3(mem[_1264 + 32 len mem[_1264]]) % stor22]:
                if sha3(mem[_1264 + 32 len mem[_1264]]) % stor22 > -2:
                    revert with 'NH{q', 17
                if not stor22:
                    revert with 'NH{q', 17
                stor22--
                if stor22 >= 4444:
                    revert with 'NH{q', 50
                if not sub_ee6d9d6d[stor22]:
                    if sha3(mem[_1264 + 32 len mem[_1264]]) % stor22 >= 4444:
                        revert with 'NH{q', 50
                    sub_ee6d9d6d[sha3(mem[_1264 + 32 len mem[_1264]]) % stor22] = stor22
                else:
                    if stor22 >= 4444:
                        revert with 'NH{q', 50
                    if sha3(mem[_1264 + 32 len mem[_1264]]) % stor22 >= 4444:
                        revert with 'NH{q', 50
                    sub_ee6d9d6d[sha3(mem[_1264 + 32 len mem[_1264]]) % stor22] = sub_ee6d9d6d[stor22]
                mem[64] = _1261 + 160
                mem[_1261 + 128] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[(_1266 % stor22) + 1]:
                    revert with 0, 'ERC721: token already minted'
                stor10[(_1266 % stor22) + 1] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = (_1266 % stor22) + 1
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = (_1266 % stor22) + 1
                    stor8[(_1266 % stor22) + 1] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor10[(_1266 % stor22) + 1] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor10[(_1266 % stor22) + 1]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[(_1266 % stor22) + 1]
                    stor10[(_1266 % stor22) + 1] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                ownerOf[(_1266 % stor22) + 1] = msg.sender
                emit Transfer(0, msg.sender, (_1266 % stor22) + 1);
                if ext_code.size(msg.sender) > 0:
                    mem[_1261 + 160] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_1261 + 164] = msg.sender
                    mem[_1261 + 196] = 0
                    mem[_1261 + 228] = (_1266 % stor22) + 1
                    mem[_1261 + 260] = 128
                    mem[_1261 + 292] = 0
                    s = 0
                    while s < 0:
                        mem[_1261 + s + 324] = mem[_1261 + s + 160]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, (_1266 % stor22) + 1, 128, 0
                    mem[_1261 + 160] = ext_call.return_data[0]
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
                    mem[64] = _1261 + ceil32(return_data.size) + 160
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                mem[0] = (_1266 % stor22) + 1
                mem[32] = 23
                lastDividendAt[(_1266 % stor22) + 1] = totalDividend
            else:
                if sha3(mem[_1264 + 32 len mem[_1264]]) % stor22 >= 4444:
                    revert with 'NH{q', 50
                if sub_ee6d9d6d[sha3(mem[_1264 + 32 len mem[_1264]]) % stor22] > -2:
                    revert with 'NH{q', 17
                if not stor22:
                    revert with 'NH{q', 17
                stor22--
                if stor22 >= 4444:
                    revert with 'NH{q', 50
                if not sub_ee6d9d6d[stor22]:
                    if sha3(mem[_1264 + 32 len mem[_1264]]) % stor22 >= 4444:
                        revert with 'NH{q', 50
                    sub_ee6d9d6d[sha3(mem[_1264 + 32 len mem[_1264]]) % stor22] = stor22
                else:
                    if stor22 >= 4444:
                        revert with 'NH{q', 50
                    if sha3(mem[_1264 + 32 len mem[_1264]]) % stor22 >= 4444:
                        revert with 'NH{q', 50
                    sub_ee6d9d6d[sha3(mem[_1264 + 32 len mem[_1264]]) % stor22] = sub_ee6d9d6d[stor22]
                mem[64] = _1261 + 160
                mem[_1261 + 128] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor26[_1266 % stor22] + 1]:
                    revert with 0, 'ERC721: token already minted'
                stor10[stor26[_1266 % stor22] + 1] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = sub_ee6d9d6d[_1266 % stor22] + 1
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = sub_ee6d9d6d[_1266 % stor22] + 1
                    stor8[stor26[_1266 % stor22] + 1] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor10[stor26[_1266 % stor22] + 1] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor10[stor26[_1266 % stor22] + 1]] = tokenByIndex[tokenByIndex.length]
                    stor10[stor9[stor9.length]] = stor10[stor26[_1266 % stor22] + 1]
                    stor10[stor26[_1266 % stor22] + 1] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                ownerOf[stor26[_1266 % stor22] + 1] = msg.sender
                emit Transfer(0, msg.sender, sub_ee6d9d6d[_1266 % stor22] + 1);
                if ext_code.size(msg.sender) > 0:
                    mem[_1261 + 160] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_1261 + 164] = msg.sender
                    mem[_1261 + 196] = 0
                    mem[_1261 + 228] = sub_ee6d9d6d[_1266 % stor22] + 1
                    mem[_1261 + 260] = 128
                    mem[_1261 + 292] = 0
                    s = 0
                    while s < 0:
                        mem[_1261 + s + 324] = mem[_1261 + s + 160]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_ee6d9d6d[_1266 % stor22] + 1, 128, 0
                    mem[_1261 + 160] = ext_call.return_data[0]
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
                    mem[64] = _1261 + ceil32(return_data.size) + 160
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                mem[0] = sub_ee6d9d6d[_1266 % stor22] + 1
                mem[32] = 23
                lastDividendAt[stor26[_1266 % stor22] + 1] = totalDividend
            if not arg1:
                revert with 'NH{q', 18
            if msg.value / arg1 < msg.value / arg1 / 10:
                revert with 'NH{q', 17
            if reflectionBalance > -(msg.value / arg1 / 10) - 1:
                revert with 'NH{q', 17
            reflectionBalance += msg.value / arg1 / 10
            if not tokenByIndex.length:
                revert with 'NH{q', 18
            if totalDividend > -(msg.value / arg1 / 10 / tokenByIndex.length) - 1:
                revert with 'NH{q', 17
            totalDividend += msg.value / arg1 / 10 / tokenByIndex.length
            if stor24 >= 200 * 10^18:
                if stor25 >= 200 * 10^18:
                    call adminAddress with:
                       value (msg.value / arg1) - (msg.value / arg1 / 10) wei
                         gas 2300 * is_zero(value) wei
                else:
                    if msg.value / arg1 and 10 > -1 / msg.value / arg1:
                        revert with 'NH{q', 17
                    if (msg.value / arg1) - (msg.value / arg1 / 10) < 10 * msg.value / arg1 / 100:
                        revert with 'NH{q', 17
                    call devAddress with:
                       value 10 * msg.value / arg1 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor25 > -(10 * msg.value / arg1 / 100) - 1:
                        revert with 'NH{q', 17
                    stor25 += 10 * msg.value / arg1 / 100
                    call adminAddress with:
                       value (msg.value / arg1) - (msg.value / arg1 / 10) - (10 * msg.value / arg1 / 100) wei
                         gas 2300 * is_zero(value) wei
            else:
                if msg.value / arg1 and 10 > -1 / msg.value / arg1:
                    revert with 'NH{q', 17
                if (msg.value / arg1) - (msg.value / arg1 / 10) < 10 * msg.value / arg1 / 100:
                    revert with 'NH{q', 17
                call devAddress with:
                   value 10 * msg.value / arg1 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if stor24 > -(10 * msg.value / arg1 / 100) - 1:
                    revert with 'NH{q', 17
                stor24 += 10 * msg.value / arg1 / 100
                if stor25 >= 200 * 10^18:
                    call adminAddress with:
                       value (msg.value / arg1) - (msg.value / arg1 / 10) - (10 * msg.value / arg1 / 100) wei
                         gas 2300 * is_zero(value) wei
                else:
                    if msg.value / arg1 and 10 > -1 / msg.value / arg1:
                        revert with 'NH{q', 17
                    if (msg.value / arg1) - (msg.value / arg1 / 10) - (10 * msg.value / arg1 / 100) < 10 * msg.value / arg1 / 100:
                        revert with 'NH{q', 17
                    call devAddress with:
                       value 10 * msg.value / arg1 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor25 > -(10 * msg.value / arg1 / 100) - 1:
                        revert with 'NH{q', 17
                    stor25 += 10 * msg.value / arg1 / 100
                    call adminAddress with:
                       value (msg.value / arg1) - (msg.value / arg1 / 10) - (2 * 10 * msg.value / arg1 / 100) wei
                         gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 4470
        if not stor1176[address(msg.sender)]:
            if price and arg1 > -1 / price:
                revert with 'NH{q', 17
            if price * arg1 != msg.value:
                revert with 0, 'Sent amount is wrong'
            if stor22 < arg1:
                revert with 0, 'Not enough mintable left'
            idx = 0
            while idx < arg1:
                _1263 = mem[64]
                mem[mem[64] + 32] = block.difficulty
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = stor22
                _1270 = mem[64]
                mem[mem[64]] = 96
                mem[64] = mem[64] + 128
                _1272 = sha3(mem[_1270 + 32 len mem[_1270]])
                if not stor22:
                    revert with 'NH{q', 18
                if sha3(mem[_1270 + 32 len mem[_1270]]) % stor22 >= 4444:
                    revert with 'NH{q', 50
                if not sub_ee6d9d6d[sha3(mem[_1270 + 32 len mem[_1270]]) % stor22]:
                    if sha3(mem[_1270 + 32 len mem[_1270]]) % stor22 > -2:
                        revert with 'NH{q', 17
                    if not stor22:
                        revert with 'NH{q', 17
                    stor22--
                    if stor22 >= 4444:
                        revert with 'NH{q', 50
                    if not sub_ee6d9d6d[stor22]:
                        if sha3(mem[_1270 + 32 len mem[_1270]]) % stor22 >= 4444:
                            revert with 'NH{q', 50
                        sub_ee6d9d6d[sha3(mem[_1270 + 32 len mem[_1270]]) % stor22] = stor22
                    else:
                        if stor22 >= 4444:
                            revert with 'NH{q', 50
                        if sha3(mem[_1270 + 32 len mem[_1270]]) % stor22 >= 4444:
                            revert with 'NH{q', 50
                        sub_ee6d9d6d[sha3(mem[_1270 + 32 len mem[_1270]]) % stor22] = sub_ee6d9d6d[stor22]
                    mem[64] = _1263 + 160
                    mem[_1263 + 128] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[(_1272 % stor22) + 1]:
                        revert with 0, 'ERC721: token already minted'
                    stor10[(_1272 % stor22) + 1] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = (_1272 % stor22) + 1
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = (_1272 % stor22) + 1
                        stor8[(_1272 % stor22) + 1] = balanceOf[address(msg.sender)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor10[(_1272 % stor22) + 1] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor10[(_1272 % stor22) + 1]] = tokenByIndex[tokenByIndex.length]
                        stor10[stor9[stor9.length]] = stor10[(_1272 % stor22) + 1]
                        stor10[(_1272 % stor22) + 1] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    ownerOf[(_1272 % stor22) + 1] = msg.sender
                    emit Transfer(0, msg.sender, (_1272 % stor22) + 1);
                    if ext_code.size(msg.sender) > 0:
                        mem[_1263 + 160] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[_1263 + 164] = msg.sender
                        mem[_1263 + 196] = 0
                        mem[_1263 + 228] = (_1272 % stor22) + 1
                        mem[_1263 + 260] = 128
                        mem[_1263 + 292] = 0
                        s = 0
                        while s < 0:
                            mem[_1263 + s + 324] = mem[_1263 + s + 160]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, (_1272 % stor22) + 1, 128, 0
                        mem[_1263 + 160] = ext_call.return_data[0]
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
                        mem[64] = _1263 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[0] = (_1272 % stor22) + 1
                    mem[32] = 23
                    lastDividendAt[(_1272 % stor22) + 1] = totalDividend
                else:
                    if sha3(mem[_1270 + 32 len mem[_1270]]) % stor22 >= 4444:
                        revert with 'NH{q', 50
                    if sub_ee6d9d6d[sha3(mem[_1270 + 32 len mem[_1270]]) % stor22] > -2:
                        revert with 'NH{q', 17
                    if not stor22:
                        revert with 'NH{q', 17
                    stor22--
                    if stor22 >= 4444:
                        revert with 'NH{q', 50
                    if not sub_ee6d9d6d[stor22]:
                        if sha3(mem[_1270 + 32 len mem[_1270]]) % stor22 >= 4444:
                            revert with 'NH{q', 50
                        sub_ee6d9d6d[sha3(mem[_1270 + 32 len mem[_1270]]) % stor22] = stor22
                    else:
                        if stor22 >= 4444:
                            revert with 'NH{q', 50
                        if sha3(mem[_1270 + 32 len mem[_1270]]) % stor22 >= 4444:
                            revert with 'NH{q', 50
                        sub_ee6d9d6d[sha3(mem[_1270 + 32 len mem[_1270]]) % stor22] = sub_ee6d9d6d[stor22]
                    mem[64] = _1263 + 160
                    mem[_1263 + 128] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor26[_1272 % stor22] + 1]:
                        revert with 0, 'ERC721: token already minted'
                    stor10[stor26[_1272 % stor22] + 1] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = sub_ee6d9d6d[_1272 % stor22] + 1
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = sub_ee6d9d6d[_1272 % stor22] + 1
                        stor8[stor26[_1272 % stor22] + 1] = balanceOf[address(msg.sender)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor10[stor26[_1272 % stor22] + 1] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor10[stor26[_1272 % stor22] + 1]] = tokenByIndex[tokenByIndex.length]
                        stor10[stor9[stor9.length]] = stor10[stor26[_1272 % stor22] + 1]
                        stor10[stor26[_1272 % stor22] + 1] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    ownerOf[stor26[_1272 % stor22] + 1] = msg.sender
                    emit Transfer(0, msg.sender, sub_ee6d9d6d[_1272 % stor22] + 1);
                    if ext_code.size(msg.sender) > 0:
                        mem[_1263 + 160] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[_1263 + 164] = msg.sender
                        mem[_1263 + 196] = 0
                        mem[_1263 + 228] = sub_ee6d9d6d[_1272 % stor22] + 1
                        mem[_1263 + 260] = 128
                        mem[_1263 + 292] = 0
                        s = 0
                        while s < 0:
                            mem[_1263 + s + 324] = mem[_1263 + s + 160]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_ee6d9d6d[_1272 % stor22] + 1, 128, 0
                        mem[_1263 + 160] = ext_call.return_data[0]
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
                        mem[64] = _1263 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[0] = sub_ee6d9d6d[_1272 % stor22] + 1
                    mem[32] = 23
                    lastDividendAt[stor26[_1272 % stor22] + 1] = totalDividend
                if not arg1:
                    revert with 'NH{q', 18
                if msg.value / arg1 < msg.value / arg1 / 10:
                    revert with 'NH{q', 17
                if reflectionBalance > -(msg.value / arg1 / 10) - 1:
                    revert with 'NH{q', 17
                reflectionBalance += msg.value / arg1 / 10
                if not tokenByIndex.length:
                    revert with 'NH{q', 18
                if totalDividend > -(msg.value / arg1 / 10 / tokenByIndex.length) - 1:
                    revert with 'NH{q', 17
                totalDividend += msg.value / arg1 / 10 / tokenByIndex.length
                if stor24 >= 200 * 10^18:
                    if stor25 >= 200 * 10^18:
                        call adminAddress with:
                           value (msg.value / arg1) - (msg.value / arg1 / 10) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if msg.value / arg1 and 10 > -1 / msg.value / arg1:
                            revert with 'NH{q', 17
                        if (msg.value / arg1) - (msg.value / arg1 / 10) < 10 * msg.value / arg1 / 100:
                            revert with 'NH{q', 17
                        call devAddress with:
                           value 10 * msg.value / arg1 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor25 > -(10 * msg.value / arg1 / 100) - 1:
                            revert with 'NH{q', 17
                        stor25 += 10 * msg.value / arg1 / 100
                        call adminAddress with:
                           value (msg.value / arg1) - (msg.value / arg1 / 10) - (10 * msg.value / arg1 / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    if msg.value / arg1 and 10 > -1 / msg.value / arg1:
                        revert with 'NH{q', 17
                    if (msg.value / arg1) - (msg.value / arg1 / 10) < 10 * msg.value / arg1 / 100:
                        revert with 'NH{q', 17
                    call devAddress with:
                       value 10 * msg.value / arg1 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor24 > -(10 * msg.value / arg1 / 100) - 1:
                        revert with 'NH{q', 17
                    stor24 += 10 * msg.value / arg1 / 100
                    if stor25 >= 200 * 10^18:
                        call adminAddress with:
                           value (msg.value / arg1) - (msg.value / arg1 / 10) - (10 * msg.value / arg1 / 100) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if msg.value / arg1 and 10 > -1 / msg.value / arg1:
                            revert with 'NH{q', 17
                        if (msg.value / arg1) - (msg.value / arg1 / 10) - (10 * msg.value / arg1 / 100) < 10 * msg.value / arg1 / 100:
                            revert with 'NH{q', 17
                        call devAddress with:
                           value 10 * msg.value / arg1 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor25 > -(10 * msg.value / arg1 / 100) - 1:
                            revert with 'NH{q', 17
                        stor25 += 10 * msg.value / arg1 / 100
                        call adminAddress with:
                           value (msg.value / arg1) - (msg.value / arg1 / 10) - (2 * 10 * msg.value / arg1 / 100) wei
                             gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            require arg1 == 1
            mem[0] = msg.sender
            mem[32] = 4470
            stor1176[address(msg.sender)] = 0
            if stor22 < arg1:
                revert with 0, 'Not enough mintable left'
            idx = 0
            while idx < arg1:
                _1262 = mem[64]
                mem[mem[64] + 32] = block.difficulty
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = stor22
                _1267 = mem[64]
                mem[mem[64]] = 96
                mem[64] = mem[64] + 128
                _1269 = sha3(mem[_1267 + 32 len mem[_1267]])
                if not stor22:
                    revert with 'NH{q', 18
                if sha3(mem[_1267 + 32 len mem[_1267]]) % stor22 >= 4444:
                    revert with 'NH{q', 50
                if not sub_ee6d9d6d[sha3(mem[_1267 + 32 len mem[_1267]]) % stor22]:
                    if sha3(mem[_1267 + 32 len mem[_1267]]) % stor22 > -2:
                        revert with 'NH{q', 17
                    if not stor22:
                        revert with 'NH{q', 17
                    stor22--
                    if stor22 >= 4444:
                        revert with 'NH{q', 50
                    if not sub_ee6d9d6d[stor22]:
                        if sha3(mem[_1267 + 32 len mem[_1267]]) % stor22 >= 4444:
                            revert with 'NH{q', 50
                        sub_ee6d9d6d[sha3(mem[_1267 + 32 len mem[_1267]]) % stor22] = stor22
                    else:
                        if stor22 >= 4444:
                            revert with 'NH{q', 50
                        if sha3(mem[_1267 + 32 len mem[_1267]]) % stor22 >= 4444:
                            revert with 'NH{q', 50
                        sub_ee6d9d6d[sha3(mem[_1267 + 32 len mem[_1267]]) % stor22] = sub_ee6d9d6d[stor22]
                    mem[64] = _1262 + 160
                    mem[_1262 + 128] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[(_1269 % stor22) + 1]:
                        revert with 0, 'ERC721: token already minted'
                    stor10[(_1269 % stor22) + 1] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = (_1269 % stor22) + 1
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = (_1269 % stor22) + 1
                        stor8[(_1269 % stor22) + 1] = balanceOf[address(msg.sender)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor10[(_1269 % stor22) + 1] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor10[(_1269 % stor22) + 1]] = tokenByIndex[tokenByIndex.length]
                        stor10[stor9[stor9.length]] = stor10[(_1269 % stor22) + 1]
                        stor10[(_1269 % stor22) + 1] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    ownerOf[(_1269 % stor22) + 1] = msg.sender
                    emit Transfer(0, msg.sender, (_1269 % stor22) + 1);
                    if ext_code.size(msg.sender) > 0:
                        mem[_1262 + 160] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[_1262 + 164] = msg.sender
                        mem[_1262 + 196] = 0
                        mem[_1262 + 228] = (_1269 % stor22) + 1
                        mem[_1262 + 260] = 128
                        mem[_1262 + 292] = 0
                        s = 0
                        while s < 0:
                            mem[_1262 + s + 324] = mem[_1262 + s + 160]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, (_1269 % stor22) + 1, 128, 0
                        mem[_1262 + 160] = ext_call.return_data[0]
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
                        mem[64] = _1262 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[0] = (_1269 % stor22) + 1
                    mem[32] = 23
                    lastDividendAt[(_1269 % stor22) + 1] = totalDividend
                else:
                    if sha3(mem[_1267 + 32 len mem[_1267]]) % stor22 >= 4444:
                        revert with 'NH{q', 50
                    if sub_ee6d9d6d[sha3(mem[_1267 + 32 len mem[_1267]]) % stor22] > -2:
                        revert with 'NH{q', 17
                    if not stor22:
                        revert with 'NH{q', 17
                    stor22--
                    if stor22 >= 4444:
                        revert with 'NH{q', 50
                    if not sub_ee6d9d6d[stor22]:
                        if sha3(mem[_1267 + 32 len mem[_1267]]) % stor22 >= 4444:
                            revert with 'NH{q', 50
                        sub_ee6d9d6d[sha3(mem[_1267 + 32 len mem[_1267]]) % stor22] = stor22
                    else:
                        if stor22 >= 4444:
                            revert with 'NH{q', 50
                        if sha3(mem[_1267 + 32 len mem[_1267]]) % stor22 >= 4444:
                            revert with 'NH{q', 50
                        sub_ee6d9d6d[sha3(mem[_1267 + 32 len mem[_1267]]) % stor22] = sub_ee6d9d6d[stor22]
                    mem[64] = _1262 + 160
                    mem[_1262 + 128] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor26[_1269 % stor22] + 1]:
                        revert with 0, 'ERC721: token already minted'
                    stor10[stor26[_1269 % stor22] + 1] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = sub_ee6d9d6d[_1269 % stor22] + 1
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = sub_ee6d9d6d[_1269 % stor22] + 1
                        stor8[stor26[_1269 % stor22] + 1] = balanceOf[address(msg.sender)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor10[stor26[_1269 % stor22] + 1] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor10[stor26[_1269 % stor22] + 1]] = tokenByIndex[tokenByIndex.length]
                        stor10[stor9[stor9.length]] = stor10[stor26[_1269 % stor22] + 1]
                        stor10[stor26[_1269 % stor22] + 1] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    ownerOf[stor26[_1269 % stor22] + 1] = msg.sender
                    emit Transfer(0, msg.sender, sub_ee6d9d6d[_1269 % stor22] + 1);
                    if ext_code.size(msg.sender) > 0:
                        mem[_1262 + 160] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[_1262 + 164] = msg.sender
                        mem[_1262 + 196] = 0
                        mem[_1262 + 228] = sub_ee6d9d6d[_1269 % stor22] + 1
                        mem[_1262 + 260] = 128
                        mem[_1262 + 292] = 0
                        s = 0
                        while s < 0:
                            mem[_1262 + s + 324] = mem[_1262 + s + 160]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_ee6d9d6d[_1269 % stor22] + 1, 128, 0
                        mem[_1262 + 160] = ext_call.return_data[0]
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
                        mem[64] = _1262 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[0] = sub_ee6d9d6d[_1269 % stor22] + 1
                    mem[32] = 23
                    lastDividendAt[stor26[_1269 % stor22] + 1] = totalDividend
                if not arg1:
                    revert with 'NH{q', 18
                if msg.value / arg1 < msg.value / arg1 / 10:
                    revert with 'NH{q', 17
                if reflectionBalance > -(msg.value / arg1 / 10) - 1:
                    revert with 'NH{q', 17
                reflectionBalance += msg.value / arg1 / 10
                if not tokenByIndex.length:
                    revert with 'NH{q', 18
                if totalDividend > -(msg.value / arg1 / 10 / tokenByIndex.length) - 1:
                    revert with 'NH{q', 17
                totalDividend += msg.value / arg1 / 10 / tokenByIndex.length
                if stor24 >= 200 * 10^18:
                    if stor25 >= 200 * 10^18:
                        call adminAddress with:
                           value (msg.value / arg1) - (msg.value / arg1 / 10) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if msg.value / arg1 and 10 > -1 / msg.value / arg1:
                            revert with 'NH{q', 17
                        if (msg.value / arg1) - (msg.value / arg1 / 10) < 10 * msg.value / arg1 / 100:
                            revert with 'NH{q', 17
                        call devAddress with:
                           value 10 * msg.value / arg1 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor25 > -(10 * msg.value / arg1 / 100) - 1:
                            revert with 'NH{q', 17
                        stor25 += 10 * msg.value / arg1 / 100
                        call adminAddress with:
                           value (msg.value / arg1) - (msg.value / arg1 / 10) - (10 * msg.value / arg1 / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    if msg.value / arg1 and 10 > -1 / msg.value / arg1:
                        revert with 'NH{q', 17
                    if (msg.value / arg1) - (msg.value / arg1 / 10) < 10 * msg.value / arg1 / 100:
                        revert with 'NH{q', 17
                    call devAddress with:
                       value 10 * msg.value / arg1 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor24 > -(10 * msg.value / arg1 / 100) - 1:
                        revert with 'NH{q', 17
                    stor24 += 10 * msg.value / arg1 / 100
                    if stor25 >= 200 * 10^18:
                        call adminAddress with:
                           value (msg.value / arg1) - (msg.value / arg1 / 10) - (10 * msg.value / arg1 / 100) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if msg.value / arg1 and 10 > -1 / msg.value / arg1:
                            revert with 'NH{q', 17
                        if (msg.value / arg1) - (msg.value / arg1 / 10) - (10 * msg.value / arg1 / 100) < 10 * msg.value / arg1 / 100:
                            revert with 'NH{q', 17
                        call devAddress with:
                           value 10 * msg.value / arg1 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor25 > -(10 * msg.value / arg1 / 100) - 1:
                            revert with 'NH{q', 17
                        stor25 += 10 * msg.value / arg1 / 100
                        call adminAddress with:
                           value (msg.value / arg1) - (msg.value / arg1 / 10) - (2 * 10 * msg.value / arg1 / 100) wei
                             gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
}



}
