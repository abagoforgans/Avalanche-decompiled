contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - tokenURI(uint256 arg1)
#
const tokenPrice = 10^18

const MAXTOKENS = 6666


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
uint8 stor15; offset 160
uint8 stor15; offset 168
address teamAddress;
uint256 totalDividend;
mapping of uint256 stor17;
array of address stor18;
mapping of uint8 stor19;
uint256 stor20;

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

function totalDividend() {
    return totalDividend
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
    return bool(stor19[address(arg1)])
}

function sub_571fba62(?) {
    return bool(uint8(stor15.field_160))
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
    return bool(uint8(stor15.field_168))
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

function setRoyaltiesAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor12 = arg1
}

function sub_76c64c62(?) {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if uint8(stor15.field_160):
        revert with 0, 'Public mint has already begun'
    uint8(stor15.field_160) = 1
}

function pausePublicMint() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if bool(uint8(stor15.field_160)) != 1:
        revert with 0, 'Public mint is paused'
    uint8(stor15.field_160) = 0
}

function sub_59b46d7c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1 > 10000:
        revert with 0, 'ERC2981Royalties: Too high'
    stor13 = arg1
}

function setTeam(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    emit NewTeam(address(arg1), teamAddress);
    teamAddress = arg1
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
    if uint8(stor15.field_168):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Period of claim free nft has already begun'
    uint8(stor15.field_168) = 1
}

function pauseClaimNFT() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if bool(uint8(stor15.field_168)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Period of claim free nft is paused'
    uint8(stor15.field_168) = 0
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

function sub_ca231c3d(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
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
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 19
        stor19[mem[(32 * idx) + 140 len 20]] = 1
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

function sub_324cdfa9(?) {
    if not uint8(stor15.field_168):
        revert with 0, 'Period for claim not started!'
    if bool(stor19[address(msg.sender)]) != 1:
        revert with 0, 'No NFT to claim!'
    if 6666 < tokenByIndex.length:
        revert with 0, 17
    if not -tokenByIndex.length + 6666:
        revert with 0, 'No NFT to claim!'
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
    stor18.length++
    uint256(stor18[stor18.length]) = msg.sender or Mask(96, 160, uint256(stor18[stor18.length]))
    stor19[msg.sender] = 0
    emit 0x42cf62e7: msg.sender, 0, 1
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

function devClaim() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if 6666 < tokenByIndex.length:
        revert with 0, 17
    if not -tokenByIndex.length + 6666:
        revert with 0, 'No NFT to claim!'
    if 166 == stor20:
        revert with 0, 'No NFT to claim!'
    if stor20 != 160:
        if tokenByIndex.length > -41:
            revert with 0, 17
        if var78002 >= tokenByIndex.length + 40:
            if stor20 > -41:
                revert with 0, 17
            stor20 += 40
            emit 0x42cf62e7: owner, 0, 40
        mem[64] = 128
        mem[96] = 0
        s = var86002
        t = var86001
        u = var86002
        v = var86005
        v = var86008
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
                        if tokenByIndex.length > -41:
                            revert with 0, 17
                        if v + 1 >= tokenByIndex.length + 40:
                            if stor20 > -41:
                                revert with 0, 17
                            stor20 += 40
                            emit 0x42cf62e7: owner, 0, 40
                        _2689 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2689] = 0
                        s = v + 1
                        t = _2689
                        u = v + 1
                        v = v + 1
                        v = v + 1
                        continue 
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = u
                    mem[mem[64] + 100] = 128
                    _2631 = mem[t]
                    mem[mem[64] + 132] = mem[t]
                    idx = 0
                    while idx < _2631:
                        mem[idx + mem[64] + 164] = mem[idx + t + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2631) <= _2631:
                        require ext_code.size(owner)
                        call owner.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, u, 128, mem[mem[64] + 132 len ceil32(_2631) + 32]
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
                        _2913 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2913] == Mask(32, 224, mem[_2913])
                        if Mask(32, 224, mem[_2913]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        stor18.length++
                        mem[0] = 18
                        address(stor18[stor18.length]) = owner
                        if v == -1:
                            revert with 0, 17
                        if tokenByIndex.length > -41:
                            revert with 0, 17
                        if v + 1 >= tokenByIndex.length + 40:
                            if stor20 > -41:
                                revert with 0, 17
                            stor20 += 40
                            emit 0x42cf62e7: owner, 0, 40
                        _3081 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3081] = 0
                        s = v + 1
                        t = _3081
                        u = v + 1
                        v = v + 1
                        v = v + 1
                        continue 
                    mem[_2631 + mem[64] + 164] = 0
                    require ext_code.size(owner)
                    call owner.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, u, 128, mem[mem[64] + 132 len ceil32(_2631) + 32]
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
                    _2914 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2914] == Mask(32, 224, mem[_2914])
                    if Mask(32, 224, mem[_2914]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    stor18.length++
                    mem[0] = 18
                    address(stor18[stor18.length]) = owner
                    if v == -1:
                        revert with 0, 17
                    if tokenByIndex.length > -41:
                        revert with 0, 17
                    if v + 1 >= tokenByIndex.length + 40:
                        if stor20 > -41:
                            revert with 0, 17
                        stor20 += 40
                        emit 0x42cf62e7: owner, 0, 40
                    _3082 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3082] = 0
                    s = v + 1
                    t = _3082
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
                    if tokenByIndex.length > -41:
                        revert with 0, 17
                    if v + 1 >= tokenByIndex.length + 40:
                        if stor20 > -41:
                            revert with 0, 17
                        stor20 += 40
                        emit 0x42cf62e7: owner, 0, 40
                    _2747 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2747] = 0
                    s = v + 1
                    t = _2747
                    u = v + 1
                    v = v + 1
                    v = v + 1
                    continue 
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = u
                mem[mem[64] + 100] = 128
                _2647 = mem[t]
                mem[mem[64] + 132] = mem[t]
                idx = 0
                while idx < _2647:
                    mem[idx + mem[64] + 164] = mem[idx + t + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2647) <= _2647:
                    require ext_code.size(owner)
                    call owner.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, u, 128, mem[mem[64] + 132 len ceil32(_2647) + 32]
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
                    _2915 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2915] == Mask(32, 224, mem[_2915])
                    if Mask(32, 224, mem[_2915]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    stor18.length++
                    mem[0] = 18
                    address(stor18[stor18.length]) = owner
                    if v == -1:
                        revert with 0, 17
                    if tokenByIndex.length > -41:
                        revert with 0, 17
                    if v + 1 >= tokenByIndex.length + 40:
                        if stor20 > -41:
                            revert with 0, 17
                        stor20 += 40
                        emit 0x42cf62e7: owner, 0, 40
                    _3083 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3083] = 0
                    s = v + 1
                    t = _3083
                    u = v + 1
                    v = v + 1
                    v = v + 1
                    continue 
                mem[_2647 + mem[64] + 164] = 0
                require ext_code.size(owner)
                call owner.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, u, 128, mem[mem[64] + 132 len ceil32(_2647) + 32]
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
                _2916 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2916] == Mask(32, 224, mem[_2916])
                if Mask(32, 224, mem[_2916]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                stor18.length++
                mem[0] = 18
                address(stor18[stor18.length]) = owner
                if v == -1:
                    revert with 0, 17
                if tokenByIndex.length > -41:
                    revert with 0, 17
                if v + 1 >= tokenByIndex.length + 40:
                    if stor20 > -41:
                        revert with 0, 17
                    stor20 += 40
                    emit 0x42cf62e7: owner, 0, 40
                _3084 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3084] = 0
                s = v + 1
                t = _3084
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
                if tokenByIndex.length > -41:
                    revert with 0, 17
                if v + 1 >= tokenByIndex.length + 40:
                    if stor20 > -41:
                        revert with 0, 17
                    stor20 += 40
                    emit 0x42cf62e7: owner, 0, 40
                _2795 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2795] = 0
                s = v + 1
                t = _2795
                u = v + 1
                v = v + 1
                v = v + 1
                continue 
            _2648 = mem[64]
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = u
            mem[mem[64] + 100] = 128
            _2653 = mem[t]
            mem[mem[64] + 132] = mem[t]
            idx = 0
            while idx < _2653:
                mem[idx + mem[64] + 164] = mem[idx + t + 32]
                idx = idx + 32
                continue 
            if ceil32(_2653) <= _2653:
                require ext_code.size(owner)
                call owner.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_2653) + _2648 + -mem[64] + 160]
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
                _2917 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2917] == Mask(32, 224, mem[_2917])
                if Mask(32, 224, mem[_2917]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                stor18.length++
                mem[0] = 18
                address(stor18[stor18.length]) = owner
                if v == -1:
                    revert with 0, 17
                if tokenByIndex.length > -41:
                    revert with 0, 17
                if v + 1 >= tokenByIndex.length + 40:
                    if stor20 > -41:
                        revert with 0, 17
                    stor20 += 40
                    emit 0x42cf62e7: owner, 0, 40
                _3085 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3085] = 0
                s = v + 1
                t = _3085
                u = v + 1
                v = v + 1
                v = v + 1
                continue 
            mem[_2653 + _2648 + 164] = 0
            require ext_code.size(owner)
            call owner.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(_2653) + _2648 + -mem[64] + 160]
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
            _2918 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2918] == Mask(32, 224, mem[_2918])
            if Mask(32, 224, mem[_2918]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            stor18.length++
            mem[0] = 18
            address(stor18[stor18.length]) = owner
            if v == -1:
                revert with 0, 17
            if tokenByIndex.length > -41:
                revert with 0, 17
            if v + 1 >= tokenByIndex.length + 40:
                if stor20 > -41:
                    revert with 0, 17
                stor20 += 40
                emit 0x42cf62e7: owner, 0, 40
            _3086 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3086] = 0
            s = v + 1
            t = _3086
            u = v + 1
            v = v + 1
            v = v + 1
            continue 
    else:
        if tokenByIndex.length > -7:
            revert with 0, 17
        if var78002 >= tokenByIndex.length + 6:
            if stor20 > -7:
                revert with 0, 17
            stor20 += 6
            emit 0x42cf62e7: owner, 0, 6
        mem[64] = 128
        mem[96] = 0
        s = var86002
        t = var86001
        u = var86002
        v = var86005
        v = var86008
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
                        if tokenByIndex.length > -7:
                            revert with 0, 17
                        if v + 1 >= tokenByIndex.length + 6:
                            if stor20 > -7:
                                revert with 0, 17
                            stor20 += 6
                            emit 0x42cf62e7: owner, 0, 6
                        _2698 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2698] = 0
                        s = v + 1
                        t = _2698
                        u = v + 1
                        v = v + 1
                        v = v + 1
                        continue 
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = u
                    mem[mem[64] + 100] = 128
                    _2634 = mem[t]
                    mem[mem[64] + 132] = mem[t]
                    idx = 0
                    while idx < _2634:
                        mem[idx + mem[64] + 164] = mem[idx + t + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2634) <= _2634:
                        require ext_code.size(owner)
                        call owner.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, u, 128, mem[mem[64] + 132 len ceil32(_2634) + 32]
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
                        _2919 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2919] == Mask(32, 224, mem[_2919])
                        if Mask(32, 224, mem[_2919]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        stor18.length++
                        mem[0] = 18
                        address(stor18[stor18.length]) = owner
                        if v == -1:
                            revert with 0, 17
                        if tokenByIndex.length > -7:
                            revert with 0, 17
                        if v + 1 >= tokenByIndex.length + 6:
                            if stor20 > -7:
                                revert with 0, 17
                            stor20 += 6
                            emit 0x42cf62e7: owner, 0, 6
                        _3087 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3087] = 0
                        s = v + 1
                        t = _3087
                        u = v + 1
                        v = v + 1
                        v = v + 1
                        continue 
                    mem[_2634 + mem[64] + 164] = 0
                    require ext_code.size(owner)
                    call owner.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, u, 128, mem[mem[64] + 132 len ceil32(_2634) + 32]
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
                    _2920 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2920] == Mask(32, 224, mem[_2920])
                    if Mask(32, 224, mem[_2920]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    stor18.length++
                    mem[0] = 18
                    address(stor18[stor18.length]) = owner
                    if v == -1:
                        revert with 0, 17
                    if tokenByIndex.length > -7:
                        revert with 0, 17
                    if v + 1 >= tokenByIndex.length + 6:
                        if stor20 > -7:
                            revert with 0, 17
                        stor20 += 6
                        emit 0x42cf62e7: owner, 0, 6
                    _3088 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3088] = 0
                    s = v + 1
                    t = _3088
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
                    if tokenByIndex.length > -7:
                        revert with 0, 17
                    if v + 1 >= tokenByIndex.length + 6:
                        if stor20 > -7:
                            revert with 0, 17
                        stor20 += 6
                        emit 0x42cf62e7: owner, 0, 6
                    _2760 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2760] = 0
                    s = v + 1
                    t = _2760
                    u = v + 1
                    v = v + 1
                    v = v + 1
                    continue 
                _2646 = mem[64]
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = u
                mem[mem[64] + 100] = 128
                _2649 = mem[t]
                mem[mem[64] + 132] = mem[t]
                idx = 0
                while idx < _2649:
                    mem[idx + mem[64] + 164] = mem[idx + t + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2649) <= _2649:
                    require ext_code.size(owner)
                    call owner.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_2649) + _2646 + -mem[64] + 160]
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
                    _2921 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2921] == Mask(32, 224, mem[_2921])
                    if Mask(32, 224, mem[_2921]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    stor18.length++
                    mem[0] = 18
                    address(stor18[stor18.length]) = owner
                    if v == -1:
                        revert with 0, 17
                    if tokenByIndex.length > -7:
                        revert with 0, 17
                    if v + 1 >= tokenByIndex.length + 6:
                        if stor20 > -7:
                            revert with 0, 17
                        stor20 += 6
                        emit 0x42cf62e7: owner, 0, 6
                    _3089 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3089] = 0
                    s = v + 1
                    t = _3089
                    u = v + 1
                    v = v + 1
                    v = v + 1
                    continue 
                mem[_2649 + _2646 + 164] = 0
                require ext_code.size(owner)
                call owner.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_2649) + _2646 + -mem[64] + 160]
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
                _2922 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2922] == Mask(32, 224, mem[_2922])
                if Mask(32, 224, mem[_2922]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                stor18.length++
                mem[0] = 18
                address(stor18[stor18.length]) = owner
                if v == -1:
                    revert with 0, 17
                if tokenByIndex.length > -7:
                    revert with 0, 17
                if v + 1 >= tokenByIndex.length + 6:
                    if stor20 > -7:
                        revert with 0, 17
                    stor20 += 6
                    emit 0x42cf62e7: owner, 0, 6
                _3090 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3090] = 0
                s = v + 1
                t = _3090
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
                if tokenByIndex.length > -7:
                    revert with 0, 17
                if v + 1 >= tokenByIndex.length + 6:
                    if stor20 > -7:
                        revert with 0, 17
                    stor20 += 6
                    emit 0x42cf62e7: owner, 0, 6
                _2806 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2806] = 0
                s = v + 1
                t = _2806
                u = v + 1
                v = v + 1
                v = v + 1
                continue 
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = u
            mem[mem[64] + 100] = 128
            _2656 = mem[t]
            mem[mem[64] + 132] = mem[t]
            idx = 0
            while idx < _2656:
                mem[idx + mem[64] + 164] = mem[idx + t + 32]
                idx = idx + 32
                continue 
            if ceil32(_2656) <= _2656:
                require ext_code.size(owner)
                call owner.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, u, 128, mem[mem[64] + 132 len ceil32(_2656) + 32]
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
                _2923 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2923] == Mask(32, 224, mem[_2923])
                if Mask(32, 224, mem[_2923]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                stor18.length++
                mem[0] = 18
                address(stor18[stor18.length]) = owner
                if v == -1:
                    revert with 0, 17
                if tokenByIndex.length > -7:
                    revert with 0, 17
                if v + 1 >= tokenByIndex.length + 6:
                    if stor20 > -7:
                        revert with 0, 17
                    stor20 += 6
                    emit 0x42cf62e7: owner, 0, 6
                _3091 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3091] = 0
                s = v + 1
                t = _3091
                u = v + 1
                v = v + 1
                v = v + 1
                continue 
            mem[_2656 + mem[64] + 164] = 0
            require ext_code.size(owner)
            call owner.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, u, 128, mem[mem[64] + 132 len ceil32(_2656) + 32]
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
            _2924 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2924] == Mask(32, 224, mem[_2924])
            if Mask(32, 224, mem[_2924]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            stor18.length++
            mem[0] = 18
            address(stor18[stor18.length]) = owner
            if v == -1:
                revert with 0, 17
            if tokenByIndex.length > -7:
                revert with 0, 17
            if v + 1 >= tokenByIndex.length + 6:
                if stor20 > -7:
                    revert with 0, 17
                stor20 += 6
                emit 0x42cf62e7: owner, 0, 6
            _3092 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3092] = 0
            s = v + 1
            t = _3092
            u = v + 1
            v = v + 1
            v = v + 1
            continue 
    revert with 0, 'ERC721: mint to the zero address'
}

function sub_9751cfb7(?) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor15.field_160):
        revert with 0, 'Public Mint not started!'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'minimum to mint is 1 and maximum is 10!'
    if arg1 > 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'minimum to mint is 1 and maximum is 10!'
    if 6666 < tokenByIndex.length:
        revert with 0, 17
    if not -tokenByIndex.length + 6666:
        revert with 0, 'No more NFTs to Mint!'
    if tokenByIndex.length > !arg1:
        revert with 0, 17
    if tokenByIndex.length + arg1 >= 6666:
        revert with 0, 'No more NFTs to Mint!'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10^18 * arg1 > msg.value:
        revert with 0, 'Avax amount not correct'
    if arg1 > 0x147f12e9228414081d86ffdbc689646afff353909c310fb0cf:
        revert with 0, 17
    call teamAddress with:
       value 25 * 10^13 * 3600 * arg1 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'Contract execution Failed'
        if arg1 > 0x12c35bf5bf82dd45a9b19939f3e37512b15f95cac6928b21f60c5c:
            revert with 0, 17
        if totalDividend > !(15001500150015 * arg1):
            revert with 0, 17
        totalDividend += 15001500150015 * arg1
        if tokenByIndex.length > !arg1:
            revert with 0, 17
        if var113002 >= tokenByIndex.length + arg1:
            emit 0x42cf62e7: msg.sender, msg.value, arg1
        stor18.length++
        mem[0] = 18
        address(stor18[stor18.length]) = msg.sender
        mem[64] = 128
        mem[96] = 0
        s = var119002
        t = var119001
        u = var119002
        v = var119005
        v = var119008
        while msg.sender:
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
                    if not ext_code.size(msg.sender):
                        if v == -1:
                            revert with 0, 17
                        if tokenByIndex.length > !arg1:
                            revert with 0, 17
                        if v + 1 >= tokenByIndex.length + arg1:
                            emit 0x42cf62e7: msg.sender, msg.value, arg1
                        stor18.length++
                        mem[0] = 18
                        address(stor18[stor18.length]) = msg.sender
                        _2237 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2237] = 0
                        s = v + 1
                        t = _2237
                        u = v + 1
                        v = v + 1
                        v = v + 1
                        continue 
                    _2197 = mem[64]
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = u
                    mem[mem[64] + 100] = 128
                    _2201 = mem[t]
                    mem[mem[64] + 132] = mem[t]
                    idx = 0
                    while idx < _2201:
                        mem[idx + mem[64] + 164] = mem[idx + t + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2201) <= _2201:
                        require ext_code.size(msg.sender)
                        call msg.sender.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(_2201) + _2197 + -mem[64] + 160]
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
                        _2465 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2465] == Mask(32, 224, mem[_2465])
                        if Mask(32, 224, mem[_2465]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if v == -1:
                            revert with 0, 17
                        if tokenByIndex.length > !arg1:
                            revert with 0, 17
                        if v + 1 >= tokenByIndex.length + arg1:
                            emit 0x42cf62e7: msg.sender, msg.value, arg1
                        stor18.length++
                        mem[0] = 18
                        address(stor18[stor18.length]) = msg.sender
                        _2645 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2645] = 0
                        s = v + 1
                        t = _2645
                        u = v + 1
                        v = v + 1
                        v = v + 1
                        continue 
                    mem[_2201 + _2197 + 164] = 0
                    require ext_code.size(msg.sender)
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_2201) + _2197 + -mem[64] + 160]
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
                    _2466 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2466] == Mask(32, 224, mem[_2466])
                    if Mask(32, 224, mem[_2466]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if v == -1:
                        revert with 0, 17
                    if tokenByIndex.length > !arg1:
                        revert with 0, 17
                    if v + 1 >= tokenByIndex.length + arg1:
                        emit 0x42cf62e7: msg.sender, msg.value, arg1
                    stor18.length++
                    mem[0] = 18
                    address(stor18[stor18.length]) = msg.sender
                    _2646 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2646] = 0
                    s = v + 1
                    t = _2646
                    u = v + 1
                    v = v + 1
                    v = v + 1
                    continue 
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
                if not ext_code.size(msg.sender):
                    if v == -1:
                        revert with 0, 17
                    if tokenByIndex.length > !arg1:
                        revert with 0, 17
                    if v + 1 >= tokenByIndex.length + arg1:
                        emit 0x42cf62e7: msg.sender, msg.value, arg1
                    stor18.length++
                    mem[0] = 18
                    address(stor18[stor18.length]) = msg.sender
                    _2295 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2295] = 0
                    s = v + 1
                    t = _2295
                    u = v + 1
                    v = v + 1
                    v = v + 1
                    continue 
                _2212 = mem[64]
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = u
                mem[mem[64] + 100] = 128
                _2215 = mem[t]
                mem[mem[64] + 132] = mem[t]
                idx = 0
                while idx < _2215:
                    mem[idx + mem[64] + 164] = mem[idx + t + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2215) <= _2215:
                    require ext_code.size(msg.sender)
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_2215) + _2212 + -mem[64] + 160]
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
                    _2467 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2467] == Mask(32, 224, mem[_2467])
                    if Mask(32, 224, mem[_2467]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if v == -1:
                        revert with 0, 17
                    if tokenByIndex.length > !arg1:
                        revert with 0, 17
                    if v + 1 >= tokenByIndex.length + arg1:
                        emit 0x42cf62e7: msg.sender, msg.value, arg1
                    stor18.length++
                    mem[0] = 18
                    address(stor18[stor18.length]) = msg.sender
                    _2647 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2647] = 0
                    s = v + 1
                    t = _2647
                    u = v + 1
                    v = v + 1
                    v = v + 1
                    continue 
                mem[_2215 + _2212 + 164] = 0
                require ext_code.size(msg.sender)
                call msg.sender.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_2215) + _2212 + -mem[64] + 160]
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
                _2468 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2468] == Mask(32, 224, mem[_2468])
                if Mask(32, 224, mem[_2468]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if v == -1:
                    revert with 0, 17
                if tokenByIndex.length > !arg1:
                    revert with 0, 17
                if v + 1 >= tokenByIndex.length + arg1:
                    emit 0x42cf62e7: msg.sender, msg.value, arg1
                stor18.length++
                mem[0] = 18
                address(stor18[stor18.length]) = msg.sender
                _2648 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2648] = 0
                s = v + 1
                t = _2648
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
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = s
            mem[32] = 2
            ownerOf[s] = msg.sender
            emit Transfer(0, msg.sender, s);
            if not ext_code.size(msg.sender):
                if v == -1:
                    revert with 0, 17
                if tokenByIndex.length > !arg1:
                    revert with 0, 17
                if v + 1 >= tokenByIndex.length + arg1:
                    emit 0x42cf62e7: msg.sender, msg.value, arg1
                stor18.length++
                mem[0] = 18
                address(stor18[stor18.length]) = msg.sender
                _2329 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2329] = 0
                s = v + 1
                t = _2329
                u = v + 1
                v = v + 1
                v = v + 1
                continue 
            _2216 = mem[64]
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = u
            mem[mem[64] + 100] = 128
            _2221 = mem[t]
            mem[mem[64] + 132] = mem[t]
            idx = 0
            while idx < _2221:
                mem[idx + mem[64] + 164] = mem[idx + t + 32]
                idx = idx + 32
                continue 
            if ceil32(_2221) <= _2221:
                require ext_code.size(msg.sender)
                call msg.sender.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_2221) + _2216 + -mem[64] + 160]
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
                _2469 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2469] == Mask(32, 224, mem[_2469])
                if Mask(32, 224, mem[_2469]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if v == -1:
                    revert with 0, 17
                if tokenByIndex.length > !arg1:
                    revert with 0, 17
                if v + 1 >= tokenByIndex.length + arg1:
                    emit 0x42cf62e7: msg.sender, msg.value, arg1
                stor18.length++
                mem[0] = 18
                address(stor18[stor18.length]) = msg.sender
                _2649 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2649] = 0
                s = v + 1
                t = _2649
                u = v + 1
                v = v + 1
                v = v + 1
                continue 
            mem[_2221 + _2216 + 164] = 0
            require ext_code.size(msg.sender)
            call msg.sender.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(_2221) + _2216 + -mem[64] + 160]
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
            _2470 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2470] == Mask(32, 224, mem[_2470])
            if Mask(32, 224, mem[_2470]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if v == -1:
                revert with 0, 17
            if tokenByIndex.length > !arg1:
                revert with 0, 17
            if v + 1 >= tokenByIndex.length + arg1:
                emit 0x42cf62e7: msg.sender, msg.value, arg1
            stor18.length++
            mem[0] = 18
            address(stor18[stor18.length]) = msg.sender
            _2650 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2650] = 0
            s = v + 1
            t = _2650
            u = v + 1
            v = v + 1
            v = v + 1
            continue 
    else:
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Contract execution Failed'
        if arg1 > 0x12c35bf5bf82dd45a9b19939f3e37512b15f95cac6928b21f60c5c:
            revert with 0, 17
        if totalDividend > !(15001500150015 * arg1):
            revert with 0, 17
        totalDividend += 15001500150015 * arg1
        if tokenByIndex.length > !arg1:
            revert with 0, 17
        if var113002 >= tokenByIndex.length + arg1:
            emit 0x42cf62e7: msg.sender, msg.value, arg1
        stor18.length++
        mem[0] = 18
        address(stor18[stor18.length]) = msg.sender
        mem[64] = ceil32(return_data.size) + 129
        mem[ceil32(return_data.size) + 97] = 0
        s = var119002
        t = var119001
        u = var119002
        v = var119005
        v = var119008
        while msg.sender:
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
                    if not ext_code.size(msg.sender):
                        if v == -1:
                            revert with 0, 17
                        if tokenByIndex.length > !arg1:
                            revert with 0, 17
                        if v + 1 >= tokenByIndex.length + arg1:
                            emit 0x42cf62e7: msg.sender, msg.value, arg1
                        stor18.length++
                        mem[0] = 18
                        address(stor18[stor18.length]) = msg.sender
                        _2242 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2242] = 0
                        s = v + 1
                        t = _2242
                        u = v + 1
                        v = v + 1
                        v = v + 1
                        continue 
                    _2198 = mem[64]
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = u
                    mem[mem[64] + 100] = 128
                    _2204 = mem[t]
                    mem[mem[64] + 132] = mem[t]
                    idx = 0
                    while idx < _2204:
                        mem[idx + mem[64] + 164] = mem[idx + t + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2204) <= _2204:
                        require ext_code.size(msg.sender)
                        call msg.sender.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(_2204) + _2198 + -mem[64] + 160]
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
                        _2471 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2471] == Mask(32, 224, mem[_2471])
                        if Mask(32, 224, mem[_2471]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if v == -1:
                            revert with 0, 17
                        if tokenByIndex.length > !arg1:
                            revert with 0, 17
                        if v + 1 >= tokenByIndex.length + arg1:
                            emit 0x42cf62e7: msg.sender, msg.value, arg1
                        stor18.length++
                        mem[0] = 18
                        address(stor18[stor18.length]) = msg.sender
                        _2651 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2651] = 0
                        s = v + 1
                        t = _2651
                        u = v + 1
                        v = v + 1
                        v = v + 1
                        continue 
                    mem[_2204 + _2198 + 164] = 0
                    require ext_code.size(msg.sender)
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_2204) + _2198 + -mem[64] + 160]
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
                    _2472 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2472] == Mask(32, 224, mem[_2472])
                    if Mask(32, 224, mem[_2472]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if v == -1:
                        revert with 0, 17
                    if tokenByIndex.length > !arg1:
                        revert with 0, 17
                    if v + 1 >= tokenByIndex.length + arg1:
                        emit 0x42cf62e7: msg.sender, msg.value, arg1
                    stor18.length++
                    mem[0] = 18
                    address(stor18[stor18.length]) = msg.sender
                    _2652 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2652] = 0
                    s = v + 1
                    t = _2652
                    u = v + 1
                    v = v + 1
                    v = v + 1
                    continue 
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
                if not ext_code.size(msg.sender):
                    if v == -1:
                        revert with 0, 17
                    if tokenByIndex.length > !arg1:
                        revert with 0, 17
                    if v + 1 >= tokenByIndex.length + arg1:
                        emit 0x42cf62e7: msg.sender, msg.value, arg1
                    stor18.length++
                    mem[0] = 18
                    address(stor18[stor18.length]) = msg.sender
                    _2302 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2302] = 0
                    s = v + 1
                    t = _2302
                    u = v + 1
                    v = v + 1
                    v = v + 1
                    continue 
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = u
                mem[mem[64] + 100] = 128
                _2217 = mem[t]
                mem[mem[64] + 132] = mem[t]
                idx = 0
                while idx < _2217:
                    mem[idx + mem[64] + 164] = mem[idx + t + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2217) <= _2217:
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, u, 128, mem[mem[64] + 132 len ceil32(_2217) + 32]
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
                    _2473 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2473] == Mask(32, 224, mem[_2473])
                    if Mask(32, 224, mem[_2473]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if v == -1:
                        revert with 0, 17
                    if tokenByIndex.length > !arg1:
                        revert with 0, 17
                    if v + 1 >= tokenByIndex.length + arg1:
                        emit 0x42cf62e7: msg.sender, msg.value, arg1
                    stor18.length++
                    mem[0] = 18
                    address(stor18[stor18.length]) = msg.sender
                    _2653 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2653] = 0
                    s = v + 1
                    t = _2653
                    u = v + 1
                    v = v + 1
                    v = v + 1
                    continue 
                mem[_2217 + mem[64] + 164] = 0
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, u, 128, mem[mem[64] + 132 len ceil32(_2217) + 32]
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
                _2474 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2474] == Mask(32, 224, mem[_2474])
                if Mask(32, 224, mem[_2474]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if v == -1:
                    revert with 0, 17
                if tokenByIndex.length > !arg1:
                    revert with 0, 17
                if v + 1 >= tokenByIndex.length + arg1:
                    emit 0x42cf62e7: msg.sender, msg.value, arg1
                stor18.length++
                mem[0] = 18
                address(stor18[stor18.length]) = msg.sender
                _2654 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2654] = 0
                s = v + 1
                t = _2654
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
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = s
            mem[32] = 2
            ownerOf[s] = msg.sender
            emit Transfer(0, msg.sender, s);
            if not ext_code.size(msg.sender):
                if v == -1:
                    revert with 0, 17
                if tokenByIndex.length > !arg1:
                    revert with 0, 17
                if v + 1 >= tokenByIndex.length + arg1:
                    emit 0x42cf62e7: msg.sender, msg.value, arg1
                stor18.length++
                mem[0] = 18
                address(stor18[stor18.length]) = msg.sender
                _2342 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2342] = 0
                s = v + 1
                t = _2342
                u = v + 1
                v = v + 1
                v = v + 1
                continue 
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = u
            mem[mem[64] + 100] = 128
            _2224 = mem[t]
            mem[mem[64] + 132] = mem[t]
            idx = 0
            while idx < _2224:
                mem[idx + mem[64] + 164] = mem[idx + t + 32]
                idx = idx + 32
                continue 
            if ceil32(_2224) <= _2224:
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, u, 128, mem[mem[64] + 132 len ceil32(_2224) + 32]
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
                _2475 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2475] == Mask(32, 224, mem[_2475])
                if Mask(32, 224, mem[_2475]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if v == -1:
                    revert with 0, 17
                if tokenByIndex.length > !arg1:
                    revert with 0, 17
                if v + 1 >= tokenByIndex.length + arg1:
                    emit 0x42cf62e7: msg.sender, msg.value, arg1
                stor18.length++
                mem[0] = 18
                address(stor18[stor18.length]) = msg.sender
                _2655 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2655] = 0
                s = v + 1
                t = _2655
                u = v + 1
                v = v + 1
                v = v + 1
                continue 
            mem[_2224 + mem[64] + 164] = 0
            require ext_code.size(msg.sender)
            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, u, 128, mem[mem[64] + 132 len ceil32(_2224) + 32]
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
            _2476 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2476] == Mask(32, 224, mem[_2476])
            if Mask(32, 224, mem[_2476]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if v == -1:
                revert with 0, 17
            if tokenByIndex.length > !arg1:
                revert with 0, 17
            if v + 1 >= tokenByIndex.length + arg1:
                emit 0x42cf62e7: msg.sender, msg.value, arg1
            stor18.length++
            mem[0] = 18
            address(stor18[stor18.length]) = msg.sender
            _2656 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2656] = 0
            s = v + 1
            t = _2656
            u = v + 1
            v = v + 1
            v = v + 1
            continue 
    revert with 0, 'ERC721: mint to the zero address'
}



}
