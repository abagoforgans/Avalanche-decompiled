contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const MAX_CARDS = 10000


mapping of uint8 stor0;
mapping of struct market;
address stor2;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor5;
mapping of address approved;
mapping of uint8 stor7;
array of struct stor8;
array of struct stor9;
array of struct stor11;
uint8 hasSaleStarted; offset 160
uint128 stor12; offset 160
address owner;
array of struct stor13;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor5[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
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
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor5[arg1] < 1:
        revert with 'NH{q', 17
    if stor5[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    return tokenByIndex[stor5[arg1] - 1].field_256
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
    return bool(stor7[address(arg1)][address(arg2)])
}

function Market(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if market[arg1].field_512 >= 5:
        revert with 'NH{q', 33
    return market[arg1].field_0, market[arg1].field_256, market[arg1].field_512
}

function _fallback() payable {
    revert
}

function stopSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = 0
}

function startSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = 1
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
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
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

function sub_b0ccefca(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor5[arg1] < 1:
        revert with 'NH{q', 17
    if stor5[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    require msg.sender == tokenByIndex[stor5[arg1] - 1].field_256
    market[arg1].field_256 = 0
    market[arg1].field_512 = 4
}

function calculatePrice() {
    if bool(hasSaleStarted) != 1:
        revert with 0, 'The sale hasn't started'
    if tokenByIndex.length >= 10000:
        revert with 0, 'The sale has ended'
    if tokenByIndex.length == 10000:
        return 10 * 10^18
    if tokenByIndex.length >= 8999:
        return 4 * 10^18
    if tokenByIndex.length >= 7999:
        return 3 * 10^18
    if tokenByIndex.length >= 5999:
        return 275 * 10^16
    if tokenByIndex.length >= 3999:
        return 2 * 10^18
    if tokenByIndex.length >= 999:
        return 10^18
    if tokenByIndex.length < 499:
        return 35 * 10^16
    return 5 * 10^17
}

function setCardPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor5[arg1] < 1:
        revert with 'NH{q', 17
    if stor5[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    require msg.sender == tokenByIndex[stor5[arg1] - 1].field_256
    market[arg1].field_256 = arg2
    market[arg1].field_512 = 1
    emit ForSale(arg1, arg2);
}

function getMyCards(address arg1) {
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
        mem[32] = 3
        if tokenOfOwnerByIndex[address(arg1)] <= idx:
            revert with 0, 'EnumerableSet: index out of bounds'
        if idx >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 3)
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
    if not stor5[arg2]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor5[arg2] < 1:
        revert with 'NH{q', 17
    if stor5[arg2] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if arg1 == tokenByIndex[stor5[arg2] - 1].field_256:
        revert with 0, 'ERC721: approval to current owner'
    if tokenByIndex[stor5[arg2] - 1].field_256 != msg.sender:
        if not stor7[stor4[stor5[arg2] - 1].field_256][address(msg.sender)]:
            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not stor5[arg2]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    if stor5[arg2] < 1:
        revert with 'NH{q', 17
    if stor5[arg2] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(tokenByIndex[stor5[arg2] - 1].field_256, arg1, arg2);
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
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
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

function setProvenanceHash(string arg1) {
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
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor13[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13.length = 0
            idx = 0
            while stor13.length.field_1 + 31 / 32 > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor13[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13.length = 0
            idx = 0
            while stor13.length.field_1 + 31 / 32 > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function name() {
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
        if ceil32(stor8.length.field_1) > stor8.length.field_1:
            mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
    if ceil32(stor8.length.field_1) > stor8.length.field_1:
        mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
}

function symbol() {
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor9.length):
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
        if ceil32(stor9.length.field_1) > stor9.length.field_1:
            mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
    if ceil32(stor9.length.field_1) > stor9.length.field_1:
        mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
}

function baseURI() {
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor11.length):
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) > stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
    if ceil32(stor11.length.field_1) > stor11.length.field_1:
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
    return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
}

function METADATA_PROVENANCE_HASH() {
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor13.length):
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
                mem[128] = 256 * stor13.length.field_8
        else:
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
                mem[128] = 256 * stor13.length.field_8
        mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
        if ceil32(stor13.length.field_1) > stor13.length.field_1:
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
    if bool(stor13.length) == stor13.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
    if ceil32(stor13.length.field_1) > stor13.length.field_1:
        mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
    return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor5[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor5[arg3] < 1:
        revert with 'NH{q', 17
    if stor5[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if tokenByIndex[stor5[arg3] - 1].field_256 != msg.sender:
        if not stor5[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor7[stor4[stor5[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    if stor5[arg3] < 1:
        revert with 'NH{q', 17
    if stor5[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if tokenByIndex[stor5[arg3] - 1].field_256 != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                    0
    if stor5[arg3] < 1:
        revert with 'NH{q', 17
    if stor5[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(tokenByIndex[stor5[arg3] - 1].field_256, 0, arg3);
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
    if stor5[arg3]:
        if stor5[arg3] < 1:
            revert with 'NH{q', 17
        if stor5[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor5[arg3] - 1].field_256 = arg2
        tokenByIndex[stor5[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor5[arg3] = tokenByIndex.length
    market[arg3].field_256 = 0
    market[arg3].field_512 = 4
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor5[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[201 len 23] >> 72,
                    0
    if stor5[arg3] < 1:
        revert with 'NH{q', 17
    if stor5[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if tokenByIndex[stor5[arg3] - 1].field_256 != msg.sender:
        if not stor5[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor7[stor4[stor5[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[297 len 23] >> 72,
                    0
    if stor5[arg3] < 1:
        revert with 'NH{q', 17
    if stor5[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if tokenByIndex[stor5[arg3] - 1].field_256 != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[393 len 23] >> 72,
                    0
    if stor5[arg3] < 1:
        revert with 'NH{q', 17
    if stor5[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(tokenByIndex[stor5[arg3] - 1].field_256, 0, arg3);
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
    if stor5[arg3]:
        if stor5[arg3] < 1:
            revert with 'NH{q', 17
        if stor5[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor5[arg3] - 1].field_256 = arg2
        tokenByIndex[stor5[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor5[arg3] = tokenByIndex.length
    market[arg3].field_256 = 0
    market[arg3].field_512 = 4
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

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor5[arg1] < 1:
        revert with 'NH{q', 17
    if stor5[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if msg.value < market[arg1].field_256:
        revert with 0, 'Price issue'
    if market[arg1].field_512 > 4:
        revert with 'NH{q', 33
    if market[arg1].field_512 != 1:
        revert with 0, 'No Sale'
    if market[arg1].field_256 >= 0:
        if msg.value and 2 > -1 / msg.value:
            revert with 'NH{q', 17
        if msg.value < 2 * msg.value / 100:
            revert with 'NH{q', 17
        call tokenByIndex[stor5[arg1] - 1].field_256 with:
           value msg.value - (2 * msg.value / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor2 with:
           value 2 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    if stor5[arg1] < 1:
        revert with 'NH{q', 17
    if stor5[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                    0
    if stor5[arg1] < 1:
        revert with 'NH{q', 17
    if stor5[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if tokenByIndex[stor5[arg1] - 1].field_256 != tokenByIndex[stor5[arg1] - 1].field_256:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not msg.sender:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg1] = 0
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[457 len 23] >> 72,
                    0
    if stor5[arg1] < 1:
        revert with 'NH{q', 17
    if stor5[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(tokenByIndex[stor5[arg1] - 1].field_256, 0, arg1);
    if tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1]:
        if tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1] < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256] < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256] - 1 >= tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]:
            revert with 'NH{q', 50
        if tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1] - 1 >= tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]:
            revert with 'NH{q', 50
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1]] = tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]]
        if tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1] - 1 > -2:
            revert with 'NH{q', 17
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]]] = tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1]
        if not tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]:
            revert with 'NH{q', 49
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]] = 0
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]--
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1] = 0
    if not tokenOfOwnerByIndex[address(msg.sender)][1][arg1]:
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
        tokenOfOwnerByIndex[address(msg.sender)][1][arg1] = tokenOfOwnerByIndex[address(msg.sender)]
    if stor5[arg1]:
        if stor5[arg1] < 1:
            revert with 'NH{q', 17
        if stor5[arg1] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor5[arg1] - 1].field_256 = msg.sender
        tokenByIndex[stor5[arg1] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg1
        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor5[arg1] = tokenByIndex.length
    market[arg1].field_256 = 0
    market[arg1].field_512 = 4
    emit Transfer(tokenByIndex[stor5[arg1] - 1].field_256, msg.sender, arg1);
    market[arg1].field_512 = 2
    emit Bought(arg1, msg.value);
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
    if not stor5[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(ceil32(arg4.length)) + 170 len 23] >> 72,
                    0
    if stor5[arg3] < 1:
        revert with 'NH{q', 17
    if stor5[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if tokenByIndex[stor5[arg3] - 1].field_256 != msg.sender:
        if not stor5[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor7[stor4[stor5[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(ceil32(arg4.length)) + 266 len 23] >> 72,
                    0
    if stor5[arg3] < 1:
        revert with 'NH{q', 17
    if stor5[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if tokenByIndex[stor5[arg3] - 1].field_256 != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(ceil32(arg4.length)) + 362 len 23] >> 72,
                    0
    if stor5[arg3] < 1:
        revert with 'NH{q', 17
    if stor5[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(tokenByIndex[stor5[arg3] - 1].field_256, 0, arg3);
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
    if stor5[arg3]:
        if stor5[arg3] < 1:
            revert with 'NH{q', 17
        if stor5[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor5[arg3] - 1].field_256 = arg2
        tokenByIndex[stor5[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor5[arg3] = tokenByIndex.length
    market[arg3].field_256 = 0
    market[arg3].field_512 = 4
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

function sub_c3f596ca(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenByIndex.length >= 10000:
        revert with 0, 'Sales have ended'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can claim between 1 and 10 cards a time'
    if arg1 > 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can claim between 1 and 10 cards a time'
    if tokenByIndex.length > -arg1 - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length + arg1 > 10000:
        revert with 0, 'Exceeds supply'
    if bool(hasSaleStarted) != 1:
        revert with 0, 'The sale hasn't started'
    if tokenByIndex.length >= 10000:
        revert with 0, 'The sale has ended'
    if tokenByIndex.length == 10000:
        if arg1 > 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0ea7cfe9:
            revert with 'NH{q', 17
        if msg.value < 10 * 10^18 * arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
        idx = 0
        while idx < arg1:
            _1284 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1284] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if stor5[stor4.length]:
                revert with 0, 'ERC721: token already minted'
            if tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length]:
                mem[0] = tokenByIndex.length
                mem[32] = 5
                if stor5[stor4.length]:
                    if stor5[stor4.length] < 1:
                        revert with 'NH{q', 17
                    if stor5[stor4.length] - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    mem[0] = 4
                    tokenByIndex[stor5[tokenByIndex.length] - 1].field_256 = msg.sender
                    tokenByIndex[stor5[tokenByIndex.length] - 1].field_416 = 0
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
                            mem[mem[64] + s + 164] = mem[_1284 + s + 32]
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
                        _2649 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2649] == Mask(32, 224, mem[_2649])
                        if Mask(32, 224, mem[_2649]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    _1443 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1443] = tokenByIndex.length
                    mem[_1443 + 32] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = tokenByIndex.length
                    mem[32] = 5
                    stor5[stor4.length] = tokenByIndex.length
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
                            mem[mem[64] + s + 164] = mem[_1284 + s + 32]
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
                        _2650 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2650] == Mask(32, 224, mem[_2650])
                        if Mask(32, 224, mem[_2650]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length] = tokenOfOwnerByIndex[address(msg.sender)]
                mem[0] = tokenByIndex.length
                mem[32] = 5
                if stor5[stor4.length]:
                    if stor5[stor4.length] < 1:
                        revert with 'NH{q', 17
                    if stor5[stor4.length] - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    mem[0] = 4
                    tokenByIndex[stor5[tokenByIndex.length] - 1].field_256 = msg.sender
                    tokenByIndex[stor5[tokenByIndex.length] - 1].field_416 = 0
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
                            mem[mem[64] + s + 164] = mem[_1284 + s + 32]
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
                        _2651 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2651] == Mask(32, 224, mem[_2651])
                        if Mask(32, 224, mem[_2651]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    _1448 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1448] = tokenByIndex.length
                    mem[_1448 + 32] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = tokenByIndex.length
                    mem[32] = 5
                    stor5[stor4.length] = tokenByIndex.length
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
                            mem[mem[64] + s + 164] = mem[_1284 + s + 32]
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
                        _2652 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2652] == Mask(32, 224, mem[_2652])
                        if Mask(32, 224, mem[_2652]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if tokenByIndex.length >= 8999:
            if arg1 > 0x49c97747490eae839d7f99173121cfe7996bf9a2324a387c8:
                revert with 'NH{q', 17
            if msg.value < 4 * 10^18 * arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
            idx = 0
            while idx < arg1:
                _1283 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1283] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor5[stor4.length]:
                    revert with 0, 'ERC721: token already minted'
                if tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length]:
                    mem[0] = tokenByIndex.length
                    mem[32] = 5
                    if stor5[stor4.length]:
                        if stor5[stor4.length] < 1:
                            revert with 'NH{q', 17
                        if stor5[stor4.length] - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        mem[0] = 4
                        tokenByIndex[stor5[tokenByIndex.length] - 1].field_256 = msg.sender
                        tokenByIndex[stor5[tokenByIndex.length] - 1].field_416 = 0
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
                                mem[mem[64] + s + 164] = mem[_1283 + s + 32]
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
                            _2645 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2645] == Mask(32, 224, mem[_2645])
                            if Mask(32, 224, mem[_2645]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        _1433 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1433] = tokenByIndex.length
                        mem[_1433 + 32] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = tokenByIndex.length
                        mem[32] = 5
                        stor5[stor4.length] = tokenByIndex.length
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
                                mem[mem[64] + s + 164] = mem[_1283 + s + 32]
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
                            _2646 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2646] == Mask(32, 224, mem[_2646])
                            if Mask(32, 224, mem[_2646]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    tokenOfOwnerByIndex[address(msg.sender)]++
                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                    tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[0] = tokenByIndex.length
                    mem[32] = 5
                    if stor5[stor4.length]:
                        if stor5[stor4.length] < 1:
                            revert with 'NH{q', 17
                        if stor5[stor4.length] - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        mem[0] = 4
                        tokenByIndex[stor5[tokenByIndex.length] - 1].field_256 = msg.sender
                        tokenByIndex[stor5[tokenByIndex.length] - 1].field_416 = 0
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
                                mem[mem[64] + s + 164] = mem[_1283 + s + 32]
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
                            _2647 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2647] == Mask(32, 224, mem[_2647])
                            if Mask(32, 224, mem[_2647]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        _1438 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1438] = tokenByIndex.length
                        mem[_1438 + 32] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = tokenByIndex.length
                        mem[32] = 5
                        stor5[stor4.length] = tokenByIndex.length
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
                                mem[mem[64] + s + 164] = mem[_1283 + s + 32]
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
                            _2648 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2648] == Mask(32, 224, mem[_2648])
                            if Mask(32, 224, mem[_2648]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if tokenByIndex.length >= 7999:
                if arg1 > 0x6261f45f0c13935a2754cc1eec2d1534cc8ff782edb84b50b:
                    revert with 'NH{q', 17
                if msg.value < 3 * 10^18 * arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
                idx = 0
                while idx < arg1:
                    _1282 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1282] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if stor5[stor4.length]:
                        revert with 0, 'ERC721: token already minted'
                    if tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length]:
                        mem[0] = tokenByIndex.length
                        mem[32] = 5
                        if stor5[stor4.length]:
                            if stor5[stor4.length] < 1:
                                revert with 'NH{q', 17
                            if stor5[stor4.length] - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            mem[0] = 4
                            tokenByIndex[stor5[tokenByIndex.length] - 1].field_256 = msg.sender
                            tokenByIndex[stor5[tokenByIndex.length] - 1].field_416 = 0
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
                                    mem[mem[64] + s + 164] = mem[_1282 + s + 32]
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
                                _2641 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2641] == Mask(32, 224, mem[_2641])
                                if Mask(32, 224, mem[_2641]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            _1423 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1423] = tokenByIndex.length
                            mem[_1423 + 32] = msg.sender
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                            tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                            tokenByIndex[tokenByIndex.length].field_416 = 0
                            mem[0] = tokenByIndex.length
                            mem[32] = 5
                            stor5[stor4.length] = tokenByIndex.length
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
                                    mem[mem[64] + s + 164] = mem[_1282 + s + 32]
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
                                _2642 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2642] == Mask(32, 224, mem[_2642])
                                if Mask(32, 224, mem[_2642]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[0] = tokenByIndex.length
                        mem[32] = 5
                        if stor5[stor4.length]:
                            if stor5[stor4.length] < 1:
                                revert with 'NH{q', 17
                            if stor5[stor4.length] - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            mem[0] = 4
                            tokenByIndex[stor5[tokenByIndex.length] - 1].field_256 = msg.sender
                            tokenByIndex[stor5[tokenByIndex.length] - 1].field_416 = 0
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
                                    mem[mem[64] + s + 164] = mem[_1282 + s + 32]
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
                                _2643 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2643] == Mask(32, 224, mem[_2643])
                                if Mask(32, 224, mem[_2643]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            _1428 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1428] = tokenByIndex.length
                            mem[_1428 + 32] = msg.sender
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                            tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                            tokenByIndex[tokenByIndex.length].field_416 = 0
                            mem[0] = tokenByIndex.length
                            mem[32] = 5
                            stor5[stor4.length] = tokenByIndex.length
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
                                    mem[mem[64] + s + 164] = mem[_1282 + s + 32]
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
                                _2644 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2644] == Mask(32, 224, mem[_2644])
                                if Mask(32, 224, mem[_2644]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if tokenByIndex.length >= 5999:
                    if arg1 > 0x6b53963924727233cdd0dead5ebcd150df28b0ebec0eddcc6:
                        revert with 'NH{q', 17
                    if msg.value < 275 * 10^16 * arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
                    idx = 0
                    while idx < arg1:
                        _1281 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1281] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if stor5[stor4.length]:
                            revert with 0, 'ERC721: token already minted'
                        if tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length]:
                            mem[0] = tokenByIndex.length
                            mem[32] = 5
                            if stor5[stor4.length]:
                                if stor5[stor4.length] < 1:
                                    revert with 'NH{q', 17
                                if stor5[stor4.length] - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                mem[0] = 4
                                tokenByIndex[stor5[tokenByIndex.length] - 1].field_256 = msg.sender
                                tokenByIndex[stor5[tokenByIndex.length] - 1].field_416 = 0
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
                                        mem[mem[64] + s + 164] = mem[_1281 + s + 32]
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
                                    _2637 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2637] == Mask(32, 224, mem[_2637])
                                    if Mask(32, 224, mem[_2637]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                _1413 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1413] = tokenByIndex.length
                                mem[_1413 + 32] = msg.sender
                                tokenByIndex.length++
                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                                tokenByIndex[tokenByIndex.length].field_416 = 0
                                mem[0] = tokenByIndex.length
                                mem[32] = 5
                                stor5[stor4.length] = tokenByIndex.length
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
                                        mem[mem[64] + s + 164] = mem[_1281 + s + 32]
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
                                    _2638 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2638] == Mask(32, 224, mem[_2638])
                                    if Mask(32, 224, mem[_2638]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            tokenOfOwnerByIndex[address(msg.sender)]++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                            tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length] = tokenOfOwnerByIndex[address(msg.sender)]
                            mem[0] = tokenByIndex.length
                            mem[32] = 5
                            if stor5[stor4.length]:
                                if stor5[stor4.length] < 1:
                                    revert with 'NH{q', 17
                                if stor5[stor4.length] - 1 >= tokenByIndex.length:
                                    revert with 'NH{q', 50
                                mem[0] = 4
                                tokenByIndex[stor5[tokenByIndex.length] - 1].field_256 = msg.sender
                                tokenByIndex[stor5[tokenByIndex.length] - 1].field_416 = 0
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
                                        mem[mem[64] + s + 164] = mem[_1281 + s + 32]
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
                                    _2639 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2639] == Mask(32, 224, mem[_2639])
                                    if Mask(32, 224, mem[_2639]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                _1418 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1418] = tokenByIndex.length
                                mem[_1418 + 32] = msg.sender
                                tokenByIndex.length++
                                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                                tokenByIndex[tokenByIndex.length].field_416 = 0
                                mem[0] = tokenByIndex.length
                                mem[32] = 5
                                stor5[stor4.length] = tokenByIndex.length
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
                                        mem[mem[64] + s + 164] = mem[_1281 + s + 32]
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
                                    _2640 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2640] == Mask(32, 224, mem[_2640])
                                    if Mask(32, 224, mem[_2640]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    if tokenByIndex.length >= 3999:
                        if arg1 > 0x9392ee8e921d5d073aff322e62439fcf32d7f344649470f90:
                            revert with 'NH{q', 17
                        if msg.value < 2 * 10^18 * arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
                        idx = 0
                        while idx < arg1:
                            _1280 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1280] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if stor5[stor4.length]:
                                revert with 0, 'ERC721: token already minted'
                            if tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length]:
                                mem[0] = tokenByIndex.length
                                mem[32] = 5
                                if stor5[stor4.length]:
                                    if stor5[stor4.length] < 1:
                                        revert with 'NH{q', 17
                                    if stor5[stor4.length] - 1 >= tokenByIndex.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 4
                                    tokenByIndex[stor5[tokenByIndex.length] - 1].field_256 = msg.sender
                                    tokenByIndex[stor5[tokenByIndex.length] - 1].field_416 = 0
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
                                            mem[mem[64] + s + 164] = mem[_1280 + s + 32]
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
                                        _2633 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2633] == Mask(32, 224, mem[_2633])
                                        if Mask(32, 224, mem[_2633]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                else:
                                    _1403 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1403] = tokenByIndex.length
                                    mem[_1403 + 32] = msg.sender
                                    tokenByIndex.length++
                                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                                    tokenByIndex[tokenByIndex.length].field_416 = 0
                                    mem[0] = tokenByIndex.length
                                    mem[32] = 5
                                    stor5[stor4.length] = tokenByIndex.length
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
                                            mem[mem[64] + s + 164] = mem[_1280 + s + 32]
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
                                        _2634 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2634] == Mask(32, 224, mem[_2634])
                                        if Mask(32, 224, mem[_2634]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                tokenOfOwnerByIndex[address(msg.sender)]++
                                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                mem[0] = tokenByIndex.length
                                mem[32] = 5
                                if stor5[stor4.length]:
                                    if stor5[stor4.length] < 1:
                                        revert with 'NH{q', 17
                                    if stor5[stor4.length] - 1 >= tokenByIndex.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 4
                                    tokenByIndex[stor5[tokenByIndex.length] - 1].field_256 = msg.sender
                                    tokenByIndex[stor5[tokenByIndex.length] - 1].field_416 = 0
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
                                            mem[mem[64] + s + 164] = mem[_1280 + s + 32]
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
                                        _2635 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2635] == Mask(32, 224, mem[_2635])
                                        if Mask(32, 224, mem[_2635]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                else:
                                    _1408 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1408] = tokenByIndex.length
                                    mem[_1408 + 32] = msg.sender
                                    tokenByIndex.length++
                                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                                    tokenByIndex[tokenByIndex.length].field_416 = 0
                                    mem[0] = tokenByIndex.length
                                    mem[32] = 5
                                    stor5[stor4.length] = tokenByIndex.length
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
                                            mem[mem[64] + s + 164] = mem[_1280 + s + 32]
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
                                        _2636 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2636] == Mask(32, 224, mem[_2636])
                                        if Mask(32, 224, mem[_2636]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        if tokenByIndex.length >= 999:
                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if msg.value < 10^18 * arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
                            idx = 0
                            while idx < arg1:
                                _1279 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1279] = 0
                                if not msg.sender:
                                    revert with 0, 'ERC721: mint to the zero address'
                                if stor5[stor4.length]:
                                    revert with 0, 'ERC721: token already minted'
                                if tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length]:
                                    mem[0] = tokenByIndex.length
                                    mem[32] = 5
                                    if stor5[stor4.length]:
                                        if stor5[stor4.length] < 1:
                                            revert with 'NH{q', 17
                                        if stor5[stor4.length] - 1 >= tokenByIndex.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 4
                                        tokenByIndex[stor5[tokenByIndex.length] - 1].field_256 = msg.sender
                                        tokenByIndex[stor5[tokenByIndex.length] - 1].field_416 = 0
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
                                                mem[mem[64] + s + 164] = mem[_1279 + s + 32]
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
                                            _2629 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2629] == Mask(32, 224, mem[_2629])
                                            if Mask(32, 224, mem[_2629]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    else:
                                        _1393 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1393] = tokenByIndex.length
                                        mem[_1393 + 32] = msg.sender
                                        tokenByIndex.length++
                                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                                        tokenByIndex[tokenByIndex.length].field_416 = 0
                                        mem[0] = tokenByIndex.length
                                        mem[32] = 5
                                        stor5[stor4.length] = tokenByIndex.length
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
                                                mem[mem[64] + s + 164] = mem[_1279 + s + 32]
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
                                            _2630 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2630] == Mask(32, 224, mem[_2630])
                                            if Mask(32, 224, mem[_2630]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                else:
                                    tokenOfOwnerByIndex[address(msg.sender)]++
                                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                    tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                    mem[0] = tokenByIndex.length
                                    mem[32] = 5
                                    if stor5[stor4.length]:
                                        if stor5[stor4.length] < 1:
                                            revert with 'NH{q', 17
                                        if stor5[stor4.length] - 1 >= tokenByIndex.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 4
                                        tokenByIndex[stor5[tokenByIndex.length] - 1].field_256 = msg.sender
                                        tokenByIndex[stor5[tokenByIndex.length] - 1].field_416 = 0
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
                                                mem[mem[64] + s + 164] = mem[_1279 + s + 32]
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
                                            _2631 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2631] == Mask(32, 224, mem[_2631])
                                            if Mask(32, 224, mem[_2631]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    else:
                                        _1398 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1398] = tokenByIndex.length
                                        mem[_1398 + 32] = msg.sender
                                        tokenByIndex.length++
                                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                                        tokenByIndex[tokenByIndex.length].field_416 = 0
                                        mem[0] = tokenByIndex.length
                                        mem[32] = 5
                                        stor5[stor4.length] = tokenByIndex.length
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
                                                mem[mem[64] + s + 164] = mem[_1279 + s + 32]
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
                                            _2632 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2632] == Mask(32, 224, mem[_2632])
                                            if Mask(32, 224, mem[_2632]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            if tokenByIndex.length < 499:
                                if arg1 > 0x34b479c5342f0ef04bed6d59b5614b5c4903fb73dac74ceb3b:
                                    revert with 'NH{q', 17
                                if msg.value < 35 * 10^16 * arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
                                idx = 0
                                while idx < arg1:
                                    _1277 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1277] = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC721: mint to the zero address'
                                    if stor5[stor4.length]:
                                        revert with 0, 'ERC721: token already minted'
                                    if tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length]:
                                        mem[0] = tokenByIndex.length
                                        mem[32] = 5
                                        if stor5[stor4.length]:
                                            if stor5[stor4.length] < 1:
                                                revert with 'NH{q', 17
                                            if stor5[stor4.length] - 1 >= tokenByIndex.length:
                                                revert with 'NH{q', 50
                                            mem[0] = 4
                                            tokenByIndex[stor5[tokenByIndex.length] - 1].field_256 = msg.sender
                                            tokenByIndex[stor5[tokenByIndex.length] - 1].field_416 = 0
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
                                                    mem[mem[64] + s + 164] = mem[_1277 + s + 32]
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
                                                _2621 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2621] == Mask(32, 224, mem[_2621])
                                                if Mask(32, 224, mem[_2621]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            _1373 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1373] = tokenByIndex.length
                                            mem[_1373 + 32] = msg.sender
                                            tokenByIndex.length++
                                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                            tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                                            tokenByIndex[tokenByIndex.length].field_416 = 0
                                            mem[0] = tokenByIndex.length
                                            mem[32] = 5
                                            stor5[stor4.length] = tokenByIndex.length
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
                                                    mem[mem[64] + s + 164] = mem[_1277 + s + 32]
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
                                                _2622 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2622] == Mask(32, 224, mem[_2622])
                                                if Mask(32, 224, mem[_2622]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    else:
                                        tokenOfOwnerByIndex[address(msg.sender)]++
                                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                        tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                        mem[0] = tokenByIndex.length
                                        mem[32] = 5
                                        if stor5[stor4.length]:
                                            if stor5[stor4.length] < 1:
                                                revert with 'NH{q', 17
                                            if stor5[stor4.length] - 1 >= tokenByIndex.length:
                                                revert with 'NH{q', 50
                                            mem[0] = 4
                                            tokenByIndex[stor5[tokenByIndex.length] - 1].field_256 = msg.sender
                                            tokenByIndex[stor5[tokenByIndex.length] - 1].field_416 = 0
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
                                                    mem[mem[64] + s + 164] = mem[_1277 + s + 32]
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
                                                _2623 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2623] == Mask(32, 224, mem[_2623])
                                                if Mask(32, 224, mem[_2623]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            _1378 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1378] = tokenByIndex.length
                                            mem[_1378 + 32] = msg.sender
                                            tokenByIndex.length++
                                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                            tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                                            tokenByIndex[tokenByIndex.length].field_416 = 0
                                            mem[0] = tokenByIndex.length
                                            mem[32] = 5
                                            stor5[stor4.length] = tokenByIndex.length
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
                                                    mem[mem[64] + s + 164] = mem[_1277 + s + 32]
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
                                                _2624 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2624] == Mask(32, 224, mem[_2624])
                                                if Mask(32, 224, mem[_2624]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if arg1 > 0x24e4bba3a4875741cebfcc8b9890e7f3ccb5fcd119251c3e43:
                                    revert with 'NH{q', 17
                                if msg.value < 5 * 10^17 * arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value sent is below the price'
                                idx = 0
                                while idx < arg1:
                                    _1278 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1278] = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC721: mint to the zero address'
                                    if stor5[stor4.length]:
                                        revert with 0, 'ERC721: token already minted'
                                    if tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length]:
                                        mem[0] = tokenByIndex.length
                                        mem[32] = 5
                                        if stor5[stor4.length]:
                                            if stor5[stor4.length] < 1:
                                                revert with 'NH{q', 17
                                            if stor5[stor4.length] - 1 >= tokenByIndex.length:
                                                revert with 'NH{q', 50
                                            mem[0] = 4
                                            tokenByIndex[stor5[tokenByIndex.length] - 1].field_256 = msg.sender
                                            tokenByIndex[stor5[tokenByIndex.length] - 1].field_416 = 0
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
                                                    mem[mem[64] + s + 164] = mem[_1278 + s + 32]
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
                                                _2625 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2625] == Mask(32, 224, mem[_2625])
                                                if Mask(32, 224, mem[_2625]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            _1383 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1383] = tokenByIndex.length
                                            mem[_1383 + 32] = msg.sender
                                            tokenByIndex.length++
                                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                            tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                                            tokenByIndex[tokenByIndex.length].field_416 = 0
                                            mem[0] = tokenByIndex.length
                                            mem[32] = 5
                                            stor5[stor4.length] = tokenByIndex.length
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
                                                    mem[mem[64] + s + 164] = mem[_1278 + s + 32]
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
                                                _2626 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2626] == Mask(32, 224, mem[_2626])
                                                if Mask(32, 224, mem[_2626]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    else:
                                        tokenOfOwnerByIndex[address(msg.sender)]++
                                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                                        tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length] = tokenOfOwnerByIndex[address(msg.sender)]
                                        mem[0] = tokenByIndex.length
                                        mem[32] = 5
                                        if stor5[stor4.length]:
                                            if stor5[stor4.length] < 1:
                                                revert with 'NH{q', 17
                                            if stor5[stor4.length] - 1 >= tokenByIndex.length:
                                                revert with 'NH{q', 50
                                            mem[0] = 4
                                            tokenByIndex[stor5[tokenByIndex.length] - 1].field_256 = msg.sender
                                            tokenByIndex[stor5[tokenByIndex.length] - 1].field_416 = 0
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
                                                    mem[mem[64] + s + 164] = mem[_1278 + s + 32]
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
                                                _2627 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2627] == Mask(32, 224, mem[_2627])
                                                if Mask(32, 224, mem[_2627]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            _1388 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1388] = tokenByIndex.length
                                            mem[_1388 + 32] = msg.sender
                                            tokenByIndex.length++
                                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                                            tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                                            tokenByIndex[tokenByIndex.length].field_416 = 0
                                            mem[0] = tokenByIndex.length
                                            mem[32] = 5
                                            stor5[stor4.length] = tokenByIndex.length
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
                                                    mem[mem[64] + s + 164] = mem[_1278 + s + 32]
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
                                                _2628 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2628] == Mask(32, 224, mem[_2628])
                                                if Mask(32, 224, mem[_2628]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
}



}
