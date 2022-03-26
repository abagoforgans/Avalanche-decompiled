contract main {




// =====================  Runtime code  =====================


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

function mintCube(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenByIndex.length >= 10000:
        revert with 0, 'Sale has already ended'
    if arg1 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can adopt at least 1 Cube and max of 20 Cubes'
    if arg1 > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can adopt at least 1 Cube and max of 20 Cubes'
    if tokenByIndex.length > -arg1 - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length + arg1 > 10000:
        revert with 0, 'Exceeds MAX_CUBES'
    if tokenByIndex.length >= 10000:
        revert with 0, 'Sale has already ended'
    if 250 >= tokenByIndex.length:
        if arg1 > 0x5c3bd5191b525a2484df7f5cfd6a43e17fc6f80abedcc69ba7:
            revert with 'NH{q', 17
        if msg.value < 2 * 10^17 * arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
        if bool(hasSaleStarted) != 1:
            revert with 0, 'Sale is not going on right now!'
        if arg1 > test266151307():
            revert with 'NH{q', 65
        mem[96] = arg1
        mem[64] = (32 * arg1) + 128
        if not arg1:
            idx = 0
            while idx < arg1:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = tokenByIndex.length
                _5343 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5343] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor4[stor3.length]:
                    revert with 0, 'ERC721: token already minted'
                if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                    mem[0] = tokenByIndex.length
                    mem[32] = 4
                    if stor4[stor3.length]:
                        if stor4[stor3.length] < 1:
                            revert with 'NH{q', 17
                        if stor4[stor3.length] - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        mem[0] = 3
                        address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                        emit Transfer(0, msg.sender, tokenByIndex.length);
                        if ext_code.size(msg.sender) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 164] = mem[_5343 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                            _10937 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10937] == Mask(32, 224, mem[_10937])
                            if Mask(32, 224, mem[_10937]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        _6061 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6061] = tokenByIndex.length
                        mem[_6061 + 32] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        mem[0] = tokenByIndex.length
                        mem[32] = 4
                        stor4[stor3.length] = tokenByIndex.length
                        emit Transfer(0, msg.sender, tokenByIndex.length);
                        if ext_code.size(msg.sender) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 164] = mem[_5343 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                            _10938 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10938] == Mask(32, 224, mem[_10938])
                            if Mask(32, 224, mem[_10938]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    tokenOfOwnerByIndex[address(msg.sender)]++
                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                    tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[0] = tokenByIndex.length
                    mem[32] = 4
                    if stor4[stor3.length]:
                        if stor4[stor3.length] < 1:
                            revert with 'NH{q', 17
                        if stor4[stor3.length] - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        mem[0] = 3
                        address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                        emit Transfer(0, msg.sender, tokenByIndex.length);
                        if ext_code.size(msg.sender) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 164] = mem[_5343 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                            _10939 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10939] == Mask(32, 224, mem[_10939])
                            if Mask(32, 224, mem[_10939]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        _6066 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6066] = tokenByIndex.length
                        mem[_6066 + 32] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        mem[0] = tokenByIndex.length
                        mem[32] = 4
                        stor4[stor3.length] = tokenByIndex.length
                        emit Transfer(0, msg.sender, tokenByIndex.length);
                        if ext_code.size(msg.sender) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 164] = mem[_5343 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                            _10940 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10940] == Mask(32, 224, mem[_10940])
                            if Mask(32, 224, mem[_10940]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
            idx = 0
            while idx < arg1:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = tokenByIndex.length
                _5344 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5344] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor4[stor3.length]:
                    revert with 0, 'ERC721: token already minted'
                if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                    mem[0] = tokenByIndex.length
                    mem[32] = 4
                    if stor4[stor3.length]:
                        if stor4[stor3.length] < 1:
                            revert with 'NH{q', 17
                        if stor4[stor3.length] - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        mem[0] = 3
                        address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                        emit Transfer(0, msg.sender, tokenByIndex.length);
                        if ext_code.size(msg.sender) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 164] = mem[_5344 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                            _10941 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10941] == Mask(32, 224, mem[_10941])
                            if Mask(32, 224, mem[_10941]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        _6071 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6071] = tokenByIndex.length
                        mem[_6071 + 32] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        mem[0] = tokenByIndex.length
                        mem[32] = 4
                        stor4[stor3.length] = tokenByIndex.length
                        emit Transfer(0, msg.sender, tokenByIndex.length);
                        if ext_code.size(msg.sender) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 164] = mem[_5344 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                            _10942 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10942] == Mask(32, 224, mem[_10942])
                            if Mask(32, 224, mem[_10942]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    tokenOfOwnerByIndex[address(msg.sender)]++
                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                    tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[0] = tokenByIndex.length
                    mem[32] = 4
                    if stor4[stor3.length]:
                        if stor4[stor3.length] < 1:
                            revert with 'NH{q', 17
                        if stor4[stor3.length] - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        mem[0] = 3
                        address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                        emit Transfer(0, msg.sender, tokenByIndex.length);
                        if ext_code.size(msg.sender) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 164] = mem[_5344 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                            _10943 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10943] == Mask(32, 224, mem[_10943])
                            if Mask(32, 224, mem[_10943]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        _6076 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6076] = tokenByIndex.length
                        mem[_6076 + 32] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        mem[0] = tokenByIndex.length
                        mem[32] = 4
                        stor4[stor3.length] = tokenByIndex.length
                        emit Transfer(0, msg.sender, tokenByIndex.length);
                        if ext_code.size(msg.sender) > 0:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 164] = mem[_5344 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                            _10944 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10944] == Mask(32, 224, mem[_10944])
                            if Mask(32, 224, mem[_10944]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        if 500 >= tokenByIndex.length:
            if arg1 > 0x3d7d38bb678c3c185894ff93539c2d40ffd9fab1d4932f126f:
                revert with 'NH{q', 17
            if msg.value < 3 * 10^17 * arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
            if bool(hasSaleStarted) != 1:
                revert with 0, 'Sale is not going on right now!'
            if arg1 > test266151307():
                revert with 'NH{q', 65
            mem[96] = arg1
            mem[64] = (32 * arg1) + 128
            if not arg1:
                idx = 0
                while idx < arg1:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = tokenByIndex.length
                    _5341 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5341] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if stor4[stor3.length]:
                        revert with 0, 'ERC721: token already minted'
                    if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                        mem[0] = tokenByIndex.length
                        mem[32] = 4
                        if stor4[stor3.length]:
                            if stor4[stor3.length] < 1:
                                revert with 'NH{q', 17
                            if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                            Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                            emit Transfer(0, msg.sender, tokenByIndex.length);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_5341 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                _10929 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_10929] == Mask(32, 224, mem[_10929])
                                if Mask(32, 224, mem[_10929]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            _6041 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6041] = tokenByIndex.length
                            mem[_6041 + 32] = msg.sender
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                            mem[0] = tokenByIndex.length
                            mem[32] = 4
                            stor4[stor3.length] = tokenByIndex.length
                            emit Transfer(0, msg.sender, tokenByIndex.length);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_5341 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                _10930 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_10930] == Mask(32, 224, mem[_10930])
                                if Mask(32, 224, mem[_10930]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[0] = tokenByIndex.length
                        mem[32] = 4
                        if stor4[stor3.length]:
                            if stor4[stor3.length] < 1:
                                revert with 'NH{q', 17
                            if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                            Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                            emit Transfer(0, msg.sender, tokenByIndex.length);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_5341 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                _10931 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_10931] == Mask(32, 224, mem[_10931])
                                if Mask(32, 224, mem[_10931]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            _6046 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6046] = tokenByIndex.length
                            mem[_6046 + 32] = msg.sender
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                            mem[0] = tokenByIndex.length
                            mem[32] = 4
                            stor4[stor3.length] = tokenByIndex.length
                            emit Transfer(0, msg.sender, tokenByIndex.length);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_5341 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                _10932 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_10932] == Mask(32, 224, mem[_10932])
                                if Mask(32, 224, mem[_10932]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                idx = 0
                while idx < arg1:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = tokenByIndex.length
                    _5342 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5342] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if stor4[stor3.length]:
                        revert with 0, 'ERC721: token already minted'
                    if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                        mem[0] = tokenByIndex.length
                        mem[32] = 4
                        if stor4[stor3.length]:
                            if stor4[stor3.length] < 1:
                                revert with 'NH{q', 17
                            if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                            Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                            emit Transfer(0, msg.sender, tokenByIndex.length);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_5342 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                _10933 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_10933] == Mask(32, 224, mem[_10933])
                                if Mask(32, 224, mem[_10933]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            _6051 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6051] = tokenByIndex.length
                            mem[_6051 + 32] = msg.sender
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                            mem[0] = tokenByIndex.length
                            mem[32] = 4
                            stor4[stor3.length] = tokenByIndex.length
                            emit Transfer(0, msg.sender, tokenByIndex.length);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_5342 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                _10934 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_10934] == Mask(32, 224, mem[_10934])
                                if Mask(32, 224, mem[_10934]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[0] = tokenByIndex.length
                        mem[32] = 4
                        if stor4[stor3.length]:
                            if stor4[stor3.length] < 1:
                                revert with 'NH{q', 17
                            if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                            Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                            emit Transfer(0, msg.sender, tokenByIndex.length);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_5342 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                _10935 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_10935] == Mask(32, 224, mem[_10935])
                                if Mask(32, 224, mem[_10935]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            _6056 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6056] = tokenByIndex.length
                            mem[_6056 + 32] = msg.sender
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                            mem[0] = tokenByIndex.length
                            mem[32] = 4
                            stor4[stor3.length] = tokenByIndex.length
                            emit Transfer(0, msg.sender, tokenByIndex.length);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_5342 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                _10936 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_10936] == Mask(32, 224, mem[_10936])
                                if Mask(32, 224, mem[_10936]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
        else:
            if 750 >= tokenByIndex.length:
                if arg1 > 0x2e1dea8c8da92d12426fbfae7eb521f0bfe37c055f6e634dd3:
                    revert with 'NH{q', 17
                if msg.value < 4 * 10^17 * arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
                if bool(hasSaleStarted) != 1:
                    revert with 0, 'Sale is not going on right now!'
                if arg1 > test266151307():
                    revert with 'NH{q', 65
                mem[96] = arg1
                mem[64] = (32 * arg1) + 128
                if not arg1:
                    idx = 0
                    while idx < arg1:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = tokenByIndex.length
                        _5339 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5339] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if stor4[stor3.length]:
                            revert with 0, 'ERC721: token already minted'
                        if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                            mem[0] = tokenByIndex.length
                            mem[32] = 4
                            if stor4[stor3.length]:
                                if stor4[stor3.length] < 1:
                                    revert with 'NH{q', 17
                                if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                mem[0] = 3
                                address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_5339 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                    _10921 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_10921] == Mask(32, 224, mem[_10921])
                                    if Mask(32, 224, mem[_10921]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                _6021 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6021] = tokenByIndex.length
                                mem[_6021 + 32] = msg.sender
                                tokenByIndex.length++
                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                mem[0] = tokenByIndex.length
                                mem[32] = 4
                                stor4[stor3.length] = tokenByIndex.length
                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_5339 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                    _10922 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_10922] == Mask(32, 224, mem[_10922])
                                    if Mask(32, 224, mem[_10922]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            tokenOfOwnerByIndex[address(msg.sender)]++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                            tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                            mem[0] = tokenByIndex.length
                            mem[32] = 4
                            if stor4[stor3.length]:
                                if stor4[stor3.length] < 1:
                                    revert with 'NH{q', 17
                                if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                mem[0] = 3
                                address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_5339 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                    _10923 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_10923] == Mask(32, 224, mem[_10923])
                                    if Mask(32, 224, mem[_10923]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                _6026 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6026] = tokenByIndex.length
                                mem[_6026 + 32] = msg.sender
                                tokenByIndex.length++
                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                mem[0] = tokenByIndex.length
                                mem[32] = 4
                                stor4[stor3.length] = tokenByIndex.length
                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_5339 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                    _10924 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_10924] == Mask(32, 224, mem[_10924])
                                    if Mask(32, 224, mem[_10924]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                    idx = 0
                    while idx < arg1:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = tokenByIndex.length
                        _5340 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5340] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if stor4[stor3.length]:
                            revert with 0, 'ERC721: token already minted'
                        if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                            mem[0] = tokenByIndex.length
                            mem[32] = 4
                            if stor4[stor3.length]:
                                if stor4[stor3.length] < 1:
                                    revert with 'NH{q', 17
                                if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                mem[0] = 3
                                address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_5340 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                    _10925 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_10925] == Mask(32, 224, mem[_10925])
                                    if Mask(32, 224, mem[_10925]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                _6031 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6031] = tokenByIndex.length
                                mem[_6031 + 32] = msg.sender
                                tokenByIndex.length++
                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                mem[0] = tokenByIndex.length
                                mem[32] = 4
                                stor4[stor3.length] = tokenByIndex.length
                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_5340 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                    _10926 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_10926] == Mask(32, 224, mem[_10926])
                                    if Mask(32, 224, mem[_10926]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            tokenOfOwnerByIndex[address(msg.sender)]++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                            tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                            mem[0] = tokenByIndex.length
                            mem[32] = 4
                            if stor4[stor3.length]:
                                if stor4[stor3.length] < 1:
                                    revert with 'NH{q', 17
                                if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                mem[0] = 3
                                address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_5340 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                    _10927 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_10927] == Mask(32, 224, mem[_10927])
                                    if Mask(32, 224, mem[_10927]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                _6036 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6036] = tokenByIndex.length
                                mem[_6036 + 32] = msg.sender
                                tokenByIndex.length++
                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                mem[0] = tokenByIndex.length
                                mem[32] = 4
                                stor4[stor3.length] = tokenByIndex.length
                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                if ext_code.size(msg.sender) > 0:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = tokenByIndex.length
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[mem[64] + s + 164] = mem[_5340 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                    _10928 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_10928] == Mask(32, 224, mem[_10928])
                                    if Mask(32, 224, mem[_10928]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
            else:
                if 1000 >= tokenByIndex.length:
                    if arg1 > 0x24e4bba3a4875741cebfcc8b9890e7f3ccb5fcd119251c3e43:
                        revert with 'NH{q', 17
                    if msg.value < 5 * 10^17 * arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
                    if bool(hasSaleStarted) != 1:
                        revert with 0, 'Sale is not going on right now!'
                    if arg1 > test266151307():
                        revert with 'NH{q', 65
                    mem[96] = arg1
                    mem[64] = (32 * arg1) + 128
                    if not arg1:
                        idx = 0
                        while idx < arg1:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = tokenByIndex.length
                            _5337 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5337] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if stor4[stor3.length]:
                                revert with 0, 'ERC721: token already minted'
                            if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                mem[0] = tokenByIndex.length
                                mem[32] = 4
                                if stor4[stor3.length]:
                                    if stor4[stor3.length] < 1:
                                        revert with 'NH{q', 17
                                    if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                    Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                    if ext_code.size(msg.sender) > 0:
                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = tokenByIndex.length
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        s = 0
                                        while s < 0:
                                            mem[mem[64] + s + 164] = mem[_5337 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                        _10913 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10913] == Mask(32, 224, mem[_10913])
                                        if Mask(32, 224, mem[_10913]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                else:
                                    _6001 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6001] = tokenByIndex.length
                                    mem[_6001 + 32] = msg.sender
                                    tokenByIndex.length++
                                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                    mem[0] = tokenByIndex.length
                                    mem[32] = 4
                                    stor4[stor3.length] = tokenByIndex.length
                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                    if ext_code.size(msg.sender) > 0:
                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = tokenByIndex.length
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        s = 0
                                        while s < 0:
                                            mem[mem[64] + s + 164] = mem[_5337 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                        _10914 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10914] == Mask(32, 224, mem[_10914])
                                        if Mask(32, 224, mem[_10914]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                tokenOfOwnerByIndex[address(msg.sender)]++
                                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                mem[0] = tokenByIndex.length
                                mem[32] = 4
                                if stor4[stor3.length]:
                                    if stor4[stor3.length] < 1:
                                        revert with 'NH{q', 17
                                    if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                    Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                    if ext_code.size(msg.sender) > 0:
                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = tokenByIndex.length
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        s = 0
                                        while s < 0:
                                            mem[mem[64] + s + 164] = mem[_5337 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                        _10915 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10915] == Mask(32, 224, mem[_10915])
                                        if Mask(32, 224, mem[_10915]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                else:
                                    _6006 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6006] = tokenByIndex.length
                                    mem[_6006 + 32] = msg.sender
                                    tokenByIndex.length++
                                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                    mem[0] = tokenByIndex.length
                                    mem[32] = 4
                                    stor4[stor3.length] = tokenByIndex.length
                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                    if ext_code.size(msg.sender) > 0:
                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = tokenByIndex.length
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        s = 0
                                        while s < 0:
                                            mem[mem[64] + s + 164] = mem[_5337 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                        _10916 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10916] == Mask(32, 224, mem[_10916])
                                        if Mask(32, 224, mem[_10916]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                        idx = 0
                        while idx < arg1:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = tokenByIndex.length
                            _5338 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5338] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if stor4[stor3.length]:
                                revert with 0, 'ERC721: token already minted'
                            if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                mem[0] = tokenByIndex.length
                                mem[32] = 4
                                if stor4[stor3.length]:
                                    if stor4[stor3.length] < 1:
                                        revert with 'NH{q', 17
                                    if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                    Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                    if ext_code.size(msg.sender) > 0:
                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = tokenByIndex.length
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        s = 0
                                        while s < 0:
                                            mem[mem[64] + s + 164] = mem[_5338 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                        _10917 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10917] == Mask(32, 224, mem[_10917])
                                        if Mask(32, 224, mem[_10917]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                else:
                                    _6011 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6011] = tokenByIndex.length
                                    mem[_6011 + 32] = msg.sender
                                    tokenByIndex.length++
                                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                    mem[0] = tokenByIndex.length
                                    mem[32] = 4
                                    stor4[stor3.length] = tokenByIndex.length
                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                    if ext_code.size(msg.sender) > 0:
                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = tokenByIndex.length
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        s = 0
                                        while s < 0:
                                            mem[mem[64] + s + 164] = mem[_5338 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                        _10918 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10918] == Mask(32, 224, mem[_10918])
                                        if Mask(32, 224, mem[_10918]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                tokenOfOwnerByIndex[address(msg.sender)]++
                                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                mem[0] = tokenByIndex.length
                                mem[32] = 4
                                if stor4[stor3.length]:
                                    if stor4[stor3.length] < 1:
                                        revert with 'NH{q', 17
                                    if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                    Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                    if ext_code.size(msg.sender) > 0:
                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = tokenByIndex.length
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        s = 0
                                        while s < 0:
                                            mem[mem[64] + s + 164] = mem[_5338 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                        _10919 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10919] == Mask(32, 224, mem[_10919])
                                        if Mask(32, 224, mem[_10919]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                else:
                                    _6016 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6016] = tokenByIndex.length
                                    mem[_6016 + 32] = msg.sender
                                    tokenByIndex.length++
                                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                    mem[0] = tokenByIndex.length
                                    mem[32] = 4
                                    stor4[stor3.length] = tokenByIndex.length
                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                    if ext_code.size(msg.sender) > 0:
                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = tokenByIndex.length
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        s = 0
                                        while s < 0:
                                            mem[mem[64] + s + 164] = mem[_5338 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                        _10920 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10920] == Mask(32, 224, mem[_10920])
                                        if Mask(32, 224, mem[_10920]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                else:
                    if 1250 >= tokenByIndex.length:
                        if arg1 > 0x1ebe9c5db3c61e0c2c4a7fc9a9ce16a07fecfd58ea49978937:
                            revert with 'NH{q', 17
                        if msg.value < 6 * 10^17 * arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
                        if bool(hasSaleStarted) != 1:
                            revert with 0, 'Sale is not going on right now!'
                        if arg1 > test266151307():
                            revert with 'NH{q', 65
                        mem[96] = arg1
                        mem[64] = (32 * arg1) + 128
                        if not arg1:
                            idx = 0
                            while idx < arg1:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = tokenByIndex.length
                                _5335 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5335] = 0
                                if not msg.sender:
                                    revert with 0, 'ERC721: mint to the zero address'
                                if stor4[stor3.length]:
                                    revert with 0, 'ERC721: token already minted'
                                if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                    mem[0] = tokenByIndex.length
                                    mem[32] = 4
                                    if stor4[stor3.length]:
                                        if stor4[stor3.length] < 1:
                                            revert with 'NH{q', 17
                                        if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 3
                                        address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                        Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                        if ext_code.size(msg.sender) > 0:
                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = tokenByIndex.length
                                            mem[mem[64] + 100] = 128
                                            mem[mem[64] + 132] = 0
                                            s = 0
                                            while s < 0:
                                                mem[mem[64] + s + 164] = mem[_5335 + s + 32]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(msg.sender)
                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                            _10905 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_10905] == Mask(32, 224, mem[_10905])
                                            if Mask(32, 224, mem[_10905]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    else:
                                        _5981 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5981] = tokenByIndex.length
                                        mem[_5981 + 32] = msg.sender
                                        tokenByIndex.length++
                                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                        mem[0] = tokenByIndex.length
                                        mem[32] = 4
                                        stor4[stor3.length] = tokenByIndex.length
                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                        if ext_code.size(msg.sender) > 0:
                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = tokenByIndex.length
                                            mem[mem[64] + 100] = 128
                                            mem[mem[64] + 132] = 0
                                            s = 0
                                            while s < 0:
                                                mem[mem[64] + s + 164] = mem[_5335 + s + 32]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(msg.sender)
                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                            _10906 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_10906] == Mask(32, 224, mem[_10906])
                                            if Mask(32, 224, mem[_10906]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                else:
                                    tokenOfOwnerByIndex[address(msg.sender)]++
                                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                    tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                    mem[0] = tokenByIndex.length
                                    mem[32] = 4
                                    if stor4[stor3.length]:
                                        if stor4[stor3.length] < 1:
                                            revert with 'NH{q', 17
                                        if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 3
                                        address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                        Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                        if ext_code.size(msg.sender) > 0:
                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = tokenByIndex.length
                                            mem[mem[64] + 100] = 128
                                            mem[mem[64] + 132] = 0
                                            s = 0
                                            while s < 0:
                                                mem[mem[64] + s + 164] = mem[_5335 + s + 32]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(msg.sender)
                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                            _10907 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_10907] == Mask(32, 224, mem[_10907])
                                            if Mask(32, 224, mem[_10907]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    else:
                                        _5986 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5986] = tokenByIndex.length
                                        mem[_5986 + 32] = msg.sender
                                        tokenByIndex.length++
                                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                        mem[0] = tokenByIndex.length
                                        mem[32] = 4
                                        stor4[stor3.length] = tokenByIndex.length
                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                        if ext_code.size(msg.sender) > 0:
                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = tokenByIndex.length
                                            mem[mem[64] + 100] = 128
                                            mem[mem[64] + 132] = 0
                                            s = 0
                                            while s < 0:
                                                mem[mem[64] + s + 164] = mem[_5335 + s + 32]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(msg.sender)
                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                            _10908 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_10908] == Mask(32, 224, mem[_10908])
                                            if Mask(32, 224, mem[_10908]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                            idx = 0
                            while idx < arg1:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = tokenByIndex.length
                                _5336 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5336] = 0
                                if not msg.sender:
                                    revert with 0, 'ERC721: mint to the zero address'
                                if stor4[stor3.length]:
                                    revert with 0, 'ERC721: token already minted'
                                if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                    mem[0] = tokenByIndex.length
                                    mem[32] = 4
                                    if stor4[stor3.length]:
                                        if stor4[stor3.length] < 1:
                                            revert with 'NH{q', 17
                                        if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 3
                                        address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                        Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                        if ext_code.size(msg.sender) > 0:
                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = tokenByIndex.length
                                            mem[mem[64] + 100] = 128
                                            mem[mem[64] + 132] = 0
                                            s = 0
                                            while s < 0:
                                                mem[mem[64] + s + 164] = mem[_5336 + s + 32]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(msg.sender)
                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                            _10909 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_10909] == Mask(32, 224, mem[_10909])
                                            if Mask(32, 224, mem[_10909]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    else:
                                        _5991 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5991] = tokenByIndex.length
                                        mem[_5991 + 32] = msg.sender
                                        tokenByIndex.length++
                                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                        mem[0] = tokenByIndex.length
                                        mem[32] = 4
                                        stor4[stor3.length] = tokenByIndex.length
                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                        if ext_code.size(msg.sender) > 0:
                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = tokenByIndex.length
                                            mem[mem[64] + 100] = 128
                                            mem[mem[64] + 132] = 0
                                            s = 0
                                            while s < 0:
                                                mem[mem[64] + s + 164] = mem[_5336 + s + 32]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(msg.sender)
                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                            _10910 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_10910] == Mask(32, 224, mem[_10910])
                                            if Mask(32, 224, mem[_10910]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                else:
                                    tokenOfOwnerByIndex[address(msg.sender)]++
                                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                    tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                    mem[0] = tokenByIndex.length
                                    mem[32] = 4
                                    if stor4[stor3.length]:
                                        if stor4[stor3.length] < 1:
                                            revert with 'NH{q', 17
                                        if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 3
                                        address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                        Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                        if ext_code.size(msg.sender) > 0:
                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = tokenByIndex.length
                                            mem[mem[64] + 100] = 128
                                            mem[mem[64] + 132] = 0
                                            s = 0
                                            while s < 0:
                                                mem[mem[64] + s + 164] = mem[_5336 + s + 32]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(msg.sender)
                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                            _10911 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_10911] == Mask(32, 224, mem[_10911])
                                            if Mask(32, 224, mem[_10911]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    else:
                                        _5996 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5996] = tokenByIndex.length
                                        mem[_5996 + 32] = msg.sender
                                        tokenByIndex.length++
                                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                        mem[0] = tokenByIndex.length
                                        mem[32] = 4
                                        stor4[stor3.length] = tokenByIndex.length
                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                        if ext_code.size(msg.sender) > 0:
                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = tokenByIndex.length
                                            mem[mem[64] + 100] = 128
                                            mem[mem[64] + 132] = 0
                                            s = 0
                                            while s < 0:
                                                mem[mem[64] + s + 164] = mem[_5336 + s + 32]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(msg.sender)
                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                            _10912 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_10912] == Mask(32, 224, mem[_10912])
                                            if Mask(32, 224, mem[_10912]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                    else:
                        if 1500 >= tokenByIndex.length:
                            if arg1 > 0x170ef54646d496892137dfd73f5a90f85ff1be02afb731a6e9:
                                revert with 'NH{q', 17
                            if msg.value < 8 * 10^17 * arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
                            if bool(hasSaleStarted) != 1:
                                revert with 0, 'Sale is not going on right now!'
                            if arg1 > test266151307():
                                revert with 'NH{q', 65
                            mem[96] = arg1
                            mem[64] = (32 * arg1) + 128
                            if not arg1:
                                idx = 0
                                while idx < arg1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = tokenByIndex.length
                                    _5333 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5333] = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC721: mint to the zero address'
                                    if stor4[stor3.length]:
                                        revert with 0, 'ERC721: token already minted'
                                    if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                        mem[0] = tokenByIndex.length
                                        mem[32] = 4
                                        if stor4[stor3.length]:
                                            if stor4[stor3.length] < 1:
                                                revert with 'NH{q', 17
                                            if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                revert with 'NH{q', 50
                                            mem[0] = 3
                                            address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                            Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                            if ext_code.size(msg.sender) > 0:
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = tokenByIndex.length
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = 0
                                                s = 0
                                                while s < 0:
                                                    mem[mem[64] + s + 164] = mem[_5333 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(msg.sender)
                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                _10897 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_10897] == Mask(32, 224, mem[_10897])
                                                if Mask(32, 224, mem[_10897]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            _5961 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5961] = tokenByIndex.length
                                            mem[_5961 + 32] = msg.sender
                                            tokenByIndex.length++
                                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                            mem[0] = tokenByIndex.length
                                            mem[32] = 4
                                            stor4[stor3.length] = tokenByIndex.length
                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                            if ext_code.size(msg.sender) > 0:
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = tokenByIndex.length
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = 0
                                                s = 0
                                                while s < 0:
                                                    mem[mem[64] + s + 164] = mem[_5333 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(msg.sender)
                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                _10898 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_10898] == Mask(32, 224, mem[_10898])
                                                if Mask(32, 224, mem[_10898]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    else:
                                        tokenOfOwnerByIndex[address(msg.sender)]++
                                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                        tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                        mem[0] = tokenByIndex.length
                                        mem[32] = 4
                                        if stor4[stor3.length]:
                                            if stor4[stor3.length] < 1:
                                                revert with 'NH{q', 17
                                            if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                revert with 'NH{q', 50
                                            mem[0] = 3
                                            address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                            Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                            if ext_code.size(msg.sender) > 0:
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = tokenByIndex.length
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = 0
                                                s = 0
                                                while s < 0:
                                                    mem[mem[64] + s + 164] = mem[_5333 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(msg.sender)
                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                _10899 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_10899] == Mask(32, 224, mem[_10899])
                                                if Mask(32, 224, mem[_10899]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            _5966 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5966] = tokenByIndex.length
                                            mem[_5966 + 32] = msg.sender
                                            tokenByIndex.length++
                                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                            mem[0] = tokenByIndex.length
                                            mem[32] = 4
                                            stor4[stor3.length] = tokenByIndex.length
                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                            if ext_code.size(msg.sender) > 0:
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = tokenByIndex.length
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = 0
                                                s = 0
                                                while s < 0:
                                                    mem[mem[64] + s + 164] = mem[_5333 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(msg.sender)
                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                _10900 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_10900] == Mask(32, 224, mem[_10900])
                                                if Mask(32, 224, mem[_10900]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                                idx = 0
                                while idx < arg1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = tokenByIndex.length
                                    _5334 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5334] = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC721: mint to the zero address'
                                    if stor4[stor3.length]:
                                        revert with 0, 'ERC721: token already minted'
                                    if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                        mem[0] = tokenByIndex.length
                                        mem[32] = 4
                                        if stor4[stor3.length]:
                                            if stor4[stor3.length] < 1:
                                                revert with 'NH{q', 17
                                            if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                revert with 'NH{q', 50
                                            mem[0] = 3
                                            address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                            Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                            if ext_code.size(msg.sender) > 0:
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = tokenByIndex.length
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = 0
                                                s = 0
                                                while s < 0:
                                                    mem[mem[64] + s + 164] = mem[_5334 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(msg.sender)
                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                _10901 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_10901] == Mask(32, 224, mem[_10901])
                                                if Mask(32, 224, mem[_10901]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            _5971 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5971] = tokenByIndex.length
                                            mem[_5971 + 32] = msg.sender
                                            tokenByIndex.length++
                                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                            mem[0] = tokenByIndex.length
                                            mem[32] = 4
                                            stor4[stor3.length] = tokenByIndex.length
                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                            if ext_code.size(msg.sender) > 0:
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = tokenByIndex.length
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = 0
                                                s = 0
                                                while s < 0:
                                                    mem[mem[64] + s + 164] = mem[_5334 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(msg.sender)
                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                _10902 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_10902] == Mask(32, 224, mem[_10902])
                                                if Mask(32, 224, mem[_10902]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    else:
                                        tokenOfOwnerByIndex[address(msg.sender)]++
                                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                        tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                        mem[0] = tokenByIndex.length
                                        mem[32] = 4
                                        if stor4[stor3.length]:
                                            if stor4[stor3.length] < 1:
                                                revert with 'NH{q', 17
                                            if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                revert with 'NH{q', 50
                                            mem[0] = 3
                                            address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                            Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                            if ext_code.size(msg.sender) > 0:
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = tokenByIndex.length
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = 0
                                                s = 0
                                                while s < 0:
                                                    mem[mem[64] + s + 164] = mem[_5334 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(msg.sender)
                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                _10903 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_10903] == Mask(32, 224, mem[_10903])
                                                if Mask(32, 224, mem[_10903]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            _5976 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5976] = tokenByIndex.length
                                            mem[_5976 + 32] = msg.sender
                                            tokenByIndex.length++
                                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                            mem[0] = tokenByIndex.length
                                            mem[32] = 4
                                            stor4[stor3.length] = tokenByIndex.length
                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                            if ext_code.size(msg.sender) > 0:
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = tokenByIndex.length
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = 0
                                                s = 0
                                                while s < 0:
                                                    mem[mem[64] + s + 164] = mem[_5334 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(msg.sender)
                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                _10904 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_10904] == Mask(32, 224, mem[_10904])
                                                if Mask(32, 224, mem[_10904]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                        else:
                            if 2000 >= tokenByIndex.length:
                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 'NH{q', 17
                                if msg.value < 10^18 * arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
                                if bool(hasSaleStarted) != 1:
                                    revert with 0, 'Sale is not going on right now!'
                                if arg1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[96] = arg1
                                mem[64] = (32 * arg1) + 128
                                if not arg1:
                                    idx = 0
                                    while idx < arg1:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = tokenByIndex.length
                                        _5331 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5331] = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC721: mint to the zero address'
                                        if stor4[stor3.length]:
                                            revert with 0, 'ERC721: token already minted'
                                        if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                            mem[0] = tokenByIndex.length
                                            mem[32] = 4
                                            if stor4[stor3.length]:
                                                if stor4[stor3.length] < 1:
                                                    revert with 'NH{q', 17
                                                if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                    revert with 'NH{q', 50
                                                mem[0] = 3
                                                address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                if ext_code.size(msg.sender) > 0:
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = 0
                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = 0
                                                    s = 0
                                                    while s < 0:
                                                        mem[mem[64] + s + 164] = mem[_5331 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(msg.sender)
                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                    _10889 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_10889] == Mask(32, 224, mem[_10889])
                                                    if Mask(32, 224, mem[_10889]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                _5941 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5941] = tokenByIndex.length
                                                mem[_5941 + 32] = msg.sender
                                                tokenByIndex.length++
                                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                mem[0] = tokenByIndex.length
                                                mem[32] = 4
                                                stor4[stor3.length] = tokenByIndex.length
                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                if ext_code.size(msg.sender) > 0:
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = 0
                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = 0
                                                    s = 0
                                                    while s < 0:
                                                        mem[mem[64] + s + 164] = mem[_5331 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(msg.sender)
                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                    _10890 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_10890] == Mask(32, 224, mem[_10890])
                                                    if Mask(32, 224, mem[_10890]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            tokenOfOwnerByIndex[address(msg.sender)]++
                                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                            tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                            mem[0] = tokenByIndex.length
                                            mem[32] = 4
                                            if stor4[stor3.length]:
                                                if stor4[stor3.length] < 1:
                                                    revert with 'NH{q', 17
                                                if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                    revert with 'NH{q', 50
                                                mem[0] = 3
                                                address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                if ext_code.size(msg.sender) > 0:
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = 0
                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = 0
                                                    s = 0
                                                    while s < 0:
                                                        mem[mem[64] + s + 164] = mem[_5331 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(msg.sender)
                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                    _10891 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_10891] == Mask(32, 224, mem[_10891])
                                                    if Mask(32, 224, mem[_10891]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                _5946 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5946] = tokenByIndex.length
                                                mem[_5946 + 32] = msg.sender
                                                tokenByIndex.length++
                                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                mem[0] = tokenByIndex.length
                                                mem[32] = 4
                                                stor4[stor3.length] = tokenByIndex.length
                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                if ext_code.size(msg.sender) > 0:
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = 0
                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = 0
                                                    s = 0
                                                    while s < 0:
                                                        mem[mem[64] + s + 164] = mem[_5331 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(msg.sender)
                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                    _10892 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_10892] == Mask(32, 224, mem[_10892])
                                                    if Mask(32, 224, mem[_10892]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                                    idx = 0
                                    while idx < arg1:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = tokenByIndex.length
                                        _5332 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5332] = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC721: mint to the zero address'
                                        if stor4[stor3.length]:
                                            revert with 0, 'ERC721: token already minted'
                                        if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                            mem[0] = tokenByIndex.length
                                            mem[32] = 4
                                            if stor4[stor3.length]:
                                                if stor4[stor3.length] < 1:
                                                    revert with 'NH{q', 17
                                                if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                    revert with 'NH{q', 50
                                                mem[0] = 3
                                                address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                if ext_code.size(msg.sender) > 0:
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = 0
                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = 0
                                                    s = 0
                                                    while s < 0:
                                                        mem[mem[64] + s + 164] = mem[_5332 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(msg.sender)
                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                    _10893 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_10893] == Mask(32, 224, mem[_10893])
                                                    if Mask(32, 224, mem[_10893]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                _5951 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5951] = tokenByIndex.length
                                                mem[_5951 + 32] = msg.sender
                                                tokenByIndex.length++
                                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                mem[0] = tokenByIndex.length
                                                mem[32] = 4
                                                stor4[stor3.length] = tokenByIndex.length
                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                if ext_code.size(msg.sender) > 0:
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = 0
                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = 0
                                                    s = 0
                                                    while s < 0:
                                                        mem[mem[64] + s + 164] = mem[_5332 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(msg.sender)
                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                    _10894 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_10894] == Mask(32, 224, mem[_10894])
                                                    if Mask(32, 224, mem[_10894]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            tokenOfOwnerByIndex[address(msg.sender)]++
                                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                            tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                            mem[0] = tokenByIndex.length
                                            mem[32] = 4
                                            if stor4[stor3.length]:
                                                if stor4[stor3.length] < 1:
                                                    revert with 'NH{q', 17
                                                if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                    revert with 'NH{q', 50
                                                mem[0] = 3
                                                address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                if ext_code.size(msg.sender) > 0:
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = 0
                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = 0
                                                    s = 0
                                                    while s < 0:
                                                        mem[mem[64] + s + 164] = mem[_5332 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(msg.sender)
                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                    _10895 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_10895] == Mask(32, 224, mem[_10895])
                                                    if Mask(32, 224, mem[_10895]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                _5956 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5956] = tokenByIndex.length
                                                mem[_5956 + 32] = msg.sender
                                                tokenByIndex.length++
                                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                mem[0] = tokenByIndex.length
                                                mem[32] = 4
                                                stor4[stor3.length] = tokenByIndex.length
                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                if ext_code.size(msg.sender) > 0:
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = 0
                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = 0
                                                    s = 0
                                                    while s < 0:
                                                        mem[mem[64] + s + 164] = mem[_5332 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(msg.sender)
                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                    _10896 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_10896] == Mask(32, 224, mem[_10896])
                                                    if Mask(32, 224, mem[_10896]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        continue 
                            else:
                                if 2500 >= tokenByIndex.length:
                                    if arg1 > 0xec1e4a7db69561a52b31e9e3d06c32e51e2652070753e7f4e:
                                        revert with 'NH{q', 17
                                    if msg.value < 125 * 10^16 * arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
                                    if bool(hasSaleStarted) != 1:
                                        revert with 0, 'Sale is not going on right now!'
                                    if arg1 > test266151307():
                                        revert with 'NH{q', 65
                                    mem[96] = arg1
                                    mem[64] = (32 * arg1) + 128
                                    if not arg1:
                                        idx = 0
                                        while idx < arg1:
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + 128] = tokenByIndex.length
                                            _5329 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5329] = 0
                                            if not msg.sender:
                                                revert with 0, 'ERC721: mint to the zero address'
                                            if stor4[stor3.length]:
                                                revert with 0, 'ERC721: token already minted'
                                            if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                                mem[0] = tokenByIndex.length
                                                mem[32] = 4
                                                if stor4[stor3.length]:
                                                    if stor4[stor3.length] < 1:
                                                        revert with 'NH{q', 17
                                                    if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                        revert with 'NH{q', 50
                                                    mem[0] = 3
                                                    address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                    Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                                    if ext_code.size(msg.sender) > 0:
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = 0
                                                        mem[mem[64] + 68] = tokenByIndex.length
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = 0
                                                        s = 0
                                                        while s < 0:
                                                            mem[mem[64] + s + 164] = mem[_5329 + s + 32]
                                                            s = s + 32
                                                            continue 
                                                        require ext_code.size(msg.sender)
                                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                        _10881 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_10881] == Mask(32, 224, mem[_10881])
                                                        if Mask(32, 224, mem[_10881]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    _5921 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5921] = tokenByIndex.length
                                                    mem[_5921 + 32] = msg.sender
                                                    tokenByIndex.length++
                                                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                    mem[0] = tokenByIndex.length
                                                    mem[32] = 4
                                                    stor4[stor3.length] = tokenByIndex.length
                                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                                    if ext_code.size(msg.sender) > 0:
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = 0
                                                        mem[mem[64] + 68] = tokenByIndex.length
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = 0
                                                        s = 0
                                                        while s < 0:
                                                            mem[mem[64] + s + 164] = mem[_5329 + s + 32]
                                                            s = s + 32
                                                            continue 
                                                        require ext_code.size(msg.sender)
                                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                        _10882 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_10882] == Mask(32, 224, mem[_10882])
                                                        if Mask(32, 224, mem[_10882]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                tokenOfOwnerByIndex[address(msg.sender)]++
                                                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                                tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                                mem[0] = tokenByIndex.length
                                                mem[32] = 4
                                                if stor4[stor3.length]:
                                                    if stor4[stor3.length] < 1:
                                                        revert with 'NH{q', 17
                                                    if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                        revert with 'NH{q', 50
                                                    mem[0] = 3
                                                    address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                    Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                                    if ext_code.size(msg.sender) > 0:
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = 0
                                                        mem[mem[64] + 68] = tokenByIndex.length
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = 0
                                                        s = 0
                                                        while s < 0:
                                                            mem[mem[64] + s + 164] = mem[_5329 + s + 32]
                                                            s = s + 32
                                                            continue 
                                                        require ext_code.size(msg.sender)
                                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                        _10883 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_10883] == Mask(32, 224, mem[_10883])
                                                        if Mask(32, 224, mem[_10883]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    _5926 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5926] = tokenByIndex.length
                                                    mem[_5926 + 32] = msg.sender
                                                    tokenByIndex.length++
                                                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                    mem[0] = tokenByIndex.length
                                                    mem[32] = 4
                                                    stor4[stor3.length] = tokenByIndex.length
                                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                                    if ext_code.size(msg.sender) > 0:
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = 0
                                                        mem[mem[64] + 68] = tokenByIndex.length
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = 0
                                                        s = 0
                                                        while s < 0:
                                                            mem[mem[64] + s + 164] = mem[_5329 + s + 32]
                                                            s = s + 32
                                                            continue 
                                                        require ext_code.size(msg.sender)
                                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                        _10884 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_10884] == Mask(32, 224, mem[_10884])
                                                        if Mask(32, 224, mem[_10884]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                                        idx = 0
                                        while idx < arg1:
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + 128] = tokenByIndex.length
                                            _5330 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5330] = 0
                                            if not msg.sender:
                                                revert with 0, 'ERC721: mint to the zero address'
                                            if stor4[stor3.length]:
                                                revert with 0, 'ERC721: token already minted'
                                            if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                                mem[0] = tokenByIndex.length
                                                mem[32] = 4
                                                if stor4[stor3.length]:
                                                    if stor4[stor3.length] < 1:
                                                        revert with 'NH{q', 17
                                                    if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                        revert with 'NH{q', 50
                                                    mem[0] = 3
                                                    address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                    Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                                    if ext_code.size(msg.sender) > 0:
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = 0
                                                        mem[mem[64] + 68] = tokenByIndex.length
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = 0
                                                        s = 0
                                                        while s < 0:
                                                            mem[mem[64] + s + 164] = mem[_5330 + s + 32]
                                                            s = s + 32
                                                            continue 
                                                        require ext_code.size(msg.sender)
                                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                        _10885 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_10885] == Mask(32, 224, mem[_10885])
                                                        if Mask(32, 224, mem[_10885]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    _5931 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5931] = tokenByIndex.length
                                                    mem[_5931 + 32] = msg.sender
                                                    tokenByIndex.length++
                                                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                    mem[0] = tokenByIndex.length
                                                    mem[32] = 4
                                                    stor4[stor3.length] = tokenByIndex.length
                                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                                    if ext_code.size(msg.sender) > 0:
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = 0
                                                        mem[mem[64] + 68] = tokenByIndex.length
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = 0
                                                        s = 0
                                                        while s < 0:
                                                            mem[mem[64] + s + 164] = mem[_5330 + s + 32]
                                                            s = s + 32
                                                            continue 
                                                        require ext_code.size(msg.sender)
                                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                        _10886 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_10886] == Mask(32, 224, mem[_10886])
                                                        if Mask(32, 224, mem[_10886]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                tokenOfOwnerByIndex[address(msg.sender)]++
                                                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                                tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                                mem[0] = tokenByIndex.length
                                                mem[32] = 4
                                                if stor4[stor3.length]:
                                                    if stor4[stor3.length] < 1:
                                                        revert with 'NH{q', 17
                                                    if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                        revert with 'NH{q', 50
                                                    mem[0] = 3
                                                    address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                    Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                                    if ext_code.size(msg.sender) > 0:
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = 0
                                                        mem[mem[64] + 68] = tokenByIndex.length
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = 0
                                                        s = 0
                                                        while s < 0:
                                                            mem[mem[64] + s + 164] = mem[_5330 + s + 32]
                                                            s = s + 32
                                                            continue 
                                                        require ext_code.size(msg.sender)
                                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                        _10887 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_10887] == Mask(32, 224, mem[_10887])
                                                        if Mask(32, 224, mem[_10887]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    _5936 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5936] = tokenByIndex.length
                                                    mem[_5936 + 32] = msg.sender
                                                    tokenByIndex.length++
                                                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                    mem[0] = tokenByIndex.length
                                                    mem[32] = 4
                                                    stor4[stor3.length] = tokenByIndex.length
                                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                                    if ext_code.size(msg.sender) > 0:
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = 0
                                                        mem[mem[64] + 68] = tokenByIndex.length
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = 0
                                                        s = 0
                                                        while s < 0:
                                                            mem[mem[64] + s + 164] = mem[_5330 + s + 32]
                                                            s = s + 32
                                                            continue 
                                                        require ext_code.size(msg.sender)
                                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                        _10888 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_10888] == Mask(32, 224, mem[_10888])
                                                        if Mask(32, 224, mem[_10888]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            continue 
                                else:
                                    if 3000 >= tokenByIndex.length:
                                        if arg1 > 0xc4c3e8be182726b44ea9983dd85a2a69991fef05db7096a16:
                                            revert with 'NH{q', 17
                                        if msg.value < 15 * 10^17 * arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
                                        if bool(hasSaleStarted) != 1:
                                            revert with 0, 'Sale is not going on right now!'
                                        if arg1 > test266151307():
                                            revert with 'NH{q', 65
                                        mem[96] = arg1
                                        mem[64] = (32 * arg1) + 128
                                        if not arg1:
                                            idx = 0
                                            while idx < arg1:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx) + 128] = tokenByIndex.length
                                                _5327 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5327] = 0
                                                if not msg.sender:
                                                    revert with 0, 'ERC721: mint to the zero address'
                                                if stor4[stor3.length]:
                                                    revert with 0, 'ERC721: token already minted'
                                                if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                                    mem[0] = tokenByIndex.length
                                                    mem[32] = 4
                                                    if stor4[stor3.length]:
                                                        if stor4[stor3.length] < 1:
                                                            revert with 'NH{q', 17
                                                        if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                            revert with 'NH{q', 50
                                                        mem[0] = 3
                                                        address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                        Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                                        if ext_code.size(msg.sender) > 0:
                                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = msg.sender
                                                            mem[mem[64] + 36] = 0
                                                            mem[mem[64] + 68] = tokenByIndex.length
                                                            mem[mem[64] + 100] = 128
                                                            mem[mem[64] + 132] = 0
                                                            s = 0
                                                            while s < 0:
                                                                mem[mem[64] + s + 164] = mem[_5327 + s + 32]
                                                                s = s + 32
                                                                continue 
                                                            require ext_code.size(msg.sender)
                                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                            _10873 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_10873] == Mask(32, 224, mem[_10873])
                                                            if Mask(32, 224, mem[_10873]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        _5901 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_5901] = tokenByIndex.length
                                                        mem[_5901 + 32] = msg.sender
                                                        tokenByIndex.length++
                                                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                        mem[0] = tokenByIndex.length
                                                        mem[32] = 4
                                                        stor4[stor3.length] = tokenByIndex.length
                                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                                        if ext_code.size(msg.sender) > 0:
                                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = msg.sender
                                                            mem[mem[64] + 36] = 0
                                                            mem[mem[64] + 68] = tokenByIndex.length
                                                            mem[mem[64] + 100] = 128
                                                            mem[mem[64] + 132] = 0
                                                            s = 0
                                                            while s < 0:
                                                                mem[mem[64] + s + 164] = mem[_5327 + s + 32]
                                                                s = s + 32
                                                                continue 
                                                            require ext_code.size(msg.sender)
                                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                            _10874 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_10874] == Mask(32, 224, mem[_10874])
                                                            if Mask(32, 224, mem[_10874]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    tokenOfOwnerByIndex[address(msg.sender)]++
                                                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                                    tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                                    mem[0] = tokenByIndex.length
                                                    mem[32] = 4
                                                    if stor4[stor3.length]:
                                                        if stor4[stor3.length] < 1:
                                                            revert with 'NH{q', 17
                                                        if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                            revert with 'NH{q', 50
                                                        mem[0] = 3
                                                        address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                        Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                                        if ext_code.size(msg.sender) > 0:
                                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = msg.sender
                                                            mem[mem[64] + 36] = 0
                                                            mem[mem[64] + 68] = tokenByIndex.length
                                                            mem[mem[64] + 100] = 128
                                                            mem[mem[64] + 132] = 0
                                                            s = 0
                                                            while s < 0:
                                                                mem[mem[64] + s + 164] = mem[_5327 + s + 32]
                                                                s = s + 32
                                                                continue 
                                                            require ext_code.size(msg.sender)
                                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                            _10875 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_10875] == Mask(32, 224, mem[_10875])
                                                            if Mask(32, 224, mem[_10875]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        _5906 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_5906] = tokenByIndex.length
                                                        mem[_5906 + 32] = msg.sender
                                                        tokenByIndex.length++
                                                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                        mem[0] = tokenByIndex.length
                                                        mem[32] = 4
                                                        stor4[stor3.length] = tokenByIndex.length
                                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                                        if ext_code.size(msg.sender) > 0:
                                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = msg.sender
                                                            mem[mem[64] + 36] = 0
                                                            mem[mem[64] + 68] = tokenByIndex.length
                                                            mem[mem[64] + 100] = 128
                                                            mem[mem[64] + 132] = 0
                                                            s = 0
                                                            while s < 0:
                                                                mem[mem[64] + s + 164] = mem[_5327 + s + 32]
                                                                s = s + 32
                                                                continue 
                                                            require ext_code.size(msg.sender)
                                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                            _10876 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_10876] == Mask(32, 224, mem[_10876])
                                                            if Mask(32, 224, mem[_10876]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                continue 
                                        else:
                                            mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                                            idx = 0
                                            while idx < arg1:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx) + 128] = tokenByIndex.length
                                                _5328 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5328] = 0
                                                if not msg.sender:
                                                    revert with 0, 'ERC721: mint to the zero address'
                                                if stor4[stor3.length]:
                                                    revert with 0, 'ERC721: token already minted'
                                                if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                                    mem[0] = tokenByIndex.length
                                                    mem[32] = 4
                                                    if stor4[stor3.length]:
                                                        if stor4[stor3.length] < 1:
                                                            revert with 'NH{q', 17
                                                        if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                            revert with 'NH{q', 50
                                                        mem[0] = 3
                                                        address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                        Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                                        if ext_code.size(msg.sender) > 0:
                                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = msg.sender
                                                            mem[mem[64] + 36] = 0
                                                            mem[mem[64] + 68] = tokenByIndex.length
                                                            mem[mem[64] + 100] = 128
                                                            mem[mem[64] + 132] = 0
                                                            s = 0
                                                            while s < 0:
                                                                mem[mem[64] + s + 164] = mem[_5328 + s + 32]
                                                                s = s + 32
                                                                continue 
                                                            require ext_code.size(msg.sender)
                                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                            _10877 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_10877] == Mask(32, 224, mem[_10877])
                                                            if Mask(32, 224, mem[_10877]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        _5911 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_5911] = tokenByIndex.length
                                                        mem[_5911 + 32] = msg.sender
                                                        tokenByIndex.length++
                                                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                        mem[0] = tokenByIndex.length
                                                        mem[32] = 4
                                                        stor4[stor3.length] = tokenByIndex.length
                                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                                        if ext_code.size(msg.sender) > 0:
                                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = msg.sender
                                                            mem[mem[64] + 36] = 0
                                                            mem[mem[64] + 68] = tokenByIndex.length
                                                            mem[mem[64] + 100] = 128
                                                            mem[mem[64] + 132] = 0
                                                            s = 0
                                                            while s < 0:
                                                                mem[mem[64] + s + 164] = mem[_5328 + s + 32]
                                                                s = s + 32
                                                                continue 
                                                            require ext_code.size(msg.sender)
                                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                            _10878 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_10878] == Mask(32, 224, mem[_10878])
                                                            if Mask(32, 224, mem[_10878]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    tokenOfOwnerByIndex[address(msg.sender)]++
                                                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                                    tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                                    mem[0] = tokenByIndex.length
                                                    mem[32] = 4
                                                    if stor4[stor3.length]:
                                                        if stor4[stor3.length] < 1:
                                                            revert with 'NH{q', 17
                                                        if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                            revert with 'NH{q', 50
                                                        mem[0] = 3
                                                        address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                        Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                                        if ext_code.size(msg.sender) > 0:
                                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = msg.sender
                                                            mem[mem[64] + 36] = 0
                                                            mem[mem[64] + 68] = tokenByIndex.length
                                                            mem[mem[64] + 100] = 128
                                                            mem[mem[64] + 132] = 0
                                                            s = 0
                                                            while s < 0:
                                                                mem[mem[64] + s + 164] = mem[_5328 + s + 32]
                                                                s = s + 32
                                                                continue 
                                                            require ext_code.size(msg.sender)
                                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                            _10879 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_10879] == Mask(32, 224, mem[_10879])
                                                            if Mask(32, 224, mem[_10879]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        _5916 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_5916] = tokenByIndex.length
                                                        mem[_5916 + 32] = msg.sender
                                                        tokenByIndex.length++
                                                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                        mem[0] = tokenByIndex.length
                                                        mem[32] = 4
                                                        stor4[stor3.length] = tokenByIndex.length
                                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                                        if ext_code.size(msg.sender) > 0:
                                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = msg.sender
                                                            mem[mem[64] + 36] = 0
                                                            mem[mem[64] + 68] = tokenByIndex.length
                                                            mem[mem[64] + 100] = 128
                                                            mem[mem[64] + 132] = 0
                                                            s = 0
                                                            while s < 0:
                                                                mem[mem[64] + s + 164] = mem[_5328 + s + 32]
                                                                s = s + 32
                                                                continue 
                                                            require ext_code.size(msg.sender)
                                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                            _10880 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_10880] == Mask(32, 224, mem[_10880])
                                                            if Mask(32, 224, mem[_10880]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if 4000 >= tokenByIndex.length:
                                            if arg1 > 0xa8a7ec10a6fcfc9a8c915debde04245a833ff172bc175c8a5:
                                                revert with 'NH{q', 17
                                            if msg.value < 175 * 10^16 * arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
                                            if bool(hasSaleStarted) != 1:
                                                revert with 0, 'Sale is not going on right now!'
                                            if arg1 > test266151307():
                                                revert with 'NH{q', 65
                                            mem[96] = arg1
                                            mem[64] = (32 * arg1) + 128
                                            if not arg1:
                                                idx = 0
                                                while idx < arg1:
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx) + 128] = tokenByIndex.length
                                                    _5325 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_5325] = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC721: mint to the zero address'
                                                    if stor4[stor3.length]:
                                                        revert with 0, 'ERC721: token already minted'
                                                    if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                                        mem[0] = tokenByIndex.length
                                                        mem[32] = 4
                                                        if stor4[stor3.length]:
                                                            if stor4[stor3.length] < 1:
                                                                revert with 'NH{q', 17
                                                            if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                revert with 'NH{q', 50
                                                            mem[0] = 3
                                                            address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                            Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                                            if ext_code.size(msg.sender) > 0:
                                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = msg.sender
                                                                mem[mem[64] + 36] = 0
                                                                mem[mem[64] + 68] = tokenByIndex.length
                                                                mem[mem[64] + 100] = 128
                                                                mem[mem[64] + 132] = 0
                                                                s = 0
                                                                while s < 0:
                                                                    mem[mem[64] + s + 164] = mem[_5325 + s + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                require ext_code.size(msg.sender)
                                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                _10865 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_10865] == Mask(32, 224, mem[_10865])
                                                                if Mask(32, 224, mem[_10865]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            _5881 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_5881] = tokenByIndex.length
                                                            mem[_5881 + 32] = msg.sender
                                                            tokenByIndex.length++
                                                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                            mem[0] = tokenByIndex.length
                                                            mem[32] = 4
                                                            stor4[stor3.length] = tokenByIndex.length
                                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                                            if ext_code.size(msg.sender) > 0:
                                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = msg.sender
                                                                mem[mem[64] + 36] = 0
                                                                mem[mem[64] + 68] = tokenByIndex.length
                                                                mem[mem[64] + 100] = 128
                                                                mem[mem[64] + 132] = 0
                                                                s = 0
                                                                while s < 0:
                                                                    mem[mem[64] + s + 164] = mem[_5325 + s + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                require ext_code.size(msg.sender)
                                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                _10866 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_10866] == Mask(32, 224, mem[_10866])
                                                                if Mask(32, 224, mem[_10866]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        tokenOfOwnerByIndex[address(msg.sender)]++
                                                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                                        tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                                        mem[0] = tokenByIndex.length
                                                        mem[32] = 4
                                                        if stor4[stor3.length]:
                                                            if stor4[stor3.length] < 1:
                                                                revert with 'NH{q', 17
                                                            if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                revert with 'NH{q', 50
                                                            mem[0] = 3
                                                            address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                            Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                                            if ext_code.size(msg.sender) > 0:
                                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = msg.sender
                                                                mem[mem[64] + 36] = 0
                                                                mem[mem[64] + 68] = tokenByIndex.length
                                                                mem[mem[64] + 100] = 128
                                                                mem[mem[64] + 132] = 0
                                                                s = 0
                                                                while s < 0:
                                                                    mem[mem[64] + s + 164] = mem[_5325 + s + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                require ext_code.size(msg.sender)
                                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                _10867 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_10867] == Mask(32, 224, mem[_10867])
                                                                if Mask(32, 224, mem[_10867]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            _5886 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_5886] = tokenByIndex.length
                                                            mem[_5886 + 32] = msg.sender
                                                            tokenByIndex.length++
                                                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                            mem[0] = tokenByIndex.length
                                                            mem[32] = 4
                                                            stor4[stor3.length] = tokenByIndex.length
                                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                                            if ext_code.size(msg.sender) > 0:
                                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = msg.sender
                                                                mem[mem[64] + 36] = 0
                                                                mem[mem[64] + 68] = tokenByIndex.length
                                                                mem[mem[64] + 100] = 128
                                                                mem[mem[64] + 132] = 0
                                                                s = 0
                                                                while s < 0:
                                                                    mem[mem[64] + s + 164] = mem[_5325 + s + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                require ext_code.size(msg.sender)
                                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                _10868 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_10868] == Mask(32, 224, mem[_10868])
                                                                if Mask(32, 224, mem[_10868]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                                                idx = 0
                                                while idx < arg1:
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx) + 128] = tokenByIndex.length
                                                    _5326 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_5326] = 0
                                                    if not msg.sender:
                                                        revert with 0, 'ERC721: mint to the zero address'
                                                    if stor4[stor3.length]:
                                                        revert with 0, 'ERC721: token already minted'
                                                    if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                                        mem[0] = tokenByIndex.length
                                                        mem[32] = 4
                                                        if stor4[stor3.length]:
                                                            if stor4[stor3.length] < 1:
                                                                revert with 'NH{q', 17
                                                            if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                revert with 'NH{q', 50
                                                            mem[0] = 3
                                                            address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                            Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                                            if ext_code.size(msg.sender) > 0:
                                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = msg.sender
                                                                mem[mem[64] + 36] = 0
                                                                mem[mem[64] + 68] = tokenByIndex.length
                                                                mem[mem[64] + 100] = 128
                                                                mem[mem[64] + 132] = 0
                                                                s = 0
                                                                while s < 0:
                                                                    mem[mem[64] + s + 164] = mem[_5326 + s + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                require ext_code.size(msg.sender)
                                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                _10869 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_10869] == Mask(32, 224, mem[_10869])
                                                                if Mask(32, 224, mem[_10869]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            _5891 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_5891] = tokenByIndex.length
                                                            mem[_5891 + 32] = msg.sender
                                                            tokenByIndex.length++
                                                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                            mem[0] = tokenByIndex.length
                                                            mem[32] = 4
                                                            stor4[stor3.length] = tokenByIndex.length
                                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                                            if ext_code.size(msg.sender) > 0:
                                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = msg.sender
                                                                mem[mem[64] + 36] = 0
                                                                mem[mem[64] + 68] = tokenByIndex.length
                                                                mem[mem[64] + 100] = 128
                                                                mem[mem[64] + 132] = 0
                                                                s = 0
                                                                while s < 0:
                                                                    mem[mem[64] + s + 164] = mem[_5326 + s + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                require ext_code.size(msg.sender)
                                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                _10870 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_10870] == Mask(32, 224, mem[_10870])
                                                                if Mask(32, 224, mem[_10870]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        tokenOfOwnerByIndex[address(msg.sender)]++
                                                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                                        tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                                        mem[0] = tokenByIndex.length
                                                        mem[32] = 4
                                                        if stor4[stor3.length]:
                                                            if stor4[stor3.length] < 1:
                                                                revert with 'NH{q', 17
                                                            if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                revert with 'NH{q', 50
                                                            mem[0] = 3
                                                            address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                            Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                                            if ext_code.size(msg.sender) > 0:
                                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = msg.sender
                                                                mem[mem[64] + 36] = 0
                                                                mem[mem[64] + 68] = tokenByIndex.length
                                                                mem[mem[64] + 100] = 128
                                                                mem[mem[64] + 132] = 0
                                                                s = 0
                                                                while s < 0:
                                                                    mem[mem[64] + s + 164] = mem[_5326 + s + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                require ext_code.size(msg.sender)
                                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                _10871 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_10871] == Mask(32, 224, mem[_10871])
                                                                if Mask(32, 224, mem[_10871]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            _5896 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_5896] = tokenByIndex.length
                                                            mem[_5896 + 32] = msg.sender
                                                            tokenByIndex.length++
                                                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                            mem[0] = tokenByIndex.length
                                                            mem[32] = 4
                                                            stor4[stor3.length] = tokenByIndex.length
                                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                                            if ext_code.size(msg.sender) > 0:
                                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = msg.sender
                                                                mem[mem[64] + 36] = 0
                                                                mem[mem[64] + 68] = tokenByIndex.length
                                                                mem[mem[64] + 100] = 128
                                                                mem[mem[64] + 132] = 0
                                                                s = 0
                                                                while s < 0:
                                                                    mem[mem[64] + s + 164] = mem[_5326 + s + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                require ext_code.size(msg.sender)
                                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                _10872 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_10872] == Mask(32, 224, mem[_10872])
                                                                if Mask(32, 224, mem[_10872]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if 5000 >= tokenByIndex.length:
                                                if arg1 > 0x9392ee8e921d5d073aff322e62439fcf32d7f344649470f90:
                                                    revert with 'NH{q', 17
                                                if msg.value < 2 * 10^18 * arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
                                                if bool(hasSaleStarted) != 1:
                                                    revert with 0, 'Sale is not going on right now!'
                                                if arg1 > test266151307():
                                                    revert with 'NH{q', 65
                                                mem[96] = arg1
                                                mem[64] = (32 * arg1) + 128
                                                if not arg1:
                                                    idx = 0
                                                    while idx < arg1:
                                                        if idx >= mem[96]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx) + 128] = tokenByIndex.length
                                                        _5323 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_5323] = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC721: mint to the zero address'
                                                        if stor4[stor3.length]:
                                                            revert with 0, 'ERC721: token already minted'
                                                        if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                                            mem[0] = tokenByIndex.length
                                                            mem[32] = 4
                                                            if stor4[stor3.length]:
                                                                if stor4[stor3.length] < 1:
                                                                    revert with 'NH{q', 17
                                                                if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                    revert with 'NH{q', 50
                                                                mem[0] = 3
                                                                address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                if ext_code.size(msg.sender) > 0:
                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = msg.sender
                                                                    mem[mem[64] + 36] = 0
                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                    mem[mem[64] + 100] = 128
                                                                    mem[mem[64] + 132] = 0
                                                                    s = 0
                                                                    while s < 0:
                                                                        mem[mem[64] + s + 164] = mem[_5323 + s + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    require ext_code.size(msg.sender)
                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                    _10857 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_10857] == Mask(32, 224, mem[_10857])
                                                                    if Mask(32, 224, mem[_10857]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                            else:
                                                                _5861 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_5861] = tokenByIndex.length
                                                                mem[_5861 + 32] = msg.sender
                                                                tokenByIndex.length++
                                                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                mem[0] = tokenByIndex.length
                                                                mem[32] = 4
                                                                stor4[stor3.length] = tokenByIndex.length
                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                if ext_code.size(msg.sender) > 0:
                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = msg.sender
                                                                    mem[mem[64] + 36] = 0
                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                    mem[mem[64] + 100] = 128
                                                                    mem[mem[64] + 132] = 0
                                                                    s = 0
                                                                    while s < 0:
                                                                        mem[mem[64] + s + 164] = mem[_5323 + s + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    require ext_code.size(msg.sender)
                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                    _10858 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_10858] == Mask(32, 224, mem[_10858])
                                                                    if Mask(32, 224, mem[_10858]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            tokenOfOwnerByIndex[address(msg.sender)]++
                                                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                                            tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                                            mem[0] = tokenByIndex.length
                                                            mem[32] = 4
                                                            if stor4[stor3.length]:
                                                                if stor4[stor3.length] < 1:
                                                                    revert with 'NH{q', 17
                                                                if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                    revert with 'NH{q', 50
                                                                mem[0] = 3
                                                                address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                if ext_code.size(msg.sender) > 0:
                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = msg.sender
                                                                    mem[mem[64] + 36] = 0
                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                    mem[mem[64] + 100] = 128
                                                                    mem[mem[64] + 132] = 0
                                                                    s = 0
                                                                    while s < 0:
                                                                        mem[mem[64] + s + 164] = mem[_5323 + s + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    require ext_code.size(msg.sender)
                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                    _10859 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_10859] == Mask(32, 224, mem[_10859])
                                                                    if Mask(32, 224, mem[_10859]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                            else:
                                                                _5866 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_5866] = tokenByIndex.length
                                                                mem[_5866 + 32] = msg.sender
                                                                tokenByIndex.length++
                                                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                mem[0] = tokenByIndex.length
                                                                mem[32] = 4
                                                                stor4[stor3.length] = tokenByIndex.length
                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                if ext_code.size(msg.sender) > 0:
                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = msg.sender
                                                                    mem[mem[64] + 36] = 0
                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                    mem[mem[64] + 100] = 128
                                                                    mem[mem[64] + 132] = 0
                                                                    s = 0
                                                                    while s < 0:
                                                                        mem[mem[64] + s + 164] = mem[_5323 + s + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    require ext_code.size(msg.sender)
                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                    _10860 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_10860] == Mask(32, 224, mem[_10860])
                                                                    if Mask(32, 224, mem[_10860]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                                                    idx = 0
                                                    while idx < arg1:
                                                        if idx >= mem[96]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx) + 128] = tokenByIndex.length
                                                        _5324 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_5324] = 0
                                                        if not msg.sender:
                                                            revert with 0, 'ERC721: mint to the zero address'
                                                        if stor4[stor3.length]:
                                                            revert with 0, 'ERC721: token already minted'
                                                        if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                                            mem[0] = tokenByIndex.length
                                                            mem[32] = 4
                                                            if stor4[stor3.length]:
                                                                if stor4[stor3.length] < 1:
                                                                    revert with 'NH{q', 17
                                                                if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                    revert with 'NH{q', 50
                                                                mem[0] = 3
                                                                address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                if ext_code.size(msg.sender) > 0:
                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = msg.sender
                                                                    mem[mem[64] + 36] = 0
                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                    mem[mem[64] + 100] = 128
                                                                    mem[mem[64] + 132] = 0
                                                                    s = 0
                                                                    while s < 0:
                                                                        mem[mem[64] + s + 164] = mem[_5324 + s + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    require ext_code.size(msg.sender)
                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                    _10861 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_10861] == Mask(32, 224, mem[_10861])
                                                                    if Mask(32, 224, mem[_10861]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                            else:
                                                                _5871 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_5871] = tokenByIndex.length
                                                                mem[_5871 + 32] = msg.sender
                                                                tokenByIndex.length++
                                                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                mem[0] = tokenByIndex.length
                                                                mem[32] = 4
                                                                stor4[stor3.length] = tokenByIndex.length
                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                if ext_code.size(msg.sender) > 0:
                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = msg.sender
                                                                    mem[mem[64] + 36] = 0
                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                    mem[mem[64] + 100] = 128
                                                                    mem[mem[64] + 132] = 0
                                                                    s = 0
                                                                    while s < 0:
                                                                        mem[mem[64] + s + 164] = mem[_5324 + s + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    require ext_code.size(msg.sender)
                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                    _10862 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_10862] == Mask(32, 224, mem[_10862])
                                                                    if Mask(32, 224, mem[_10862]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            tokenOfOwnerByIndex[address(msg.sender)]++
                                                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                                            tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                                            mem[0] = tokenByIndex.length
                                                            mem[32] = 4
                                                            if stor4[stor3.length]:
                                                                if stor4[stor3.length] < 1:
                                                                    revert with 'NH{q', 17
                                                                if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                    revert with 'NH{q', 50
                                                                mem[0] = 3
                                                                address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                if ext_code.size(msg.sender) > 0:
                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = msg.sender
                                                                    mem[mem[64] + 36] = 0
                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                    mem[mem[64] + 100] = 128
                                                                    mem[mem[64] + 132] = 0
                                                                    s = 0
                                                                    while s < 0:
                                                                        mem[mem[64] + s + 164] = mem[_5324 + s + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    require ext_code.size(msg.sender)
                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                    _10863 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_10863] == Mask(32, 224, mem[_10863])
                                                                    if Mask(32, 224, mem[_10863]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                            else:
                                                                _5876 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_5876] = tokenByIndex.length
                                                                mem[_5876 + 32] = msg.sender
                                                                tokenByIndex.length++
                                                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                mem[0] = tokenByIndex.length
                                                                mem[32] = 4
                                                                stor4[stor3.length] = tokenByIndex.length
                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                if ext_code.size(msg.sender) > 0:
                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = msg.sender
                                                                    mem[mem[64] + 36] = 0
                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                    mem[mem[64] + 100] = 128
                                                                    mem[mem[64] + 132] = 0
                                                                    s = 0
                                                                    while s < 0:
                                                                        mem[mem[64] + s + 164] = mem[_5324 + s + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    require ext_code.size(msg.sender)
                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                    _10864 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_10864] == Mask(32, 224, mem[_10864])
                                                                    if Mask(32, 224, mem[_10864]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                if 6000 >= tokenByIndex.length:
                                                    if arg1 > 0x760f253edb4ab0d29598f4f1e83619728f13290383a9f3fa7:
                                                        revert with 'NH{q', 17
                                                    if msg.value < 25 * 10^17 * arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
                                                    if bool(hasSaleStarted) != 1:
                                                        revert with 0, 'Sale is not going on right now!'
                                                    if arg1 > test266151307():
                                                        revert with 'NH{q', 65
                                                    mem[96] = arg1
                                                    mem[64] = (32 * arg1) + 128
                                                    if not arg1:
                                                        idx = 0
                                                        while idx < arg1:
                                                            if idx >= mem[96]:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * idx) + 128] = tokenByIndex.length
                                                            _5321 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_5321] = 0
                                                            if not msg.sender:
                                                                revert with 0, 'ERC721: mint to the zero address'
                                                            if stor4[stor3.length]:
                                                                revert with 0, 'ERC721: token already minted'
                                                            if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                                                mem[0] = tokenByIndex.length
                                                                mem[32] = 4
                                                                if stor4[stor3.length]:
                                                                    if stor4[stor3.length] < 1:
                                                                        revert with 'NH{q', 17
                                                                    if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                        revert with 'NH{q', 50
                                                                    mem[0] = 3
                                                                    address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                    Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                    if ext_code.size(msg.sender) > 0:
                                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 4] = msg.sender
                                                                        mem[mem[64] + 36] = 0
                                                                        mem[mem[64] + 68] = tokenByIndex.length
                                                                        mem[mem[64] + 100] = 128
                                                                        mem[mem[64] + 132] = 0
                                                                        s = 0
                                                                        while s < 0:
                                                                            mem[mem[64] + s + 164] = mem[_5321 + s + 32]
                                                                            s = s + 32
                                                                            continue 
                                                                        require ext_code.size(msg.sender)
                                                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                        _10849 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_10849] == Mask(32, 224, mem[_10849])
                                                                        if Mask(32, 224, mem[_10849]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                else:
                                                                    _5841 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_5841] = tokenByIndex.length
                                                                    mem[_5841 + 32] = msg.sender
                                                                    tokenByIndex.length++
                                                                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                    mem[0] = tokenByIndex.length
                                                                    mem[32] = 4
                                                                    stor4[stor3.length] = tokenByIndex.length
                                                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                    if ext_code.size(msg.sender) > 0:
                                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 4] = msg.sender
                                                                        mem[mem[64] + 36] = 0
                                                                        mem[mem[64] + 68] = tokenByIndex.length
                                                                        mem[mem[64] + 100] = 128
                                                                        mem[mem[64] + 132] = 0
                                                                        s = 0
                                                                        while s < 0:
                                                                            mem[mem[64] + s + 164] = mem[_5321 + s + 32]
                                                                            s = s + 32
                                                                            continue 
                                                                        require ext_code.size(msg.sender)
                                                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                        _10850 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_10850] == Mask(32, 224, mem[_10850])
                                                                        if Mask(32, 224, mem[_10850]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                            else:
                                                                tokenOfOwnerByIndex[address(msg.sender)]++
                                                                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                                                tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                                                mem[0] = tokenByIndex.length
                                                                mem[32] = 4
                                                                if stor4[stor3.length]:
                                                                    if stor4[stor3.length] < 1:
                                                                        revert with 'NH{q', 17
                                                                    if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                        revert with 'NH{q', 50
                                                                    mem[0] = 3
                                                                    address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                    Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                    if ext_code.size(msg.sender) > 0:
                                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 4] = msg.sender
                                                                        mem[mem[64] + 36] = 0
                                                                        mem[mem[64] + 68] = tokenByIndex.length
                                                                        mem[mem[64] + 100] = 128
                                                                        mem[mem[64] + 132] = 0
                                                                        s = 0
                                                                        while s < 0:
                                                                            mem[mem[64] + s + 164] = mem[_5321 + s + 32]
                                                                            s = s + 32
                                                                            continue 
                                                                        require ext_code.size(msg.sender)
                                                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                        _10851 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_10851] == Mask(32, 224, mem[_10851])
                                                                        if Mask(32, 224, mem[_10851]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                else:
                                                                    _5846 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_5846] = tokenByIndex.length
                                                                    mem[_5846 + 32] = msg.sender
                                                                    tokenByIndex.length++
                                                                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                    mem[0] = tokenByIndex.length
                                                                    mem[32] = 4
                                                                    stor4[stor3.length] = tokenByIndex.length
                                                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                    if ext_code.size(msg.sender) > 0:
                                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 4] = msg.sender
                                                                        mem[mem[64] + 36] = 0
                                                                        mem[mem[64] + 68] = tokenByIndex.length
                                                                        mem[mem[64] + 100] = 128
                                                                        mem[mem[64] + 132] = 0
                                                                        s = 0
                                                                        while s < 0:
                                                                            mem[mem[64] + s + 164] = mem[_5321 + s + 32]
                                                                            s = s + 32
                                                                            continue 
                                                                        require ext_code.size(msg.sender)
                                                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                        _10852 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_10852] == Mask(32, 224, mem[_10852])
                                                                        if Mask(32, 224, mem[_10852]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                            if idx == -1:
                                                                revert with 'NH{q', 17
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                                                        idx = 0
                                                        while idx < arg1:
                                                            if idx >= mem[96]:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * idx) + 128] = tokenByIndex.length
                                                            _5322 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_5322] = 0
                                                            if not msg.sender:
                                                                revert with 0, 'ERC721: mint to the zero address'
                                                            if stor4[stor3.length]:
                                                                revert with 0, 'ERC721: token already minted'
                                                            if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                                                mem[0] = tokenByIndex.length
                                                                mem[32] = 4
                                                                if stor4[stor3.length]:
                                                                    if stor4[stor3.length] < 1:
                                                                        revert with 'NH{q', 17
                                                                    if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                        revert with 'NH{q', 50
                                                                    mem[0] = 3
                                                                    address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                    Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                    if ext_code.size(msg.sender) > 0:
                                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 4] = msg.sender
                                                                        mem[mem[64] + 36] = 0
                                                                        mem[mem[64] + 68] = tokenByIndex.length
                                                                        mem[mem[64] + 100] = 128
                                                                        mem[mem[64] + 132] = 0
                                                                        s = 0
                                                                        while s < 0:
                                                                            mem[mem[64] + s + 164] = mem[_5322 + s + 32]
                                                                            s = s + 32
                                                                            continue 
                                                                        require ext_code.size(msg.sender)
                                                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                        _10853 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_10853] == Mask(32, 224, mem[_10853])
                                                                        if Mask(32, 224, mem[_10853]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                else:
                                                                    _5851 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_5851] = tokenByIndex.length
                                                                    mem[_5851 + 32] = msg.sender
                                                                    tokenByIndex.length++
                                                                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                    mem[0] = tokenByIndex.length
                                                                    mem[32] = 4
                                                                    stor4[stor3.length] = tokenByIndex.length
                                                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                    if ext_code.size(msg.sender) > 0:
                                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 4] = msg.sender
                                                                        mem[mem[64] + 36] = 0
                                                                        mem[mem[64] + 68] = tokenByIndex.length
                                                                        mem[mem[64] + 100] = 128
                                                                        mem[mem[64] + 132] = 0
                                                                        s = 0
                                                                        while s < 0:
                                                                            mem[mem[64] + s + 164] = mem[_5322 + s + 32]
                                                                            s = s + 32
                                                                            continue 
                                                                        require ext_code.size(msg.sender)
                                                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                        _10854 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_10854] == Mask(32, 224, mem[_10854])
                                                                        if Mask(32, 224, mem[_10854]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                            else:
                                                                tokenOfOwnerByIndex[address(msg.sender)]++
                                                                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                                                tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                                                mem[0] = tokenByIndex.length
                                                                mem[32] = 4
                                                                if stor4[stor3.length]:
                                                                    if stor4[stor3.length] < 1:
                                                                        revert with 'NH{q', 17
                                                                    if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                        revert with 'NH{q', 50
                                                                    mem[0] = 3
                                                                    address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                    Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                    if ext_code.size(msg.sender) > 0:
                                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 4] = msg.sender
                                                                        mem[mem[64] + 36] = 0
                                                                        mem[mem[64] + 68] = tokenByIndex.length
                                                                        mem[mem[64] + 100] = 128
                                                                        mem[mem[64] + 132] = 0
                                                                        s = 0
                                                                        while s < 0:
                                                                            mem[mem[64] + s + 164] = mem[_5322 + s + 32]
                                                                            s = s + 32
                                                                            continue 
                                                                        require ext_code.size(msg.sender)
                                                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                        _10855 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_10855] == Mask(32, 224, mem[_10855])
                                                                        if Mask(32, 224, mem[_10855]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                else:
                                                                    _5856 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_5856] = tokenByIndex.length
                                                                    mem[_5856 + 32] = msg.sender
                                                                    tokenByIndex.length++
                                                                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                    mem[0] = tokenByIndex.length
                                                                    mem[32] = 4
                                                                    stor4[stor3.length] = tokenByIndex.length
                                                                    emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                    if ext_code.size(msg.sender) > 0:
                                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 4] = msg.sender
                                                                        mem[mem[64] + 36] = 0
                                                                        mem[mem[64] + 68] = tokenByIndex.length
                                                                        mem[mem[64] + 100] = 128
                                                                        mem[mem[64] + 132] = 0
                                                                        s = 0
                                                                        while s < 0:
                                                                            mem[mem[64] + s + 164] = mem[_5322 + s + 32]
                                                                            s = s + 32
                                                                            continue 
                                                                        require ext_code.size(msg.sender)
                                                                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                        _10856 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_10856] == Mask(32, 224, mem[_10856])
                                                                        if Mask(32, 224, mem[_10856]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                            if idx == -1:
                                                                revert with 'NH{q', 17
                                                            idx = idx + 1
                                                            continue 
                                                else:
                                                    if 7500 >= tokenByIndex.length:
                                                        if arg1 > 0x6261f45f0c13935a2754cc1eec2d1534cc8ff782edb84b50b:
                                                            revert with 'NH{q', 17
                                                        if msg.value < 3 * 10^18 * arg1:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
                                                        if bool(hasSaleStarted) != 1:
                                                            revert with 0, 'Sale is not going on right now!'
                                                        if arg1 > test266151307():
                                                            revert with 'NH{q', 65
                                                        mem[96] = arg1
                                                        mem[64] = (32 * arg1) + 128
                                                        if not arg1:
                                                            idx = 0
                                                            while idx < arg1:
                                                                if idx >= mem[96]:
                                                                    revert with 'NH{q', 50
                                                                mem[(32 * idx) + 128] = tokenByIndex.length
                                                                _5319 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_5319] = 0
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC721: mint to the zero address'
                                                                if stor4[stor3.length]:
                                                                    revert with 0, 'ERC721: token already minted'
                                                                if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                                                    mem[0] = tokenByIndex.length
                                                                    mem[32] = 4
                                                                    if stor4[stor3.length]:
                                                                        if stor4[stor3.length] < 1:
                                                                            revert with 'NH{q', 17
                                                                        if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                            revert with 'NH{q', 50
                                                                        mem[0] = 3
                                                                        address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                        Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                        if ext_code.size(msg.sender) > 0:
                                                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = msg.sender
                                                                            mem[mem[64] + 36] = 0
                                                                            mem[mem[64] + 68] = tokenByIndex.length
                                                                            mem[mem[64] + 100] = 128
                                                                            mem[mem[64] + 132] = 0
                                                                            s = 0
                                                                            while s < 0:
                                                                                mem[mem[64] + s + 164] = mem[_5319 + s + 32]
                                                                                s = s + 32
                                                                                continue 
                                                                            require ext_code.size(msg.sender)
                                                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                            _10841 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_10841] == Mask(32, 224, mem[_10841])
                                                                            if Mask(32, 224, mem[_10841]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                    else:
                                                                        _5821 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_5821] = tokenByIndex.length
                                                                        mem[_5821 + 32] = msg.sender
                                                                        tokenByIndex.length++
                                                                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                        mem[0] = tokenByIndex.length
                                                                        mem[32] = 4
                                                                        stor4[stor3.length] = tokenByIndex.length
                                                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                        if ext_code.size(msg.sender) > 0:
                                                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = msg.sender
                                                                            mem[mem[64] + 36] = 0
                                                                            mem[mem[64] + 68] = tokenByIndex.length
                                                                            mem[mem[64] + 100] = 128
                                                                            mem[mem[64] + 132] = 0
                                                                            s = 0
                                                                            while s < 0:
                                                                                mem[mem[64] + s + 164] = mem[_5319 + s + 32]
                                                                                s = s + 32
                                                                                continue 
                                                                            require ext_code.size(msg.sender)
                                                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                            _10842 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_10842] == Mask(32, 224, mem[_10842])
                                                                            if Mask(32, 224, mem[_10842]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                else:
                                                                    tokenOfOwnerByIndex[address(msg.sender)]++
                                                                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                                                    tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                                                    mem[0] = tokenByIndex.length
                                                                    mem[32] = 4
                                                                    if stor4[stor3.length]:
                                                                        if stor4[stor3.length] < 1:
                                                                            revert with 'NH{q', 17
                                                                        if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                            revert with 'NH{q', 50
                                                                        mem[0] = 3
                                                                        address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                        Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                        if ext_code.size(msg.sender) > 0:
                                                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = msg.sender
                                                                            mem[mem[64] + 36] = 0
                                                                            mem[mem[64] + 68] = tokenByIndex.length
                                                                            mem[mem[64] + 100] = 128
                                                                            mem[mem[64] + 132] = 0
                                                                            s = 0
                                                                            while s < 0:
                                                                                mem[mem[64] + s + 164] = mem[_5319 + s + 32]
                                                                                s = s + 32
                                                                                continue 
                                                                            require ext_code.size(msg.sender)
                                                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                            _10843 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_10843] == Mask(32, 224, mem[_10843])
                                                                            if Mask(32, 224, mem[_10843]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                    else:
                                                                        _5826 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_5826] = tokenByIndex.length
                                                                        mem[_5826 + 32] = msg.sender
                                                                        tokenByIndex.length++
                                                                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                        mem[0] = tokenByIndex.length
                                                                        mem[32] = 4
                                                                        stor4[stor3.length] = tokenByIndex.length
                                                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                        if ext_code.size(msg.sender) > 0:
                                                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = msg.sender
                                                                            mem[mem[64] + 36] = 0
                                                                            mem[mem[64] + 68] = tokenByIndex.length
                                                                            mem[mem[64] + 100] = 128
                                                                            mem[mem[64] + 132] = 0
                                                                            s = 0
                                                                            while s < 0:
                                                                                mem[mem[64] + s + 164] = mem[_5319 + s + 32]
                                                                                s = s + 32
                                                                                continue 
                                                                            require ext_code.size(msg.sender)
                                                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                            _10844 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_10844] == Mask(32, 224, mem[_10844])
                                                                            if Mask(32, 224, mem[_10844]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                if idx == -1:
                                                                    revert with 'NH{q', 17
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                                                            idx = 0
                                                            while idx < arg1:
                                                                if idx >= mem[96]:
                                                                    revert with 'NH{q', 50
                                                                mem[(32 * idx) + 128] = tokenByIndex.length
                                                                _5320 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_5320] = 0
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC721: mint to the zero address'
                                                                if stor4[stor3.length]:
                                                                    revert with 0, 'ERC721: token already minted'
                                                                if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                                                    mem[0] = tokenByIndex.length
                                                                    mem[32] = 4
                                                                    if stor4[stor3.length]:
                                                                        if stor4[stor3.length] < 1:
                                                                            revert with 'NH{q', 17
                                                                        if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                            revert with 'NH{q', 50
                                                                        mem[0] = 3
                                                                        address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                        Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                        if ext_code.size(msg.sender) > 0:
                                                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = msg.sender
                                                                            mem[mem[64] + 36] = 0
                                                                            mem[mem[64] + 68] = tokenByIndex.length
                                                                            mem[mem[64] + 100] = 128
                                                                            mem[mem[64] + 132] = 0
                                                                            s = 0
                                                                            while s < 0:
                                                                                mem[mem[64] + s + 164] = mem[_5320 + s + 32]
                                                                                s = s + 32
                                                                                continue 
                                                                            require ext_code.size(msg.sender)
                                                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                            _10845 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_10845] == Mask(32, 224, mem[_10845])
                                                                            if Mask(32, 224, mem[_10845]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                    else:
                                                                        _5831 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_5831] = tokenByIndex.length
                                                                        mem[_5831 + 32] = msg.sender
                                                                        tokenByIndex.length++
                                                                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                        mem[0] = tokenByIndex.length
                                                                        mem[32] = 4
                                                                        stor4[stor3.length] = tokenByIndex.length
                                                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                        if ext_code.size(msg.sender) > 0:
                                                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = msg.sender
                                                                            mem[mem[64] + 36] = 0
                                                                            mem[mem[64] + 68] = tokenByIndex.length
                                                                            mem[mem[64] + 100] = 128
                                                                            mem[mem[64] + 132] = 0
                                                                            s = 0
                                                                            while s < 0:
                                                                                mem[mem[64] + s + 164] = mem[_5320 + s + 32]
                                                                                s = s + 32
                                                                                continue 
                                                                            require ext_code.size(msg.sender)
                                                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                            _10846 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_10846] == Mask(32, 224, mem[_10846])
                                                                            if Mask(32, 224, mem[_10846]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                else:
                                                                    tokenOfOwnerByIndex[address(msg.sender)]++
                                                                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                                                    tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                                                    mem[0] = tokenByIndex.length
                                                                    mem[32] = 4
                                                                    if stor4[stor3.length]:
                                                                        if stor4[stor3.length] < 1:
                                                                            revert with 'NH{q', 17
                                                                        if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                            revert with 'NH{q', 50
                                                                        mem[0] = 3
                                                                        address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                        Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                        if ext_code.size(msg.sender) > 0:
                                                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = msg.sender
                                                                            mem[mem[64] + 36] = 0
                                                                            mem[mem[64] + 68] = tokenByIndex.length
                                                                            mem[mem[64] + 100] = 128
                                                                            mem[mem[64] + 132] = 0
                                                                            s = 0
                                                                            while s < 0:
                                                                                mem[mem[64] + s + 164] = mem[_5320 + s + 32]
                                                                                s = s + 32
                                                                                continue 
                                                                            require ext_code.size(msg.sender)
                                                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                            _10847 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_10847] == Mask(32, 224, mem[_10847])
                                                                            if Mask(32, 224, mem[_10847]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                    else:
                                                                        _5836 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_5836] = tokenByIndex.length
                                                                        mem[_5836 + 32] = msg.sender
                                                                        tokenByIndex.length++
                                                                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                        mem[0] = tokenByIndex.length
                                                                        mem[32] = 4
                                                                        stor4[stor3.length] = tokenByIndex.length
                                                                        emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                        if ext_code.size(msg.sender) > 0:
                                                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = msg.sender
                                                                            mem[mem[64] + 36] = 0
                                                                            mem[mem[64] + 68] = tokenByIndex.length
                                                                            mem[mem[64] + 100] = 128
                                                                            mem[mem[64] + 132] = 0
                                                                            s = 0
                                                                            while s < 0:
                                                                                mem[mem[64] + s + 164] = mem[_5320 + s + 32]
                                                                                s = s + 32
                                                                                continue 
                                                                            require ext_code.size(msg.sender)
                                                                            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                            _10848 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_10848] == Mask(32, 224, mem[_10848])
                                                                            if Mask(32, 224, mem[_10848]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                if idx == -1:
                                                                    revert with 'NH{q', 17
                                                                idx = idx + 1
                                                                continue 
                                                    else:
                                                        if 9000 >= tokenByIndex.length:
                                                            if arg1 > 0x49c97747490eae839d7f99173121cfe7996bf9a2324a387c8:
                                                                revert with 'NH{q', 17
                                                            if msg.value < 4 * 10^18 * arg1:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
                                                            if bool(hasSaleStarted) != 1:
                                                                revert with 0, 'Sale is not going on right now!'
                                                            if arg1 > test266151307():
                                                                revert with 'NH{q', 65
                                                            mem[96] = arg1
                                                            mem[64] = (32 * arg1) + 128
                                                            if not arg1:
                                                                idx = 0
                                                                while idx < arg1:
                                                                    if idx >= mem[96]:
                                                                        revert with 'NH{q', 50
                                                                    mem[(32 * idx) + 128] = tokenByIndex.length
                                                                    _5317 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_5317] = 0
                                                                    if not msg.sender:
                                                                        revert with 0, 'ERC721: mint to the zero address'
                                                                    if stor4[stor3.length]:
                                                                        revert with 0, 'ERC721: token already minted'
                                                                    if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                                                        mem[0] = tokenByIndex.length
                                                                        mem[32] = 4
                                                                        if stor4[stor3.length]:
                                                                            if stor4[stor3.length] < 1:
                                                                                revert with 'NH{q', 17
                                                                            if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                                revert with 'NH{q', 50
                                                                            mem[0] = 3
                                                                            address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                            Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                            if ext_code.size(msg.sender) > 0:
                                                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                mem[mem[64] + 4] = msg.sender
                                                                                mem[mem[64] + 36] = 0
                                                                                mem[mem[64] + 68] = tokenByIndex.length
                                                                                mem[mem[64] + 100] = 128
                                                                                mem[mem[64] + 132] = 0
                                                                                s = 0
                                                                                while s < 0:
                                                                                    mem[mem[64] + s + 164] = mem[_5317 + s + 32]
                                                                                    s = s + 32
                                                                                    continue 
                                                                                require ext_code.size(msg.sender)
                                                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                _10833 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_10833] == Mask(32, 224, mem[_10833])
                                                                                if Mask(32, 224, mem[_10833]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        else:
                                                                            _5801 = mem[64]
                                                                            mem[64] = mem[64] + 64
                                                                            mem[_5801] = tokenByIndex.length
                                                                            mem[_5801 + 32] = msg.sender
                                                                            tokenByIndex.length++
                                                                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                            mem[0] = tokenByIndex.length
                                                                            mem[32] = 4
                                                                            stor4[stor3.length] = tokenByIndex.length
                                                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                            if ext_code.size(msg.sender) > 0:
                                                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                mem[mem[64] + 4] = msg.sender
                                                                                mem[mem[64] + 36] = 0
                                                                                mem[mem[64] + 68] = tokenByIndex.length
                                                                                mem[mem[64] + 100] = 128
                                                                                mem[mem[64] + 132] = 0
                                                                                s = 0
                                                                                while s < 0:
                                                                                    mem[mem[64] + s + 164] = mem[_5317 + s + 32]
                                                                                    s = s + 32
                                                                                    continue 
                                                                                require ext_code.size(msg.sender)
                                                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                _10834 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_10834] == Mask(32, 224, mem[_10834])
                                                                                if Mask(32, 224, mem[_10834]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                    else:
                                                                        tokenOfOwnerByIndex[address(msg.sender)]++
                                                                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                                                        tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                                                        mem[0] = tokenByIndex.length
                                                                        mem[32] = 4
                                                                        if stor4[stor3.length]:
                                                                            if stor4[stor3.length] < 1:
                                                                                revert with 'NH{q', 17
                                                                            if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                                revert with 'NH{q', 50
                                                                            mem[0] = 3
                                                                            address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                            Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                            if ext_code.size(msg.sender) > 0:
                                                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                mem[mem[64] + 4] = msg.sender
                                                                                mem[mem[64] + 36] = 0
                                                                                mem[mem[64] + 68] = tokenByIndex.length
                                                                                mem[mem[64] + 100] = 128
                                                                                mem[mem[64] + 132] = 0
                                                                                s = 0
                                                                                while s < 0:
                                                                                    mem[mem[64] + s + 164] = mem[_5317 + s + 32]
                                                                                    s = s + 32
                                                                                    continue 
                                                                                require ext_code.size(msg.sender)
                                                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                _10835 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_10835] == Mask(32, 224, mem[_10835])
                                                                                if Mask(32, 224, mem[_10835]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        else:
                                                                            _5806 = mem[64]
                                                                            mem[64] = mem[64] + 64
                                                                            mem[_5806] = tokenByIndex.length
                                                                            mem[_5806 + 32] = msg.sender
                                                                            tokenByIndex.length++
                                                                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                            mem[0] = tokenByIndex.length
                                                                            mem[32] = 4
                                                                            stor4[stor3.length] = tokenByIndex.length
                                                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                            if ext_code.size(msg.sender) > 0:
                                                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                mem[mem[64] + 4] = msg.sender
                                                                                mem[mem[64] + 36] = 0
                                                                                mem[mem[64] + 68] = tokenByIndex.length
                                                                                mem[mem[64] + 100] = 128
                                                                                mem[mem[64] + 132] = 0
                                                                                s = 0
                                                                                while s < 0:
                                                                                    mem[mem[64] + s + 164] = mem[_5317 + s + 32]
                                                                                    s = s + 32
                                                                                    continue 
                                                                                require ext_code.size(msg.sender)
                                                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                _10836 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_10836] == Mask(32, 224, mem[_10836])
                                                                                if Mask(32, 224, mem[_10836]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                                                                idx = 0
                                                                while idx < arg1:
                                                                    if idx >= mem[96]:
                                                                        revert with 'NH{q', 50
                                                                    mem[(32 * idx) + 128] = tokenByIndex.length
                                                                    _5318 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_5318] = 0
                                                                    if not msg.sender:
                                                                        revert with 0, 'ERC721: mint to the zero address'
                                                                    if stor4[stor3.length]:
                                                                        revert with 0, 'ERC721: token already minted'
                                                                    if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                                                        mem[0] = tokenByIndex.length
                                                                        mem[32] = 4
                                                                        if stor4[stor3.length]:
                                                                            if stor4[stor3.length] < 1:
                                                                                revert with 'NH{q', 17
                                                                            if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                                revert with 'NH{q', 50
                                                                            mem[0] = 3
                                                                            address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                            Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                            if ext_code.size(msg.sender) > 0:
                                                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                mem[mem[64] + 4] = msg.sender
                                                                                mem[mem[64] + 36] = 0
                                                                                mem[mem[64] + 68] = tokenByIndex.length
                                                                                mem[mem[64] + 100] = 128
                                                                                mem[mem[64] + 132] = 0
                                                                                s = 0
                                                                                while s < 0:
                                                                                    mem[mem[64] + s + 164] = mem[_5318 + s + 32]
                                                                                    s = s + 32
                                                                                    continue 
                                                                                require ext_code.size(msg.sender)
                                                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                _10837 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_10837] == Mask(32, 224, mem[_10837])
                                                                                if Mask(32, 224, mem[_10837]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        else:
                                                                            _5811 = mem[64]
                                                                            mem[64] = mem[64] + 64
                                                                            mem[_5811] = tokenByIndex.length
                                                                            mem[_5811 + 32] = msg.sender
                                                                            tokenByIndex.length++
                                                                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                            mem[0] = tokenByIndex.length
                                                                            mem[32] = 4
                                                                            stor4[stor3.length] = tokenByIndex.length
                                                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                            if ext_code.size(msg.sender) > 0:
                                                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                mem[mem[64] + 4] = msg.sender
                                                                                mem[mem[64] + 36] = 0
                                                                                mem[mem[64] + 68] = tokenByIndex.length
                                                                                mem[mem[64] + 100] = 128
                                                                                mem[mem[64] + 132] = 0
                                                                                s = 0
                                                                                while s < 0:
                                                                                    mem[mem[64] + s + 164] = mem[_5318 + s + 32]
                                                                                    s = s + 32
                                                                                    continue 
                                                                                require ext_code.size(msg.sender)
                                                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                _10838 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_10838] == Mask(32, 224, mem[_10838])
                                                                                if Mask(32, 224, mem[_10838]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                    else:
                                                                        tokenOfOwnerByIndex[address(msg.sender)]++
                                                                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                                                        tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                                                        mem[0] = tokenByIndex.length
                                                                        mem[32] = 4
                                                                        if stor4[stor3.length]:
                                                                            if stor4[stor3.length] < 1:
                                                                                revert with 'NH{q', 17
                                                                            if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                                revert with 'NH{q', 50
                                                                            mem[0] = 3
                                                                            address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                            Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                            if ext_code.size(msg.sender) > 0:
                                                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                mem[mem[64] + 4] = msg.sender
                                                                                mem[mem[64] + 36] = 0
                                                                                mem[mem[64] + 68] = tokenByIndex.length
                                                                                mem[mem[64] + 100] = 128
                                                                                mem[mem[64] + 132] = 0
                                                                                s = 0
                                                                                while s < 0:
                                                                                    mem[mem[64] + s + 164] = mem[_5318 + s + 32]
                                                                                    s = s + 32
                                                                                    continue 
                                                                                require ext_code.size(msg.sender)
                                                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                _10839 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_10839] == Mask(32, 224, mem[_10839])
                                                                                if Mask(32, 224, mem[_10839]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        else:
                                                                            _5816 = mem[64]
                                                                            mem[64] = mem[64] + 64
                                                                            mem[_5816] = tokenByIndex.length
                                                                            mem[_5816 + 32] = msg.sender
                                                                            tokenByIndex.length++
                                                                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                            mem[0] = tokenByIndex.length
                                                                            mem[32] = 4
                                                                            stor4[stor3.length] = tokenByIndex.length
                                                                            emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                            if ext_code.size(msg.sender) > 0:
                                                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                mem[mem[64] + 4] = msg.sender
                                                                                mem[mem[64] + 36] = 0
                                                                                mem[mem[64] + 68] = tokenByIndex.length
                                                                                mem[mem[64] + 100] = 128
                                                                                mem[mem[64] + 132] = 0
                                                                                s = 0
                                                                                while s < 0:
                                                                                    mem[mem[64] + s + 164] = mem[_5318 + s + 32]
                                                                                    s = s + 32
                                                                                    continue 
                                                                                require ext_code.size(msg.sender)
                                                                                call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                _10840 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_10840] == Mask(32, 224, mem[_10840])
                                                                                if Mask(32, 224, mem[_10840]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx + 1
                                                                    continue 
                                                        else:
                                                            if 9999 < tokenByIndex.length:
                                                                if arg1 > 0x5e72843249088d75447a5d8e535e7ac20c0f5402cfbb2995:
                                                                    revert with 'NH{q', 17
                                                                if msg.value < 50 * 10^18 * arg1:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
                                                                if bool(hasSaleStarted) != 1:
                                                                    revert with 0, 'Sale is not going on right now!'
                                                                if arg1 > test266151307():
                                                                    revert with 'NH{q', 65
                                                                mem[96] = arg1
                                                                mem[64] = (32 * arg1) + 128
                                                                if not arg1:
                                                                    idx = 0
                                                                    while idx < arg1:
                                                                        if idx >= mem[96]:
                                                                            revert with 'NH{q', 50
                                                                        mem[(32 * idx) + 128] = tokenByIndex.length
                                                                        _5313 = mem[64]
                                                                        mem[64] = mem[64] + 32
                                                                        mem[_5313] = 0
                                                                        if not msg.sender:
                                                                            revert with 0, 'ERC721: mint to the zero address'
                                                                        if stor4[stor3.length]:
                                                                            revert with 0, 'ERC721: token already minted'
                                                                        if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                                                            mem[0] = tokenByIndex.length
                                                                            mem[32] = 4
                                                                            if stor4[stor3.length]:
                                                                                if stor4[stor3.length] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                                    revert with 'NH{q', 50
                                                                                mem[0] = 3
                                                                                address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                                Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                                if ext_code.size(msg.sender) > 0:
                                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 4] = msg.sender
                                                                                    mem[mem[64] + 36] = 0
                                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                                    mem[mem[64] + 100] = 128
                                                                                    mem[mem[64] + 132] = 0
                                                                                    s = 0
                                                                                    while s < 0:
                                                                                        mem[mem[64] + s + 164] = mem[_5313 + s + 32]
                                                                                        s = s + 32
                                                                                        continue 
                                                                                    require ext_code.size(msg.sender)
                                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                    _10817 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_10817] == Mask(32, 224, mem[_10817])
                                                                                    if Mask(32, 224, mem[_10817]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                _5761 = mem[64]
                                                                                mem[64] = mem[64] + 64
                                                                                mem[_5761] = tokenByIndex.length
                                                                                mem[_5761 + 32] = msg.sender
                                                                                tokenByIndex.length++
                                                                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                                mem[0] = tokenByIndex.length
                                                                                mem[32] = 4
                                                                                stor4[stor3.length] = tokenByIndex.length
                                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                                if ext_code.size(msg.sender) > 0:
                                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 4] = msg.sender
                                                                                    mem[mem[64] + 36] = 0
                                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                                    mem[mem[64] + 100] = 128
                                                                                    mem[mem[64] + 132] = 0
                                                                                    s = 0
                                                                                    while s < 0:
                                                                                        mem[mem[64] + s + 164] = mem[_5313 + s + 32]
                                                                                        s = s + 32
                                                                                        continue 
                                                                                    require ext_code.size(msg.sender)
                                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                    _10818 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_10818] == Mask(32, 224, mem[_10818])
                                                                                    if Mask(32, 224, mem[_10818]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        else:
                                                                            tokenOfOwnerByIndex[address(msg.sender)]++
                                                                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                                                            tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                                                            mem[0] = tokenByIndex.length
                                                                            mem[32] = 4
                                                                            if stor4[stor3.length]:
                                                                                if stor4[stor3.length] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                                    revert with 'NH{q', 50
                                                                                mem[0] = 3
                                                                                address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                                Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                                if ext_code.size(msg.sender) > 0:
                                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 4] = msg.sender
                                                                                    mem[mem[64] + 36] = 0
                                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                                    mem[mem[64] + 100] = 128
                                                                                    mem[mem[64] + 132] = 0
                                                                                    s = 0
                                                                                    while s < 0:
                                                                                        mem[mem[64] + s + 164] = mem[_5313 + s + 32]
                                                                                        s = s + 32
                                                                                        continue 
                                                                                    require ext_code.size(msg.sender)
                                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                    _10819 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_10819] == Mask(32, 224, mem[_10819])
                                                                                    if Mask(32, 224, mem[_10819]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                _5766 = mem[64]
                                                                                mem[64] = mem[64] + 64
                                                                                mem[_5766] = tokenByIndex.length
                                                                                mem[_5766 + 32] = msg.sender
                                                                                tokenByIndex.length++
                                                                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                                mem[0] = tokenByIndex.length
                                                                                mem[32] = 4
                                                                                stor4[stor3.length] = tokenByIndex.length
                                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                                if ext_code.size(msg.sender) > 0:
                                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 4] = msg.sender
                                                                                    mem[mem[64] + 36] = 0
                                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                                    mem[mem[64] + 100] = 128
                                                                                    mem[mem[64] + 132] = 0
                                                                                    s = 0
                                                                                    while s < 0:
                                                                                        mem[mem[64] + s + 164] = mem[_5313 + s + 32]
                                                                                        s = s + 32
                                                                                        continue 
                                                                                    require ext_code.size(msg.sender)
                                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                    _10820 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_10820] == Mask(32, 224, mem[_10820])
                                                                                    if Mask(32, 224, mem[_10820]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        if idx == -1:
                                                                            revert with 'NH{q', 17
                                                                        idx = idx + 1
                                                                        continue 
                                                                else:
                                                                    mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                                                                    idx = 0
                                                                    while idx < arg1:
                                                                        if idx >= mem[96]:
                                                                            revert with 'NH{q', 50
                                                                        mem[(32 * idx) + 128] = tokenByIndex.length
                                                                        _5314 = mem[64]
                                                                        mem[64] = mem[64] + 32
                                                                        mem[_5314] = 0
                                                                        if not msg.sender:
                                                                            revert with 0, 'ERC721: mint to the zero address'
                                                                        if stor4[stor3.length]:
                                                                            revert with 0, 'ERC721: token already minted'
                                                                        if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                                                            mem[0] = tokenByIndex.length
                                                                            mem[32] = 4
                                                                            if stor4[stor3.length]:
                                                                                if stor4[stor3.length] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                                    revert with 'NH{q', 50
                                                                                mem[0] = 3
                                                                                address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                                Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                                if ext_code.size(msg.sender) > 0:
                                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 4] = msg.sender
                                                                                    mem[mem[64] + 36] = 0
                                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                                    mem[mem[64] + 100] = 128
                                                                                    mem[mem[64] + 132] = 0
                                                                                    s = 0
                                                                                    while s < 0:
                                                                                        mem[mem[64] + s + 164] = mem[_5314 + s + 32]
                                                                                        s = s + 32
                                                                                        continue 
                                                                                    require ext_code.size(msg.sender)
                                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                    _10821 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_10821] == Mask(32, 224, mem[_10821])
                                                                                    if Mask(32, 224, mem[_10821]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                _5771 = mem[64]
                                                                                mem[64] = mem[64] + 64
                                                                                mem[_5771] = tokenByIndex.length
                                                                                mem[_5771 + 32] = msg.sender
                                                                                tokenByIndex.length++
                                                                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                                mem[0] = tokenByIndex.length
                                                                                mem[32] = 4
                                                                                stor4[stor3.length] = tokenByIndex.length
                                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                                if ext_code.size(msg.sender) > 0:
                                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 4] = msg.sender
                                                                                    mem[mem[64] + 36] = 0
                                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                                    mem[mem[64] + 100] = 128
                                                                                    mem[mem[64] + 132] = 0
                                                                                    s = 0
                                                                                    while s < 0:
                                                                                        mem[mem[64] + s + 164] = mem[_5314 + s + 32]
                                                                                        s = s + 32
                                                                                        continue 
                                                                                    require ext_code.size(msg.sender)
                                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                    _10822 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_10822] == Mask(32, 224, mem[_10822])
                                                                                    if Mask(32, 224, mem[_10822]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        else:
                                                                            tokenOfOwnerByIndex[address(msg.sender)]++
                                                                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                                                            tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                                                            mem[0] = tokenByIndex.length
                                                                            mem[32] = 4
                                                                            if stor4[stor3.length]:
                                                                                if stor4[stor3.length] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                                    revert with 'NH{q', 50
                                                                                mem[0] = 3
                                                                                address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                                Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                                if ext_code.size(msg.sender) > 0:
                                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 4] = msg.sender
                                                                                    mem[mem[64] + 36] = 0
                                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                                    mem[mem[64] + 100] = 128
                                                                                    mem[mem[64] + 132] = 0
                                                                                    s = 0
                                                                                    while s < 0:
                                                                                        mem[mem[64] + s + 164] = mem[_5314 + s + 32]
                                                                                        s = s + 32
                                                                                        continue 
                                                                                    require ext_code.size(msg.sender)
                                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                    _10823 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_10823] == Mask(32, 224, mem[_10823])
                                                                                    if Mask(32, 224, mem[_10823]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                _5776 = mem[64]
                                                                                mem[64] = mem[64] + 64
                                                                                mem[_5776] = tokenByIndex.length
                                                                                mem[_5776 + 32] = msg.sender
                                                                                tokenByIndex.length++
                                                                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                                mem[0] = tokenByIndex.length
                                                                                mem[32] = 4
                                                                                stor4[stor3.length] = tokenByIndex.length
                                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                                if ext_code.size(msg.sender) > 0:
                                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 4] = msg.sender
                                                                                    mem[mem[64] + 36] = 0
                                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                                    mem[mem[64] + 100] = 128
                                                                                    mem[mem[64] + 132] = 0
                                                                                    s = 0
                                                                                    while s < 0:
                                                                                        mem[mem[64] + s + 164] = mem[_5314 + s + 32]
                                                                                        s = s + 32
                                                                                        continue 
                                                                                    require ext_code.size(msg.sender)
                                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                    _10824 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_10824] == Mask(32, 224, mem[_10824])
                                                                                    if Mask(32, 224, mem[_10824]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        if idx == -1:
                                                                            revert with 'NH{q', 17
                                                                        idx = idx + 1
                                                                        continue 
                                                            else:
                                                                if arg1 > 0x3b07929f6da558694acc7a78f41b0cb947899481c1d4f9fd3:
                                                                    revert with 'NH{q', 17
                                                                if msg.value < 5 * 10^18 * arg1:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
                                                                if bool(hasSaleStarted) != 1:
                                                                    revert with 0, 'Sale is not going on right now!'
                                                                if arg1 > test266151307():
                                                                    revert with 'NH{q', 65
                                                                mem[96] = arg1
                                                                mem[64] = (32 * arg1) + 128
                                                                if not arg1:
                                                                    idx = 0
                                                                    while idx < arg1:
                                                                        if idx >= mem[96]:
                                                                            revert with 'NH{q', 50
                                                                        mem[(32 * idx) + 128] = tokenByIndex.length
                                                                        _5315 = mem[64]
                                                                        mem[64] = mem[64] + 32
                                                                        mem[_5315] = 0
                                                                        if not msg.sender:
                                                                            revert with 0, 'ERC721: mint to the zero address'
                                                                        if stor4[stor3.length]:
                                                                            revert with 0, 'ERC721: token already minted'
                                                                        if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                                                            mem[0] = tokenByIndex.length
                                                                            mem[32] = 4
                                                                            if stor4[stor3.length]:
                                                                                if stor4[stor3.length] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                                    revert with 'NH{q', 50
                                                                                mem[0] = 3
                                                                                address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                                Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                                if ext_code.size(msg.sender) > 0:
                                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 4] = msg.sender
                                                                                    mem[mem[64] + 36] = 0
                                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                                    mem[mem[64] + 100] = 128
                                                                                    mem[mem[64] + 132] = 0
                                                                                    s = 0
                                                                                    while s < 0:
                                                                                        mem[mem[64] + s + 164] = mem[_5315 + s + 32]
                                                                                        s = s + 32
                                                                                        continue 
                                                                                    require ext_code.size(msg.sender)
                                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                    _10825 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_10825] == Mask(32, 224, mem[_10825])
                                                                                    if Mask(32, 224, mem[_10825]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                _5781 = mem[64]
                                                                                mem[64] = mem[64] + 64
                                                                                mem[_5781] = tokenByIndex.length
                                                                                mem[_5781 + 32] = msg.sender
                                                                                tokenByIndex.length++
                                                                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                                mem[0] = tokenByIndex.length
                                                                                mem[32] = 4
                                                                                stor4[stor3.length] = tokenByIndex.length
                                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                                if ext_code.size(msg.sender) > 0:
                                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 4] = msg.sender
                                                                                    mem[mem[64] + 36] = 0
                                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                                    mem[mem[64] + 100] = 128
                                                                                    mem[mem[64] + 132] = 0
                                                                                    s = 0
                                                                                    while s < 0:
                                                                                        mem[mem[64] + s + 164] = mem[_5315 + s + 32]
                                                                                        s = s + 32
                                                                                        continue 
                                                                                    require ext_code.size(msg.sender)
                                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                    _10826 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_10826] == Mask(32, 224, mem[_10826])
                                                                                    if Mask(32, 224, mem[_10826]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        else:
                                                                            tokenOfOwnerByIndex[address(msg.sender)]++
                                                                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                                                            tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                                                            mem[0] = tokenByIndex.length
                                                                            mem[32] = 4
                                                                            if stor4[stor3.length]:
                                                                                if stor4[stor3.length] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                                    revert with 'NH{q', 50
                                                                                mem[0] = 3
                                                                                address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                                Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                                if ext_code.size(msg.sender) > 0:
                                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 4] = msg.sender
                                                                                    mem[mem[64] + 36] = 0
                                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                                    mem[mem[64] + 100] = 128
                                                                                    mem[mem[64] + 132] = 0
                                                                                    s = 0
                                                                                    while s < 0:
                                                                                        mem[mem[64] + s + 164] = mem[_5315 + s + 32]
                                                                                        s = s + 32
                                                                                        continue 
                                                                                    require ext_code.size(msg.sender)
                                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                    _10827 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_10827] == Mask(32, 224, mem[_10827])
                                                                                    if Mask(32, 224, mem[_10827]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                _5786 = mem[64]
                                                                                mem[64] = mem[64] + 64
                                                                                mem[_5786] = tokenByIndex.length
                                                                                mem[_5786 + 32] = msg.sender
                                                                                tokenByIndex.length++
                                                                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                                mem[0] = tokenByIndex.length
                                                                                mem[32] = 4
                                                                                stor4[stor3.length] = tokenByIndex.length
                                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                                if ext_code.size(msg.sender) > 0:
                                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 4] = msg.sender
                                                                                    mem[mem[64] + 36] = 0
                                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                                    mem[mem[64] + 100] = 128
                                                                                    mem[mem[64] + 132] = 0
                                                                                    s = 0
                                                                                    while s < 0:
                                                                                        mem[mem[64] + s + 164] = mem[_5315 + s + 32]
                                                                                        s = s + 32
                                                                                        continue 
                                                                                    require ext_code.size(msg.sender)
                                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                    _10828 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_10828] == Mask(32, 224, mem[_10828])
                                                                                    if Mask(32, 224, mem[_10828]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        if idx == -1:
                                                                            revert with 'NH{q', 17
                                                                        idx = idx + 1
                                                                        continue 
                                                                else:
                                                                    mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                                                                    idx = 0
                                                                    while idx < arg1:
                                                                        if idx >= mem[96]:
                                                                            revert with 'NH{q', 50
                                                                        mem[(32 * idx) + 128] = tokenByIndex.length
                                                                        _5316 = mem[64]
                                                                        mem[64] = mem[64] + 32
                                                                        mem[_5316] = 0
                                                                        if not msg.sender:
                                                                            revert with 0, 'ERC721: mint to the zero address'
                                                                        if stor4[stor3.length]:
                                                                            revert with 0, 'ERC721: token already minted'
                                                                        if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                                                                            mem[0] = tokenByIndex.length
                                                                            mem[32] = 4
                                                                            if stor4[stor3.length]:
                                                                                if stor4[stor3.length] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                                    revert with 'NH{q', 50
                                                                                mem[0] = 3
                                                                                address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                                Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                                if ext_code.size(msg.sender) > 0:
                                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 4] = msg.sender
                                                                                    mem[mem[64] + 36] = 0
                                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                                    mem[mem[64] + 100] = 128
                                                                                    mem[mem[64] + 132] = 0
                                                                                    s = 0
                                                                                    while s < 0:
                                                                                        mem[mem[64] + s + 164] = mem[_5316 + s + 32]
                                                                                        s = s + 32
                                                                                        continue 
                                                                                    require ext_code.size(msg.sender)
                                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                    _10829 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_10829] == Mask(32, 224, mem[_10829])
                                                                                    if Mask(32, 224, mem[_10829]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                _5791 = mem[64]
                                                                                mem[64] = mem[64] + 64
                                                                                mem[_5791] = tokenByIndex.length
                                                                                mem[_5791 + 32] = msg.sender
                                                                                tokenByIndex.length++
                                                                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                                mem[0] = tokenByIndex.length
                                                                                mem[32] = 4
                                                                                stor4[stor3.length] = tokenByIndex.length
                                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                                if ext_code.size(msg.sender) > 0:
                                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 4] = msg.sender
                                                                                    mem[mem[64] + 36] = 0
                                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                                    mem[mem[64] + 100] = 128
                                                                                    mem[mem[64] + 132] = 0
                                                                                    s = 0
                                                                                    while s < 0:
                                                                                        mem[mem[64] + s + 164] = mem[_5316 + s + 32]
                                                                                        s = s + 32
                                                                                        continue 
                                                                                    require ext_code.size(msg.sender)
                                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                    _10830 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_10830] == Mask(32, 224, mem[_10830])
                                                                                    if Mask(32, 224, mem[_10830]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        else:
                                                                            tokenOfOwnerByIndex[address(msg.sender)]++
                                                                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                                                            tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                                                            mem[0] = tokenByIndex.length
                                                                            mem[32] = 4
                                                                            if stor4[stor3.length]:
                                                                                if stor4[stor3.length] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                if stor4[stor3.length] - 1 >= tokenByIndex.length:
                                                                                    revert with 'NH{q', 50
                                                                                mem[0] = 3
                                                                                address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                                                                                Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                                if ext_code.size(msg.sender) > 0:
                                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 4] = msg.sender
                                                                                    mem[mem[64] + 36] = 0
                                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                                    mem[mem[64] + 100] = 128
                                                                                    mem[mem[64] + 132] = 0
                                                                                    s = 0
                                                                                    while s < 0:
                                                                                        mem[mem[64] + s + 164] = mem[_5316 + s + 32]
                                                                                        s = s + 32
                                                                                        continue 
                                                                                    require ext_code.size(msg.sender)
                                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                    _10831 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_10831] == Mask(32, 224, mem[_10831])
                                                                                    if Mask(32, 224, mem[_10831]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                _5796 = mem[64]
                                                                                mem[64] = mem[64] + 64
                                                                                mem[_5796] = tokenByIndex.length
                                                                                mem[_5796 + 32] = msg.sender
                                                                                tokenByIndex.length++
                                                                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                                                                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                                                                                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                                                                                mem[0] = tokenByIndex.length
                                                                                mem[32] = 4
                                                                                stor4[stor3.length] = tokenByIndex.length
                                                                                emit Transfer(0, msg.sender, tokenByIndex.length);
                                                                                if ext_code.size(msg.sender) > 0:
                                                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 4] = msg.sender
                                                                                    mem[mem[64] + 36] = 0
                                                                                    mem[mem[64] + 68] = tokenByIndex.length
                                                                                    mem[mem[64] + 100] = 128
                                                                                    mem[mem[64] + 132] = 0
                                                                                    s = 0
                                                                                    while s < 0:
                                                                                        mem[mem[64] + s + 164] = mem[_5316 + s + 32]
                                                                                        s = s + 32
                                                                                        continue 
                                                                                    require ext_code.size(msg.sender)
                                                                                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                                                                                    _10832 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_10832] == Mask(32, 224, mem[_10832])
                                                                                    if Mask(32, 224, mem[_10832]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        if idx == -1:
                                                                            revert with 'NH{q', 17
                                                                        idx = idx + 1
                                                                        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    emit 0x2c649a6f: 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
