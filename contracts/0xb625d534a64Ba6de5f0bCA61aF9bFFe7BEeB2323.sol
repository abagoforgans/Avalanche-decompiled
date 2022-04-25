contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const tokenPrice = 2 * 10^18

const MAXTOKENS = 10000


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
array of struct stor10;
address stor12;
uint256 stor13;
address owner;
uint8 sub_571fba62; offset 160
uint8 sub_4e2c0cc3; offset 168
uint8 sub_cf9690c0; offset 176
address teamAddress;
uint256 totalDividend;
mapping of uint256 stor17;
array of address stor18;
mapping of uint256 sub_50a953d2;
uint256 stor20;
mapping of uint256 sub_0892f835;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_0892f835(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0892f835[address(arg1)]
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

function totalDividend() {
    return totalDividend
}

function sub_4e2c0cc3(?) {
    return bool(sub_4e2c0cc3)
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function sub_50a953d2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_50a953d2[address(arg1)]
}

function sub_571fba62(?) {
    return bool(sub_571fba62)
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

function team() {
    return teamAddress
}

function owner() {
    return owner
}

function sub_cf9690c0(?) {
    return bool(sub_cf9690c0)
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

function getReflectionBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if totalDividend < stor17[arg1]:
        revert with 0, 17
    return (totalDividend - stor17[arg1])
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 and stor13 > -1 / arg2:
        revert with 0, 17
    return stor12, arg2 * stor13 / 10000
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function minterOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        return 0
    if arg1 >= stor18.length:
        revert with 0, 50
    return address(stor18[arg1])
}

function startPreMint() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if sub_4e2c0cc3:
        revert with 0, 'Pre Mint period already begun'
    sub_4e2c0cc3 = 1
}

function sub_76c64c62(?) {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if sub_571fba62:
        revert with 0, 'Public mint has already begun'
    sub_571fba62 = 1
}

function setRoyaltiesAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor12 = arg1
}

function pausePublicMint() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if bool(sub_571fba62) != 1:
        revert with 0, 'Public mint is paused'
    sub_571fba62 = 0
}

function pausePreMint() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if bool(sub_4e2c0cc3) != 1:
        revert with 0, 'Pre Mint period is paused'
    sub_4e2c0cc3 = 0
}

function sub_59b46d7c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1 > 10000:
        revert with 0, 'ERC2981Royalties: Too high'
    stor13 = arg1
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

function sub_072c6e55(?) {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if sub_cf9690c0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Period of claim free nft has already begun'
    sub_cf9690c0 = 1
}

function pauseClaimNFT() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if bool(sub_cf9690c0) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Period of claim free nft is paused'
    sub_cf9690c0 = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if '*U Z' == Mask(32, 224, arg1):
        return True
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

function add_whitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 21
        sub_0892f835[mem[(32 * idx) + 140 len 20]] = 5
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor10[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor10.length = 0
            idx = 0
            while (uint255(stor10.length) * 0.5) + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor10[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor10.length = 0
            idx = 0
            while stor10.length.field_1 + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_1941fa7c(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    idx = 0
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 19
        sub_50a953d2[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_2245a0a9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not balanceOf[address(arg1)]:
        return 0
    idx = 0
    s = 0
    while idx < balanceOf[address(arg1)]:
        if not address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
        mem[32] = 17
        if totalDividend < stor17[stor6[address(arg1)][idx]]:
            revert with 0, 17
        if s > !(totalDividend - stor17[stor6[address(arg1)][idx]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + totalDividend - stor17[stor6[address(arg1)][idx]]
        continue 
    return (s * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)])
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

function getReflectionBalances() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not balanceOf[address(msg.sender)]:
        return 0
    idx = 0
    s = 0
    while idx < balanceOf[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 17
        if totalDividend < stor17[stor6[address(msg.sender)][idx]]:
            revert with 0, 17
        if s > !(totalDividend - stor17[stor6[address(msg.sender)][idx]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + totalDividend - stor17[stor6[address(msg.sender)][idx]]
        continue 
    return (s * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)])
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

function sub_eafe8249(?) payable {
    if not sub_571fba62:
        revert with 0, 'Public Mint not started!'
    if 10000 < tokenByIndex.length:
        revert with 0, 17
    if not -tokenByIndex.length + 10000:
        revert with 0, 'No more NFTs to Mint!'
    if msg.value != 2 * 10^18:
        revert with 0, 'Avax amount not correct'
    call teamAddress with:
       value 19 * 10^17 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Contract execution Failed'
    if totalDividend > -10000000000001:
        revert with 0, 17
    totalDividend += 10^13
    stor18.length++
    address(stor18[stor18.length]) = msg.sender
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor8.length]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor8.length] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = tokenByIndex.length
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length
            stor7[stor8.length] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor8.length] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[tokenByIndex.length]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor8.length]
        stor9[stor8.length] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor8.length] = msg.sender
    emit Transfer(0, msg.sender, tokenByIndex.length);
    if not return_data.size:
        if ext_code.size(msg.sender):
            require ext_code.size(msg.sender)
            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), 0, tokenByIndex.length, 128, 0
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
    else:
        if ext_code.size(msg.sender):
            require ext_code.size(msg.sender)
            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, tokenByIndex.length, 128, 0
            if not ext_call.success:
                if not return_data.size:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    emit Request(msg.sender, msg.value);
}

function baseURI() {
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor10.length):
            if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor10.length):
                if 31 < uint255(stor10.length) * 0.5:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor10.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)])
                mem[128] = 256 * stor10.length.field_8
        else:
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 0, 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)])
                mem[128] = 256 * stor10.length.field_8
        mem[ceil32(uint255(stor10.length) * 0.5) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
        if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
            mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)], mem[(2 * ceil32(uint255(stor10.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor10.length) * 0.5)]), 
    if bool(stor10.length) == stor10.length.field_1 < 32:
        revert with 0, 34
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10.length):
            if 31 < uint255(stor10.length) * 0.5:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while (uint255(stor10.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 0, 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
    if ceil32(stor10.length.field_1) > stor10.length.field_1:
        mem[stor10.length.field_1 + ceil32(stor10.length.field_1) + 192] = 0
    return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
}

function sub_7fa065f3(?) payable {
    if not sub_4e2c0cc3:
        revert with 0, 'Pre Mint period not started!'
    if not sub_0892f835[msg.sender]:
        revert with 0, 'No NFTs to Pre Mint!'
    if 10000 < tokenByIndex.length:
        revert with 0, 17
    if not -tokenByIndex.length + 10000:
        revert with 0, 'No more NFTs to Mint!'
    if msg.value != 2 * 10^18:
        revert with 0, 'Avax amount not correct'
    call teamAddress with:
       value 19 * 10^17 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Contract execution Failed'
    if totalDividend > -10000000000001:
        revert with 0, 17
    totalDividend += 10^13
    stor18.length++
    address(stor18[stor18.length]) = msg.sender
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor8.length]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor8.length] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = tokenByIndex.length
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length
            stor7[stor8.length] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor8.length] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[tokenByIndex.length]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor8.length]
        stor9[stor8.length] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor8.length] = msg.sender
    emit Transfer(0, msg.sender, tokenByIndex.length);
    if not return_data.size:
        if ext_code.size(msg.sender):
            require ext_code.size(msg.sender)
            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), 0, tokenByIndex.length, 128, 0
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
    else:
        if ext_code.size(msg.sender):
            require ext_code.size(msg.sender)
            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, tokenByIndex.length, 128, 0
            if not ext_call.success:
                if not return_data.size:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    emit Request(msg.sender, msg.value);
    if not sub_0892f835[msg.sender]:
        revert with 0, 17
    sub_0892f835[address(msg.sender)] = sub_0892f835[msg.sender] - 1
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

function claimRewards() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(msg.sender)] <= 0:
        revert with 0, 'User has 0 NFT'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not balanceOf[address(msg.sender)]:
        revert with 0, 'Not balance to claim'
    idx = 0
    s = 0
    while idx < balanceOf[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 17
        if totalDividend < stor17[stor6[address(msg.sender)][idx]]:
            revert with 0, 17
        if s > !(totalDividend - stor17[stor6[address(msg.sender)][idx]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + totalDividend - stor17[stor6[address(msg.sender)][idx]]
        continue 
    if s * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] <= 0:
        revert with 0, 'Not balance to claim'
    idx = 0
    s = 0
    while idx < balanceOf[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        if totalDividend < stor17[stor6[address(msg.sender)][idx]]:
            revert with 0, 17
        if s > !(totalDividend - stor17[stor6[address(msg.sender)][idx]]):
            revert with 0, 17
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 17
        stor17[stor6[address(msg.sender)][idx]] = totalDividend
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + totalDividend - stor17[stor6[address(msg.sender)][idx]]
        continue 
    if eth.balance(this.address) < s * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)]:
        revert with 0, 'Address: insufficient balance'
    call msg.sender with:
       value s * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit ClaimReward(msg.sender, s * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)]);
}

function sub_324cdfa9(?) payable {
    mem[64] = 96
    require not msg.value
    if not sub_cf9690c0:
        revert with 0, 'Period for claim not started!'
    mem[0] = msg.sender
    mem[32] = 19
    if sub_50a953d2[address(msg.sender)] <= 0:
        revert with 0, 'No NFT to claim!'
    if 10000 < tokenByIndex.length:
        revert with 0, 17
    if not -tokenByIndex.length + 10000:
        revert with 0, 'No NFT to claim!'
    if sub_50a953d2[address(msg.sender)] > !tokenByIndex.length:
        revert with 0, 17
    if sub_50a953d2[address(msg.sender)] + tokenByIndex.length <= 10000:
        idx = 0
        s = tokenByIndex.length
        while idx < sub_50a953d2[address(msg.sender)]:
            _262 = mem[64]
            mem[64] = mem[64] + 32
            mem[_262] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[s]:
                revert with 0, 'ERC721: token already minted'
            stor9[s] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = s
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = s
                    mem[32] = 2
                    ownerOf[s] = msg.sender
                    emit Transfer(0, msg.sender, s);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = s
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[t + _262 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, s, 128, 0
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
                        _522 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_522] == Mask(32, 224, mem[_522])
                        if Mask(32, 224, mem[_522]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = s
                    stor7[s] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = s
                    mem[32] = 2
                    ownerOf[s] = msg.sender
                    emit Transfer(0, msg.sender, s);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = s
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[t + _262 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, s, 128, 0
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
                        _524 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_524] == Mask(32, 224, mem[_524])
                        if Mask(32, 224, mem[_524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[s] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[s]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[s]
                stor9[s] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = s
                mem[32] = 2
                ownerOf[s] = msg.sender
                emit Transfer(0, msg.sender, s);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[t + _262 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, s, 128, 0
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
                    _526 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_526] == Mask(32, 224, mem[_526])
                    if Mask(32, 224, mem[_526]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            stor18.length++
            mem[0] = 18
            uint256(stor18[stor18.length]) = msg.sender or Mask(96, 160, uint256(stor18[stor18.length]))
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
    else:
        idx = 0
        s = tokenByIndex.length
        while idx < -tokenByIndex.length + 10000:
            _263 = mem[64]
            mem[64] = mem[64] + 32
            mem[_263] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[s]:
                revert with 0, 'ERC721: token already minted'
            stor9[s] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = s
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = s
                    mem[32] = 2
                    ownerOf[s] = msg.sender
                    emit Transfer(0, msg.sender, s);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = s
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[t + _263 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, s, 128, 0
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
                        _528 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_528] == Mask(32, 224, mem[_528])
                        if Mask(32, 224, mem[_528]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = s
                    stor7[s] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = s
                    mem[32] = 2
                    ownerOf[s] = msg.sender
                    emit Transfer(0, msg.sender, s);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = s
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[t + _263 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, s, 128, 0
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
                        _530 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_530] == Mask(32, 224, mem[_530])
                        if Mask(32, 224, mem[_530]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[s] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[s]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[s]
                stor9[s] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = s
                mem[32] = 2
                ownerOf[s] = msg.sender
                emit Transfer(0, msg.sender, s);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[t + _263 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, s, 128, 0
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
                    _532 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_532] == Mask(32, 224, mem[_532])
                    if Mask(32, 224, mem[_532]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            stor18.length++
            mem[0] = 18
            uint256(stor18[stor18.length]) = msg.sender or Mask(96, 160, uint256(stor18[stor18.length]))
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
    sub_50a953d2[msg.sender] = 0
    emit Request(msg.sender, 0);
}

function devClaim() payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if 10000 < tokenByIndex.length:
        revert with 0, 17
    if not -tokenByIndex.length + 10000:
        revert with 0, 'No NFT to claim!'
    if 1 > !stor20:
        revert with 0, 17
    if stor20 + 1 > 250:
        revert with 0, 'No NFT to claim!'
    if 25 > !tokenByIndex.length:
        revert with 0, 17
    if tokenByIndex.length + 25 > 10000:
        idx = 0
        s = tokenByIndex.length
        while idx < -tokenByIndex.length + 10000:
            _275 = mem[64]
            mem[64] = mem[64] + 32
            mem[_275] = 0
            if not owner:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[s]:
                revert with 0, 'ERC721: token already minted'
            stor9[s] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = s
            if owner:
                if not owner:
                    if balanceOf[stor14] > -2:
                        revert with 0, 17
                    balanceOf[stor14]++
                    mem[0] = s
                    mem[32] = 2
                    ownerOf[s] = owner
                    emit Transfer(0, owner, s);
                    if ext_code.size(owner):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = s
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[t + _275 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(owner)
                        call owner.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, s, 128, 0
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
                        _549 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_549] == Mask(32, 224, mem[_549])
                        if Mask(32, 224, mem[_549]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not owner:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[stor14][stor3[stor14]] = s
                    stor7[s] = balanceOf[stor14]
                    if balanceOf[stor14] > -2:
                        revert with 0, 17
                    balanceOf[stor14]++
                    mem[0] = s
                    mem[32] = 2
                    ownerOf[s] = owner
                    emit Transfer(0, owner, s);
                    if ext_code.size(owner):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = s
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[t + _275 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(owner)
                        call owner.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, s, 128, 0
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
                        _551 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_551] == Mask(32, 224, mem[_551])
                        if Mask(32, 224, mem[_551]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[s] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[s]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[s]
                stor9[s] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[stor14] > -2:
                    revert with 0, 17
                balanceOf[stor14]++
                mem[0] = s
                mem[32] = 2
                ownerOf[s] = owner
                emit Transfer(0, owner, s);
                if ext_code.size(owner):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[t + _275 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(owner)
                    call owner.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, s, 128, 0
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
                    _553 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_553] == Mask(32, 224, mem[_553])
                    if Mask(32, 224, mem[_553]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            stor18.length++
            mem[0] = 18
            address(stor18[stor18.length]) = owner
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        emit Request(owner, 0);
        stor20 = 250
    if 25 > !tokenByIndex.length:
        revert with 0, 17
    if var83002 >= tokenByIndex.length + 25:
        if stor20 > -26:
            revert with 0, 17
        stor20 += 25
        emit Request(owner, 0);
    mem[64] = 128
    mem[96] = 0
    s = var91002
    t = var91001
    u = var91002
    v = var91005
    v = var91008
    while owner:
        if ownerOf[s]:
            revert with 0, 'ERC721: token already minted'
        stor9[s] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = s
        if owner:
            if not owner:
                if balanceOf[stor14] > -2:
                    revert with 0, 17
                balanceOf[stor14]++
                mem[0] = s
                mem[32] = 2
                ownerOf[s] = owner
                emit Transfer(0, owner, s);
                if not ext_code.size(owner):
                    stor18.length++
                    mem[0] = 18
                    address(stor18[stor18.length]) = owner
                    if v == -1:
                        revert with 0, 17
                    if 25 > !tokenByIndex.length:
                        revert with 0, 17
                    if v + 1 >= tokenByIndex.length + 25:
                        if stor20 > -26:
                            revert with 0, 17
                        stor20 += 25
                        emit Request(owner, 0);
                    _1706 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1706] = 0
                    s = v + 1
                    t = _1706
                    u = v + 1
                    v = v + 1
                    v = v + 1
                    continue 
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = u
                mem[mem[64] + 100] = 128
                _1677 = mem[t]
                mem[mem[64] + 132] = mem[t]
                idx = 0
                while idx < _1677:
                    mem[idx + mem[64] + 164] = mem[idx + t + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1677) <= _1677:
                    require ext_code.size(owner)
                    call owner.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, u, 128, mem[mem[64] + 132 len ceil32(_1677) + 32]
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
                    _1818 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1818] == Mask(32, 224, mem[_1818])
                    if Mask(32, 224, mem[_1818]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    stor18.length++
                    mem[0] = 18
                    address(stor18[stor18.length]) = owner
                    if v == -1:
                        revert with 0, 17
                    if 25 > !tokenByIndex.length:
                        revert with 0, 17
                    if v + 1 >= tokenByIndex.length + 25:
                        if stor20 > -26:
                            revert with 0, 17
                        stor20 += 25
                        emit Request(owner, 0);
                    _1902 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1902] = 0
                    s = v + 1
                    t = _1902
                    u = v + 1
                    v = v + 1
                    v = v + 1
                    continue 
                mem[_1677 + mem[64] + 164] = 0
                require ext_code.size(owner)
                call owner.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, u, 128, mem[mem[64] + 132 len ceil32(_1677) + 32]
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
                _1819 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1819] == Mask(32, 224, mem[_1819])
                if Mask(32, 224, mem[_1819]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                stor18.length++
                mem[0] = 18
                address(stor18[stor18.length]) = owner
                if v == -1:
                    revert with 0, 17
                if 25 > !tokenByIndex.length:
                    revert with 0, 17
                if v + 1 >= tokenByIndex.length + 25:
                    if stor20 > -26:
                        revert with 0, 17
                    stor20 += 25
                    emit Request(owner, 0);
                _1903 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1903] = 0
                s = v + 1
                t = _1903
                u = v + 1
                v = v + 1
                v = v + 1
                continue 
            if not owner:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[stor14][stor3[stor14]] = s
            stor7[s] = balanceOf[stor14]
            if balanceOf[stor14] > -2:
                revert with 0, 17
            balanceOf[stor14]++
            mem[0] = s
            mem[32] = 2
            ownerOf[s] = owner
            emit Transfer(0, owner, s);
            if not ext_code.size(owner):
                stor18.length++
                mem[0] = 18
                address(stor18[stor18.length]) = owner
                if v == -1:
                    revert with 0, 17
                if 25 > !tokenByIndex.length:
                    revert with 0, 17
                if v + 1 >= tokenByIndex.length + 25:
                    if stor20 > -26:
                        revert with 0, 17
                    stor20 += 25
                    emit Request(owner, 0);
                _1735 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1735] = 0
                s = v + 1
                t = _1735
                u = v + 1
                v = v + 1
                v = v + 1
                continue 
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = u
            mem[mem[64] + 100] = 128
            _1685 = mem[t]
            mem[mem[64] + 132] = mem[t]
            idx = 0
            while idx < _1685:
                mem[idx + mem[64] + 164] = mem[idx + t + 32]
                idx = idx + 32
                continue 
            if ceil32(_1685) <= _1685:
                require ext_code.size(owner)
                call owner.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, u, 128, mem[mem[64] + 132 len ceil32(_1685) + 32]
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
                _1820 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1820] == Mask(32, 224, mem[_1820])
                if Mask(32, 224, mem[_1820]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                stor18.length++
                mem[0] = 18
                address(stor18[stor18.length]) = owner
                if v == -1:
                    revert with 0, 17
                if 25 > !tokenByIndex.length:
                    revert with 0, 17
                if v + 1 >= tokenByIndex.length + 25:
                    if stor20 > -26:
                        revert with 0, 17
                    stor20 += 25
                    emit Request(owner, 0);
                _1904 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1904] = 0
                s = v + 1
                t = _1904
                u = v + 1
                v = v + 1
                v = v + 1
                continue 
            mem[_1685 + mem[64] + 164] = 0
            require ext_code.size(owner)
            call owner.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, u, 128, mem[mem[64] + 132 len ceil32(_1685) + 32]
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
            _1821 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1821] == Mask(32, 224, mem[_1821])
            if Mask(32, 224, mem[_1821]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            stor18.length++
            mem[0] = 18
            address(stor18[stor18.length]) = owner
            if v == -1:
                revert with 0, 17
            if 25 > !tokenByIndex.length:
                revert with 0, 17
            if v + 1 >= tokenByIndex.length + 25:
                if stor20 > -26:
                    revert with 0, 17
                stor20 += 25
                emit Request(owner, 0);
            _1905 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1905] = 0
            s = v + 1
            t = _1905
            u = v + 1
            v = v + 1
            v = v + 1
            continue 
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[s] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[s]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[s]
        stor9[s] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
        if balanceOf[stor14] > -2:
            revert with 0, 17
        balanceOf[stor14]++
        mem[0] = s
        mem[32] = 2
        ownerOf[s] = owner
        emit Transfer(0, owner, s);
        if not ext_code.size(owner):
            stor18.length++
            mem[0] = 18
            address(stor18[stor18.length]) = owner
            if v == -1:
                revert with 0, 17
            if 25 > !tokenByIndex.length:
                revert with 0, 17
            if v + 1 >= tokenByIndex.length + 25:
                if stor20 > -26:
                    revert with 0, 17
                stor20 += 25
                emit Request(owner, 0);
            _1760 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1760] = 0
            s = v + 1
            t = _1760
            u = v + 1
            v = v + 1
            v = v + 1
            continue 
        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = u
        mem[mem[64] + 100] = 128
        _1689 = mem[t]
        mem[mem[64] + 132] = mem[t]
        idx = 0
        while idx < _1689:
            mem[idx + mem[64] + 164] = mem[idx + t + 32]
            idx = idx + 32
            continue 
        if ceil32(_1689) <= _1689:
            require ext_code.size(owner)
            call owner.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, u, 128, mem[mem[64] + 132 len ceil32(_1689) + 32]
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
            _1822 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1822] == Mask(32, 224, mem[_1822])
            if Mask(32, 224, mem[_1822]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            stor18.length++
            mem[0] = 18
            address(stor18[stor18.length]) = owner
            if v == -1:
                revert with 0, 17
            if 25 > !tokenByIndex.length:
                revert with 0, 17
            if v + 1 >= tokenByIndex.length + 25:
                if stor20 > -26:
                    revert with 0, 17
                stor20 += 25
                emit Request(owner, 0);
            _1906 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1906] = 0
            s = v + 1
            t = _1906
            u = v + 1
            v = v + 1
            v = v + 1
            continue 
        mem[_1689 + mem[64] + 164] = 0
        require ext_code.size(owner)
        call owner.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args msg.sender, 0, u, 128, mem[mem[64] + 132 len ceil32(_1689) + 32]
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
        _1823 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1823] == Mask(32, 224, mem[_1823])
        if Mask(32, 224, mem[_1823]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        stor18.length++
        mem[0] = 18
        address(stor18[stor18.length]) = owner
        if v == -1:
            revert with 0, 17
        if 25 > !tokenByIndex.length:
            revert with 0, 17
        if v + 1 >= tokenByIndex.length + 25:
            if stor20 > -26:
                revert with 0, 17
            stor20 += 25
            emit Request(owner, 0);
        _1907 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1907] = 0
        s = v + 1
        t = _1907
        u = v + 1
        v = v + 1
        v = v + 1
        continue 
    revert with 0, 'ERC721: mint to the zero address'
}



}
