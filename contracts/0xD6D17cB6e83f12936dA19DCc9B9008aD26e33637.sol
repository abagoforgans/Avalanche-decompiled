contract main {




// =====================  Runtime code  =====================


#
#  - mintCube(uint256 arg1)
#
const MAX_CUBES = 10000


mapping of uint8 stor0;
mapping of struct marketplace;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor4;
mapping of address approved;
mapping of uint8 stor6;
array of struct stor7;
array of struct stor8;
array of struct stor9;
array of uint256 stor10009;
uint8 hasSaleStarted; offset 160
uint128 stor271A; offset 160
address owner;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor4[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function Marketplace(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(marketplace[arg1].field_512) >= 2:
        revert with 'NH{q', 33
    return marketplace[arg1].field_0, marketplace[arg1].field_256, uint8(marketplace[arg1].field_512)
}

function totalSupply() {
    return tokenByIndex.length
}

function hasSaleStarted() {
    return bool(hasSaleStarted)
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if tokenOfOwnerByIndex[address(arg1)] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 'NH{q', 50
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenByIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableMap: index out of bounds'
    if arg1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor4[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor4[arg1] < 1:
        revert with 'NH{q', 17
    if stor4[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    return address(tokenByIndex[stor4[arg1] - 1].field_256)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return tokenOfOwnerByIndex[address(arg1)]
}

function owner() {
    return owner
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor6[address(arg1)][address(arg2)])
}

function marketplace_cubeState(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(marketplace[arg1].field_512) >= 2:
        revert with 'NH{q', 33
    return uint8(marketplace[arg1].field_512)
}

function _fallback() payable {
    revert
}

function pauseSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor271A = 0
}

function startSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor271A = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdrawAll() payable {
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
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor6[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function marketplace_cancelSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor4[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor4[arg1] < 1:
        revert with 'NH{q', 17
    if stor4[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    require msg.sender == address(tokenByIndex[stor4[arg1] - 1].field_256)
    if uint8(marketplace[arg1].field_512) > 1:
        revert with 'NH{q', 33
    if not uint8(marketplace[arg1].field_512):
        revert with 0, 'This Sugarcube is not on sale!'
    marketplace[arg1].field_256 = 0
    uint8(marketplace[arg1].field_512) = 0
}

function marketplace_setPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor4[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor4[arg1] < 1:
        revert with 'NH{q', 17
    if stor4[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    require msg.sender == address(tokenByIndex[stor4[arg1] - 1].field_256)
    if uint8(marketplace[arg1].field_512) > 1:
        revert with 'NH{q', 33
    if uint8(marketplace[arg1].field_512) == 1:
        revert with 0, 'This Sugarcube is already on sale!'
    marketplace[arg1].field_256 = arg2
    uint8(marketplace[arg1].field_512) = 1
}

function tokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not tokenOfOwnerByIndex[address(arg1)]:
        return ''
    if tokenOfOwnerByIndex[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    if tokenOfOwnerByIndex[address(arg1)]:
        mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)]] = call.data[calldata.size len 32 * tokenOfOwnerByIndex[address(arg1)]]
    idx = 0
    while idx < tokenOfOwnerByIndex[address(arg1)]:
        mem[32] = 2
        if tokenOfOwnerByIndex[address(arg1)] <= idx:
            revert with 0, 'EnumerableSet: index out of bounds'
        if idx >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 2)
        if idx >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=tokenOfOwnerByIndex[address(arg1)], data=mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)]])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor4[arg2]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor4[arg2] < 1:
        revert with 'NH{q', 17
    if stor4[arg2] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if arg1 == address(tokenByIndex[stor4[arg2] - 1].field_256):
        revert with 0, 'ERC721: approval to current owner'
    if address(tokenByIndex[stor4[arg2] - 1].field_256) != msg.sender:
        if not stor6[address(stor3[stor4[arg2] - 1].field_256)][address(msg.sender)]:
            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not stor4[arg2]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    if stor4[arg2] < 1:
        revert with 'NH{q', 17
    if stor4[arg2] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(address(tokenByIndex[stor4[arg2] - 1].field_256), arg1, arg2);
}

function setURIforToken(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not stor4[arg1]:
        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
    if arg1 >= 10000:
        revert with 'NH{q', 50
    if bool(stor9[arg1].field_0):
        if bool(stor9[arg1].field_0) == uint255(stor9[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor[sha3(arg1 + 9)][] = Array(len=arg2.length, data=arg2[all])
        else:
            stor9[arg1].field_0 = 0
            idx = 0
            while uint255(stor9[arg1].field_1) + 31 / 32 > idx:
                stor[idx + sha3(arg1 + 9)] = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor9[arg1].field_0) == stor9[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor[sha3(arg1 + 9)][] = Array(len=arg2.length, data=arg2[all])
        else:
            stor9[arg1].field_0 = 0
            idx = 0
            while stor9[arg1].field_1 % 128 + 31 / 32 > idx:
                stor[idx + sha3(arg1 + 9)] = 0
                idx = idx + 1
                continue 
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
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor2719.length):
        if bool(stor2719.length) == uint255(stor2719.length.field_1) < 32:
            revert with 'NH{q', 34
        if not arg1.length:
            stor2719.length = 0
            idx = sha3(10009)
            while sha3(10009) + (uint255(stor2719.length.field_1) + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            stor2719.length = (2 * arg1.length) + 1
            s = sha3(10009)
            idx = 128
            while arg1.length + 128 > idx:
                stor[s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(10009) + (Mask(251, 0, arg1.length + 31) >> 5)
            while sha3(10009) + (uint255(stor2719.length.field_1) + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2719.length) == stor2719.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not arg1.length:
            stor2719.length = 0
            idx = sha3(10009)
            while sha3(10009) + (stor2719.length.field_1 % 128 + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            stor2719.length = (2 * arg1.length) + 1
            s = sha3(10009)
            idx = 128
            while arg1.length + 128 > idx:
                stor[s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(10009) + (Mask(251, 0, arg1.length + 31) >> 5)
            while sha3(10009) + (stor2719.length.field_1 % 128 + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
}

function calculatePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenByIndex.length >= 10000:
        revert with 0, 'Sale has already ended'
    if 250 >= tokenByIndex.length:
        if arg1 > 0x5c3bd5191b525a2484df7f5cfd6a43e17fc6f80abedcc69ba7:
            revert with 'NH{q', 17
        return (2 * 10^17 * arg1)
    if 500 >= tokenByIndex.length:
        if arg1 > 0x3d7d38bb678c3c185894ff93539c2d40ffd9fab1d4932f126f:
            revert with 'NH{q', 17
        return (3 * 10^17 * arg1)
    if 750 >= tokenByIndex.length:
        if arg1 > 0x2e1dea8c8da92d12426fbfae7eb521f0bfe37c055f6e634dd3:
            revert with 'NH{q', 17
        return (4 * 10^17 * arg1)
    if 1000 >= tokenByIndex.length:
        if arg1 > 0x24e4bba3a4875741cebfcc8b9890e7f3ccb5fcd119251c3e43:
            revert with 'NH{q', 17
        return (5 * 10^17 * arg1)
    if 1250 >= tokenByIndex.length:
        if arg1 > 0x1ebe9c5db3c61e0c2c4a7fc9a9ce16a07fecfd58ea49978937:
            revert with 'NH{q', 17
        return (6 * 10^17 * arg1)
    if 1500 >= tokenByIndex.length:
        if arg1 > 0x170ef54646d496892137dfd73f5a90f85ff1be02afb731a6e9:
            revert with 'NH{q', 17
        return (8 * 10^17 * arg1)
    if 2000 >= tokenByIndex.length:
        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        return (10^18 * arg1)
    if 2500 >= tokenByIndex.length:
        if arg1 > 0xec1e4a7db69561a52b31e9e3d06c32e51e2652070753e7f4e:
            revert with 'NH{q', 17
        return (125 * 10^16 * arg1)
    if 3000 >= tokenByIndex.length:
        if arg1 > 0xc4c3e8be182726b44ea9983dd85a2a69991fef05db7096a16:
            revert with 'NH{q', 17
        return (15 * 10^17 * arg1)
    if 4000 >= tokenByIndex.length:
        if arg1 > 0xa8a7ec10a6fcfc9a8c915debde04245a833ff172bc175c8a5:
            revert with 'NH{q', 17
        return (175 * 10^16 * arg1)
    if 5000 >= tokenByIndex.length:
        if arg1 > 0x9392ee8e921d5d073aff322e62439fcf32d7f344649470f90:
            revert with 'NH{q', 17
        return (2 * 10^18 * arg1)
    if 6000 >= tokenByIndex.length:
        if arg1 > 0x760f253edb4ab0d29598f4f1e83619728f13290383a9f3fa7:
            revert with 'NH{q', 17
        return (25 * 10^17 * arg1)
    if 7500 >= tokenByIndex.length:
        if arg1 > 0x6261f45f0c13935a2754cc1eec2d1534cc8ff782edb84b50b:
            revert with 'NH{q', 17
        return (3 * 10^18 * arg1)
    if 9000 >= tokenByIndex.length:
        if arg1 > 0x49c97747490eae839d7f99173121cfe7996bf9a2324a387c8:
            revert with 'NH{q', 17
        return (4 * 10^18 * arg1)
    if 9999 < tokenByIndex.length:
        if arg1 > 0x5e72843249088d75447a5d8e535e7ac20c0f5402cfbb2995:
            revert with 'NH{q', 17
        return (50 * 10^18 * arg1)
    if arg1 > 0x3b07929f6da558694acc7a78f41b0cb947899481c1d4f9fd3:
        revert with 'NH{q', 17
    return (5 * 10^18 * arg1)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor4[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not stor4[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor4[arg3] < 1:
        revert with 'NH{q', 17
    if stor4[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if address(tokenByIndex[stor4[arg3] - 1].field_256) != msg.sender:
        if not stor4[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor6[address(stor3[stor4[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor4[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    if stor4[arg3] < 1:
        revert with 'NH{q', 17
    if stor4[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if address(tokenByIndex[stor4[arg3] - 1].field_256) != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor4[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                    0
    if stor4[arg3] < 1:
        revert with 'NH{q', 17
    if stor4[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(address(tokenByIndex[stor4[arg3] - 1].field_256), 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[address(arg1)] < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[address(arg1)] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 50
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 50
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 > -2:
            revert with 'NH{q', 17
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
        if not tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 49
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
    if stor4[arg3]:
        if stor4[arg3] < 1:
            revert with 'NH{q', 17
        if stor4[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        address(tokenByIndex[stor4[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor4[arg3] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor4[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function name() {
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor7.length):
            if bool(stor7.length) == uint255(stor7.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor7.length.field_1):
                if 31 < uint255(stor7.length.field_1):
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor7.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor7.length.field_1)), data=mem[128 len ceil32(uint255(stor7.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor7.length.field_8)
        else:
            if bool(stor7.length) == stor7.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1 % 128:
                if 31 < stor7.length.field_1 % 128:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor7.length.field_1)), data=mem[128 len ceil32(uint255(stor7.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor7.length.field_8)
        mem[ceil32(uint255(stor7.length.field_1)) + 192 len ceil32(uint255(stor7.length.field_1))] = mem[128 len ceil32(uint255(stor7.length.field_1))]
        if ceil32(uint255(stor7.length.field_1)) > uint255(stor7.length.field_1):
            mem[ceil32(uint255(stor7.length.field_1)) + uint255(stor7.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor7.length.field_1)), data=mem[128 len ceil32(uint255(stor7.length.field_1))], mem[(2 * ceil32(uint255(stor7.length.field_1))) + 192 len 2 * ceil32(uint255(stor7.length.field_1))]), 
    if bool(stor7.length) == stor7.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor7.length.field_1):
            if 31 < uint255(stor7.length.field_1):
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while uint255(stor7.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor7.length.field_8)
    else:
        if bool(stor7.length) == stor7.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1 % 128:
            if 31 < stor7.length.field_1 % 128:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor7.length.field_8)
    mem[ceil32(stor7.length.field_1 % 128) + 192 len ceil32(stor7.length.field_1 % 128)] = mem[128 len ceil32(stor7.length.field_1 % 128)]
    if ceil32(stor7.length.field_1 % 128) > stor7.length.field_1 % 128:
        mem[ceil32(stor7.length.field_1 % 128) + stor7.length.field_1 % 128 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + 192 len 2 * ceil32(stor7.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor8.length):
            if bool(stor8.length) == uint255(stor8.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor8.length.field_1):
                if 31 < uint255(stor8.length.field_1):
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor8.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor8.length.field_1)), data=mem[128 len ceil32(uint255(stor8.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor8.length.field_8)
        else:
            if bool(stor8.length) == stor8.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1 % 128:
                if 31 < stor8.length.field_1 % 128:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor8.length.field_1)), data=mem[128 len ceil32(uint255(stor8.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor8.length.field_8)
        mem[ceil32(uint255(stor8.length.field_1)) + 192 len ceil32(uint255(stor8.length.field_1))] = mem[128 len ceil32(uint255(stor8.length.field_1))]
        if ceil32(uint255(stor8.length.field_1)) > uint255(stor8.length.field_1):
            mem[ceil32(uint255(stor8.length.field_1)) + uint255(stor8.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor8.length.field_1)), data=mem[128 len ceil32(uint255(stor8.length.field_1))], mem[(2 * ceil32(uint255(stor8.length.field_1))) + 192 len 2 * ceil32(uint255(stor8.length.field_1))]), 
    if bool(stor8.length) == stor8.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor8.length.field_1):
            if 31 < uint255(stor8.length.field_1):
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while uint255(stor8.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor8.length.field_8)
    else:
        if bool(stor8.length) == stor8.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1 % 128:
            if 31 < stor8.length.field_1 % 128:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor8.length.field_8)
    mem[ceil32(stor8.length.field_1 % 128) + 192 len ceil32(stor8.length.field_1 % 128)] = mem[128 len ceil32(stor8.length.field_1 % 128)]
    if ceil32(stor8.length.field_1 % 128) > stor8.length.field_1 % 128:
        mem[ceil32(stor8.length.field_1 % 128) + stor8.length.field_1 % 128 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1 % 128)], mem[(2 * ceil32(stor8.length.field_1 % 128)) + 192 len 2 * ceil32(stor8.length.field_1 % 128)]), 
}

function baseURI() {
    if bool(stor2719.length):
        if bool(stor2719.length) == uint255(stor2719.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor2719.length):
            if bool(stor2719.length) == uint255(stor2719.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor2719.length.field_1):
                if 31 < uint255(stor2719.length.field_1):
                    mem[128] = uint256(stor2719.field_0)
                    idx = 128
                    s = sha3(10009)
                    while uint255(stor2719.length.field_1) + 96 > idx:
                        mem[idx + 32] = marketplace[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor2719.length.field_1)), data=mem[128 len ceil32(uint255(stor2719.length.field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor2719.length.field_8)
        else:
            if bool(stor2719.length) == stor2719.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor2719.length.field_1 % 128:
                if 31 < stor2719.length.field_1 % 128:
                    mem[128] = uint256(stor2719.field_0)
                    idx = 128
                    s = sha3(10009)
                    while stor2719.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = marketplace[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor2719.length.field_1)), data=mem[128 len ceil32(uint255(stor2719.length.field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor2719.length.field_8)
        mem[ceil32(uint255(stor2719.length.field_1)) + 192 len ceil32(uint255(stor2719.length.field_1))] = mem[128 len ceil32(uint255(stor2719.length.field_1))]
        if ceil32(uint255(stor2719.length.field_1)) > uint255(stor2719.length.field_1):
            mem[ceil32(uint255(stor2719.length.field_1)) + uint255(stor2719.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor2719.length.field_1)), data=mem[128 len ceil32(uint255(stor2719.length.field_1))], mem[(2 * ceil32(uint255(stor2719.length.field_1))) + 192 len 2 * ceil32(uint255(stor2719.length.field_1))]), 
    if bool(stor2719.length) == stor2719.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor2719.length):
        if bool(stor2719.length) == uint255(stor2719.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor2719.length.field_1):
            if 31 < uint255(stor2719.length.field_1):
                mem[128] = uint256(stor2719.field_0)
                idx = 128
                s = sha3(10009)
                while uint255(stor2719.length.field_1) + 96 > idx:
                    mem[idx + 32] = marketplace[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2719.length % 128, data=mem[128 len ceil32(stor2719.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2719.length.field_8)
    else:
        if bool(stor2719.length) == stor2719.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor2719.length.field_1 % 128:
            if 31 < stor2719.length.field_1 % 128:
                mem[128] = uint256(stor2719.field_0)
                idx = 128
                s = sha3(10009)
                while stor2719.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = marketplace[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2719.length % 128, data=mem[128 len ceil32(stor2719.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2719.length.field_8)
    mem[ceil32(stor2719.length.field_1 % 128) + 192 len ceil32(stor2719.length.field_1 % 128)] = mem[128 len ceil32(stor2719.length.field_1 % 128)]
    if ceil32(stor2719.length.field_1 % 128) > stor2719.length.field_1 % 128:
        mem[ceil32(stor2719.length.field_1 % 128) + stor2719.length.field_1 % 128 + 192] = 0
    return Array(len=stor2719.length % 128, data=mem[128 len ceil32(stor2719.length.field_1 % 128)], mem[(2 * ceil32(stor2719.length.field_1 % 128)) + 192 len 2 * ceil32(stor2719.length.field_1 % 128)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor4[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not stor4[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[201 len 23] >> 72,
                    0
    if stor4[arg3] < 1:
        revert with 'NH{q', 17
    if stor4[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if address(tokenByIndex[stor4[arg3] - 1].field_256) != msg.sender:
        if not stor4[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor6[address(stor3[stor4[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor4[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[297 len 23] >> 72,
                    0
    if stor4[arg3] < 1:
        revert with 'NH{q', 17
    if stor4[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if address(tokenByIndex[stor4[arg3] - 1].field_256) != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor4[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[393 len 23] >> 72,
                    0
    if stor4[arg3] < 1:
        revert with 'NH{q', 17
    if stor4[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(address(tokenByIndex[stor4[arg3] - 1].field_256), 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[address(arg1)] < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[address(arg1)] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 50
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 50
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 > -2:
            revert with 'NH{q', 17
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
        if not tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 49
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
    if stor4[arg3]:
        if stor4[arg3] < 1:
            revert with 'NH{q', 17
        if stor4[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        address(tokenByIndex[stor4[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor4[arg3] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor4[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, 128, 0
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

function marketplace_buyCube(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.value < marketplace[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sent amount is less then set price!'
    if uint8(marketplace[arg1].field_512) > 1:
        revert with 'NH{q', 33
    if uint8(marketplace[arg1].field_512) != 1:
        revert with 0, 'This Cube is not for sale'
    if not stor4[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor4[arg1] < 1:
        revert with 'NH{q', 17
    if stor4[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if marketplace[arg1].field_256 >= 0:
        call address(tokenByIndex[stor4[arg1] - 1].field_256) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not stor4[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    if stor4[arg1] < 1:
        revert with 'NH{q', 17
    if stor4[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if not stor4[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                    0
    if stor4[arg1] < 1:
        revert with 'NH{q', 17
    if stor4[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if address(tokenByIndex[stor4[arg1] - 1].field_256) != address(tokenByIndex[stor4[arg1] - 1].field_256):
        revert with 0, 'ERC721: transfer of token that is not own'
    if not msg.sender:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg1] = 0
    if not stor4[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[457 len 23] >> 72,
                    0
    if stor4[arg1] < 1:
        revert with 'NH{q', 17
    if stor4[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(address(tokenByIndex[stor4[arg1] - 1].field_256), 0, arg1);
    if tokenOfOwnerByIndex[address(stor3[stor4[arg1] - 1].field_256)][1][arg1]:
        if tokenOfOwnerByIndex[address(stor3[stor4[arg1] - 1].field_256)][1][arg1] < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[address(stor3[stor4[arg1] - 1].field_256)] < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[address(stor3[stor4[arg1] - 1].field_256)] - 1 >= tokenOfOwnerByIndex[address(stor3[stor4[arg1] - 1].field_256)]:
            revert with 'NH{q', 50
        if tokenOfOwnerByIndex[address(stor3[stor4[arg1] - 1].field_256)][1][arg1] - 1 >= tokenOfOwnerByIndex[address(stor3[stor4[arg1] - 1].field_256)]:
            revert with 'NH{q', 50
        tokenOfOwnerByIndex[address(stor3[stor4[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor3[stor4[arg1] - 1].field_256)][1][arg1]] = tokenOfOwnerByIndex[address(stor3[stor4[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor3[stor4[arg1] - 1].field_256)]]
        if tokenOfOwnerByIndex[address(stor3[stor4[arg1] - 1].field_256)][1][arg1] - 1 > -2:
            revert with 'NH{q', 17
        tokenOfOwnerByIndex[address(stor3[stor4[arg1] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor3[stor4[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor3[stor4[arg1] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor3[stor4[arg1] - 1].field_256)][1][arg1]
        if not tokenOfOwnerByIndex[address(stor3[stor4[arg1] - 1].field_256)]:
            revert with 'NH{q', 49
        tokenOfOwnerByIndex[address(stor3[stor4[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor3[stor4[arg1] - 1].field_256)]] = 0
        tokenOfOwnerByIndex[address(stor3[stor4[arg1] - 1].field_256)]--
        tokenOfOwnerByIndex[address(stor3[stor4[arg1] - 1].field_256)][1][arg1] = 0
    if not tokenOfOwnerByIndex[address(msg.sender)][1][arg1]:
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
        tokenOfOwnerByIndex[address(msg.sender)][1][arg1] = tokenOfOwnerByIndex[address(msg.sender)]
    if stor4[arg1]:
        if stor4[arg1] < 1:
            revert with 'NH{q', 17
        if stor4[arg1] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        address(tokenByIndex[stor4[arg1] - 1].field_256) = msg.sender
        Mask(96, 0, tokenByIndex[stor4[arg1] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg1
        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor4[arg1] = tokenByIndex.length
    emit Transfer(address(tokenByIndex[stor4[arg1] - 1].field_256), msg.sender, arg1);
    uint8(marketplace[arg1].field_512) = 0
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
    if not stor4[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not stor4[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(ceil32(arg4.length)) + 170 len 23] >> 72,
                    0
    if stor4[arg3] < 1:
        revert with 'NH{q', 17
    if stor4[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if address(tokenByIndex[stor4[arg3] - 1].field_256) != msg.sender:
        if not stor4[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor6[address(stor3[stor4[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor4[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(ceil32(arg4.length)) + 266 len 23] >> 72,
                    0
    if stor4[arg3] < 1:
        revert with 'NH{q', 17
    if stor4[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if address(tokenByIndex[stor4[arg3] - 1].field_256) != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor4[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(ceil32(arg4.length)) + 362 len 23] >> 72,
                    0
    if stor4[arg3] < 1:
        revert with 'NH{q', 17
    if stor4[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(address(tokenByIndex[stor4[arg3] - 1].field_256), 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[address(arg1)] < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[address(arg1)] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 50
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 50
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 > -2:
            revert with 'NH{q', 17
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
        if not tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 49
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
    if stor4[arg3]:
        if stor4[arg3] < 1:
            revert with 'NH{q', 17
        if stor4[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        address(tokenByIndex[stor4[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor4[arg3] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor4[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor4[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if arg1 >= 10000:
        revert with 'NH{q', 50
    if bool(stor9[arg1].field_0):
        if bool(stor9[arg1].field_0) == uint255(stor9[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor9[arg1].field_0):
            if bool(stor9[arg1].field_0) == uint255(stor9[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor9[arg1].field_1):
                if uint255(stor9[arg1].field_1) > 0:
                    mem[ceil32(uint255(stor9[arg1].field_1)) + 192 len ceil32(uint255(stor9[arg1].field_1))] = mem[128 len ceil32(uint255(stor9[arg1].field_1))]
                    if ceil32(uint255(stor9[arg1].field_1)) > uint255(stor9[arg1].field_1):
                        mem[ceil32(uint255(stor9[arg1].field_1)) + uint255(stor9[arg1].field_1) + 192] = 0
                    return Array(len=2 * Mask(256, -1, uint255(stor9[arg1].field_1)), data=mem[128 len ceil32(uint255(stor9[arg1].field_1))], mem[(2 * ceil32(uint255(stor9[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor9[arg1].field_1))]), 
            else:
                if 31 >= uint255(stor9[arg1].field_1):
                    mem[128] = 256 * Mask(248, 0, stor9[arg1].field_8)
                    if uint255(stor9[arg1].field_1) > 0:
                        mem[ceil32(uint255(stor9[arg1].field_1)) + 192 len ceil32(uint255(stor9[arg1].field_1))] = mem[128 len ceil32(uint255(stor9[arg1].field_1))]
                        if ceil32(uint255(stor9[arg1].field_1)) > uint255(stor9[arg1].field_1):
                            mem[ceil32(uint255(stor9[arg1].field_1)) + uint255(stor9[arg1].field_1) + 192] = 0
                        return Array(len=2 * Mask(256, -1, uint255(stor9[arg1].field_1)), data=mem[128 len ceil32(uint255(stor9[arg1].field_1))], mem[(2 * ceil32(uint255(stor9[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor9[arg1].field_1))]), 
                else:
                    mem[128] = stor[sha3(arg1 + 9)]
                    idx = 128
                    s = 0
                    while uint255(stor9[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3(arg1 + 9) + 1]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if uint255(stor9[arg1].field_1) > 0:
                        return Array(len=2 * Mask(256, -1, uint255(stor9[arg1].field_1)), data=mem[128 len ceil32(uint255(stor9[arg1].field_1))])
        else:
            if bool(stor9[arg1].field_0) == stor9[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor9[arg1].field_1 % 128:
                if uint255(stor9[arg1].field_1) > 0:
                    mem[ceil32(uint255(stor9[arg1].field_1)) + 192 len ceil32(uint255(stor9[arg1].field_1))] = mem[128 len ceil32(uint255(stor9[arg1].field_1))]
                    if ceil32(uint255(stor9[arg1].field_1)) > uint255(stor9[arg1].field_1):
                        mem[ceil32(uint255(stor9[arg1].field_1)) + uint255(stor9[arg1].field_1) + 192] = 0
                    return Array(len=2 * Mask(256, -1, uint255(stor9[arg1].field_1)), data=mem[128 len ceil32(uint255(stor9[arg1].field_1))], mem[(2 * ceil32(uint255(stor9[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor9[arg1].field_1))]), 
            else:
                if 31 >= stor9[arg1].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor9[arg1].field_8)
                    if uint255(stor9[arg1].field_1) > 0:
                        mem[ceil32(uint255(stor9[arg1].field_1)) + 192 len ceil32(uint255(stor9[arg1].field_1))] = mem[128 len ceil32(uint255(stor9[arg1].field_1))]
                        if ceil32(uint255(stor9[arg1].field_1)) > uint255(stor9[arg1].field_1):
                            mem[ceil32(uint255(stor9[arg1].field_1)) + uint255(stor9[arg1].field_1) + 192] = 0
                        return Array(len=2 * Mask(256, -1, uint255(stor9[arg1].field_1)), data=mem[128 len ceil32(uint255(stor9[arg1].field_1))], mem[(2 * ceil32(uint255(stor9[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor9[arg1].field_1))]), 
                else:
                    mem[128] = stor[sha3(arg1 + 9)]
                    idx = 128
                    s = 0
                    while stor9[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3(arg1 + 9) + 1]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if uint255(stor9[arg1].field_1) > 0:
                        return Array(len=2 * Mask(256, -1, uint255(stor9[arg1].field_1)), data=mem[128 len ceil32(uint255(stor9[arg1].field_1))])
        ('le', ('type', 255, ('field', 1, ('stor', ('array', ('param', 'arg1'), ('name', 'stor9', 9))))), 0)
        if not arg1:
            return '0', 0
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
        mem[ceil32(uint255(stor9[arg1].field_1)) + 128] = s
        if s:
            mem[ceil32(uint255(stor9[arg1].field_1)) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(uint255(stor9[arg1].field_1)) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(uint255(stor9[arg1].field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor9[arg1].field_1)) + ceil32(s) + 160] = 32
        mem[ceil32(uint255(stor9[arg1].field_1)) + ceil32(s) + 192] = mem[ceil32(uint255(stor9[arg1].field_1)) + 128]
        mem[ceil32(uint255(stor9[arg1].field_1)) + ceil32(s) + 224 len ceil32(mem[ceil32(uint255(stor9[arg1].field_1)) + 128])] = mem[ceil32(uint255(stor9[arg1].field_1)) + 160 len ceil32(mem[ceil32(uint255(stor9[arg1].field_1)) + 128])]
        if ceil32(mem[ceil32(uint255(stor9[arg1].field_1)) + 128]) > mem[ceil32(uint255(stor9[arg1].field_1)) + 128]:
            mem[ceil32(uint255(stor9[arg1].field_1)) + ceil32(s) + mem[ceil32(uint255(stor9[arg1].field_1)) + 128] + 224] = 0
        return Array(len=mem[ceil32(uint255(stor9[arg1].field_1)) + 128], data=mem[ceil32(uint255(stor9[arg1].field_1)) + ceil32(s) + 224 len ceil32(mem[ceil32(uint255(stor9[arg1].field_1)) + 128])]), 
    if bool(stor9[arg1].field_0) == stor9[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor9[arg1].field_0):
        if bool(stor9[arg1].field_0) == uint255(stor9[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if not uint255(stor9[arg1].field_1):
            if stor9[arg1].field_1 % 128 > 0:
                mem[ceil32(stor9[arg1].field_1 % 128) + 192 len ceil32(stor9[arg1].field_1 % 128)] = mem[128 len ceil32(stor9[arg1].field_1 % 128)]
                if ceil32(stor9[arg1].field_1 % 128) > stor9[arg1].field_1 % 128:
                    mem[ceil32(stor9[arg1].field_1 % 128) + stor9[arg1].field_1 % 128 + 192] = 0
                return Array(len=stor9[arg1].field_0 % 128, data=mem[128 len ceil32(stor9[arg1].field_1 % 128)], mem[(2 * ceil32(stor9[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor9[arg1].field_1 % 128)]), 
        else:
            if 31 >= uint255(stor9[arg1].field_1):
                mem[128] = 256 * Mask(248, 0, stor9[arg1].field_8)
                if stor9[arg1].field_1 % 128 > 0:
                    mem[ceil32(stor9[arg1].field_1 % 128) + 192 len ceil32(stor9[arg1].field_1 % 128)] = mem[128 len ceil32(stor9[arg1].field_1 % 128)]
                    if ceil32(stor9[arg1].field_1 % 128) > stor9[arg1].field_1 % 128:
                        mem[ceil32(stor9[arg1].field_1 % 128) + stor9[arg1].field_1 % 128 + 192] = 0
                    return Array(len=stor9[arg1].field_0 % 128, data=mem[128 len ceil32(stor9[arg1].field_1 % 128)], mem[(2 * ceil32(stor9[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor9[arg1].field_1 % 128)]), 
            else:
                mem[128] = stor[sha3(arg1 + 9)]
                idx = 128
                s = 0
                while uint255(stor9[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3(arg1 + 9) + 1]
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor9[arg1].field_1 % 128 > 0:
                    return Array(len=stor9[arg1].field_0 % 128, data=mem[128 len ceil32(stor9[arg1].field_1 % 128)])
    else:
        if bool(stor9[arg1].field_0) == stor9[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not stor9[arg1].field_1 % 128:
            if stor9[arg1].field_1 % 128 > 0:
                mem[ceil32(stor9[arg1].field_1 % 128) + 192 len ceil32(stor9[arg1].field_1 % 128)] = mem[128 len ceil32(stor9[arg1].field_1 % 128)]
                if ceil32(stor9[arg1].field_1 % 128) > stor9[arg1].field_1 % 128:
                    mem[ceil32(stor9[arg1].field_1 % 128) + stor9[arg1].field_1 % 128 + 192] = 0
                return Array(len=stor9[arg1].field_0 % 128, data=mem[128 len ceil32(stor9[arg1].field_1 % 128)], mem[(2 * ceil32(stor9[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor9[arg1].field_1 % 128)]), 
        else:
            if 31 >= stor9[arg1].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor9[arg1].field_8)
                if stor9[arg1].field_1 % 128 > 0:
                    mem[ceil32(stor9[arg1].field_1 % 128) + 192 len ceil32(stor9[arg1].field_1 % 128)] = mem[128 len ceil32(stor9[arg1].field_1 % 128)]
                    if ceil32(stor9[arg1].field_1 % 128) > stor9[arg1].field_1 % 128:
                        mem[ceil32(stor9[arg1].field_1 % 128) + stor9[arg1].field_1 % 128 + 192] = 0
                    return Array(len=stor9[arg1].field_0 % 128, data=mem[128 len ceil32(stor9[arg1].field_1 % 128)], mem[(2 * ceil32(stor9[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor9[arg1].field_1 % 128)]), 
            else:
                mem[128] = stor[sha3(arg1 + 9)]
                idx = 128
                s = 0
                while stor9[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3(arg1 + 9) + 1]
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor9[arg1].field_1 % 128 > 0:
                    return Array(len=stor9[arg1].field_0 % 128, data=mem[128 len ceil32(stor9[arg1].field_1 % 128)])
    ('le', ('type', 7, ('field', 1, ('stor', ('array', ('param', 'arg1'), ('name', 'stor9', 9))))), 0)
    if not arg1:
        return '0', 0
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
    mem[ceil32(stor9[arg1].field_1 % 128) + 128] = s
    if s:
        mem[ceil32(stor9[arg1].field_1 % 128) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor9[arg1].field_1 % 128) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor9[arg1].field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor9[arg1].field_1 % 128) + ceil32(s) + 160] = 32
    mem[ceil32(stor9[arg1].field_1 % 128) + ceil32(s) + 192] = mem[ceil32(stor9[arg1].field_1 % 128) + 128]
    mem[ceil32(stor9[arg1].field_1 % 128) + ceil32(s) + 224 len ceil32(mem[ceil32(stor9[arg1].field_1 % 128) + 128])] = mem[ceil32(stor9[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor9[arg1].field_1 % 128) + 128])]
    if ceil32(mem[ceil32(stor9[arg1].field_1 % 128) + 128]) > mem[ceil32(stor9[arg1].field_1 % 128) + 128]:
        mem[ceil32(stor9[arg1].field_1 % 128) + ceil32(s) + mem[ceil32(stor9[arg1].field_1 % 128) + 128] + 224] = 0
    return Array(len=mem[ceil32(stor9[arg1].field_1 % 128) + 128], data=mem[ceil32(stor9[arg1].field_1 % 128) + ceil32(s) + 224 len ceil32(mem[ceil32(stor9[arg1].field_1 % 128) + 128])]), 
}



}
