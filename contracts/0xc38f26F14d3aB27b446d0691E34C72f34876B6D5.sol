contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const sub_a6bea44a(?) = 11000


mapping of uint8 stor0;
mapping of struct bazaar;
address stor2;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor5;
mapping of address approved;
mapping of uint8 stor7;
array of struct stor8;
array of struct stor9;
array of struct stor11;
uint8 stor12; offset 160
uint128 stor12; offset 160
address owner;
address feeAddress1;
address feeAddress2;
address feeAddress3;
address stor16;
address stor17;
array of struct stor18;
mapping of struct bids;

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

function feeAddress1() {
    return feeAddress1
}

function hasSaleStarted() {
    return bool(uint8(stor12.field_160))
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

function Bids(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bids[arg1].field_0, bids[arg1].field_256
}

function Bazaar(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bazaar[arg1].field_512 >= 5:
        revert with 'NH{q', 33
    return bazaar[arg1].field_0, bazaar[arg1].field_256, bazaar[arg1].field_512
}

function owner() {
    return owner
}

function feeAddress3() {
    return feeAddress3
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function feeAddress2() {
    return feeAddress2
}

function _fallback() payable {
    revert
}

function pauseDrop() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor12.field_160) = 0
}

function startDrop() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor12.field_160) = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function cancelTokenSale(uint256 arg1) {
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
    bazaar[arg1].field_256 = 0
    bazaar[arg1].field_512 = 4
}

function sub_c0f16285(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    s = 0
    idx = 0
    while idx < tokenByIndex.length:
        mem[0] = idx
        mem[32] = 19
        if bids[idx].field_256 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            s = s
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = 19
        if s > -bids[idx].field_256 - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        s = s + bids[idx].field_256
        idx = idx + 1
        continue 
    return s
}

function setTokenPrice(uint256 arg1, uint256 arg2) {
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
    bazaar[arg1].field_256 = arg2
    bazaar[arg1].field_512 = 1
}

function withdrawBid(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bids[arg1].field_256 <= 0:
        revert with 0, 'There is no active bid'
    require msg.sender == bids[arg1].field_0
    if eth.balance(this.address) < bids[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Current balance is not enough for withdrawal'
    bids[arg1].field_256 = 0
    call bids[arg1].field_0 with:
       value bids[arg1].field_256 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    bids[arg1].field_0 = 0
    bids[arg1].field_256 = 0
    return 1
}

function emergencyWithdrawal() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < eth.balance(this.address) / 2:
        revert with 'NH{q', 17
    if eth.balance(this.address) - (eth.balance(this.address) / 2) < eth.balance(this.address) / 4:
        revert with 'NH{q', 17
    call stor2 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor16 with:
       value eth.balance(this.address) / 4 wei
         gas 2300 * is_zero(value) wei
    call stor17 with:
       value eth.balance(this.address) - (eth.balance(this.address) / 2) - (eth.balance(this.address) / 4) wei
         gas 2300 * is_zero(value) wei
}

function calculatePrice() {
    if bool(uint8(stor12.field_160)) != 1:
        revert with 0, 'Sale hasn't started'
    if tokenByIndex.length >= 11000:
        revert with 0, 'Sale has already ended'
    if tokenByIndex.length >= 8500:
        return 3 * 10^18
    if tokenByIndex.length >= 6500:
        return 2 * 10^18
    if tokenByIndex.length >= 4500:
        return 15 * 10^17
    if tokenByIndex.length >= 3500:
        return 125 * 10^16
    if tokenByIndex.length >= 2500:
        return 10^18
    if tokenByIndex.length >= 2000:
        return 85 * 10^16
    if tokenByIndex.length >= 1500:
        return 8 * 10^17
    if tokenByIndex.length >= 1250:
        return 6 * 10^17
    if tokenByIndex.length >= 1000:
        return 5 * 10^17
    if tokenByIndex.length >= 750:
        return 4 * 10^17
    if tokenByIndex.length >= 500:
        return 3 * 10^17
    if tokenByIndex.length < 250:
        return 10^17
    return 2 * 10^17
}

function bid(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > tokenByIndex.length:
        revert with 0, 'No Sale'
    if msg.value <= bids[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can only bid higher then highestBid'
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
    if msg.sender == tokenByIndex[stor5[arg1] - 1].field_256:
        revert with 0, 'You cannot bid to your own Avaxtar'
    if bids[arg1].field_256 <= 0:
        bids[arg1].field_256 = msg.value
        bids[arg1].field_0 = msg.sender
    else:
        call bids[arg1].field_0 with:
           value bids[arg1].field_256 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with 0, 'Couldnt cancel previous Bid'
        bids[arg1].field_0 = msg.sender
        bids[arg1].field_256 = msg.value
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
    if bool(stor18.length):
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor18[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor18.length = 0
            idx = 0
            while stor18.length.field_1 + 31 / 32 > idx:
                stor18[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor18[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor18.length = 0
            idx = 0
            while stor18.length.field_1 + 31 / 32 > idx:
                stor18[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function withdrawal() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    s = 0
    idx = 0
    while idx < tokenByIndex.length:
        mem[0] = idx
        mem[32] = 19
        if bids[idx].field_256 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            s = s
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = 19
        if s > -bids[idx].field_256 - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        s = s + bids[idx].field_256
        idx = idx + 1
        continue 
    if eth.balance(this.address) < s:
        revert with 'NH{q', 17
    if eth.balance(this.address) - s < eth.balance(this.address) - s / 2:
        revert with 'NH{q', 17
    if eth.balance(this.address) - s - (eth.balance(this.address) - s / 2) < eth.balance(this.address) - s / 4:
        revert with 'NH{q', 17
    call stor2 with:
       value eth.balance(this.address) - s / 2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor16 with:
       value eth.balance(this.address) - s / 4 wei
         gas 2300 * is_zero(value) wei
    call stor17 with:
       value eth.balance(this.address) - s - (eth.balance(this.address) - s / 2) - (eth.balance(this.address) - s / 4) wei
         gas 2300 * is_zero(value) wei
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
    if bool(stor18.length):
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor18.length):
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor18.length.field_1:
                if 31 < stor18.length.field_1:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while stor18.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18.length.field_1), data=mem[128 len ceil32(stor18.length.field_1)])
                mem[128] = 256 * stor18.length.field_8
        else:
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor18.length.field_1:
                if 31 < stor18.length.field_1:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while stor18.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18.length.field_1), data=mem[128 len ceil32(stor18.length.field_1)])
                mem[128] = 256 * stor18.length.field_8
        mem[ceil32(stor18.length.field_1) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
        if ceil32(stor18.length.field_1) > stor18.length.field_1:
            mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor18.length.field_1), data=mem[128 len ceil32(stor18.length.field_1)], mem[(2 * ceil32(stor18.length.field_1)) + 192 len 2 * ceil32(stor18.length.field_1)]), 
    if bool(stor18.length) == stor18.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor18.length):
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor18.length.field_1:
            if 31 < stor18.length.field_1:
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while stor18.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor18[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)])
            mem[128] = 256 * stor18.length.field_8
    else:
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor18.length.field_1:
            if 31 < stor18.length.field_1:
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while stor18.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor18[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)])
            mem[128] = 256 * stor18.length.field_8
    mem[ceil32(stor18.length.field_1) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
    if ceil32(stor18.length.field_1) > stor18.length.field_1:
        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 192] = 0
    return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)], mem[(2 * ceil32(stor18.length.field_1)) + 192 len 2 * ceil32(stor18.length.field_1)]), 
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
    bazaar[arg3].field_256 = 0
    bazaar[arg3].field_512 = 4
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
    bazaar[arg3].field_256 = 0
    bazaar[arg3].field_512 = 4
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
    bazaar[arg3].field_256 = 0
    bazaar[arg3].field_512 = 4
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

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.value < bazaar[arg1].field_256:
        revert with 0, 'Price issue'
    if bazaar[arg1].field_512 > 4:
        revert with 'NH{q', 33
    if bazaar[arg1].field_512 != 1:
        revert with 0, 'No Sale'
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
    if bazaar[arg1].field_256 >= 0:
        if msg.value and 5 > -1 / msg.value:
            revert with 'NH{q', 17
        if 5 * msg.value / 100 < 5 * msg.value / 100 / 2:
            revert with 'NH{q', 17
        if (5 * msg.value / 100) - (5 * msg.value / 100 / 2) < 5 * msg.value / 100 / 4:
            revert with 'NH{q', 17
        if msg.value < 5 * msg.value / 100:
            revert with 'NH{q', 17
        call tokenByIndex[stor5[arg1] - 1].field_256 with:
           value msg.value - (5 * msg.value / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor2 with:
           value 5 * msg.value / 100 / 2 wei
             gas 2300 * is_zero(value) wei
        call stor16 with:
           value 5 * msg.value / 100 / 4 wei
             gas 2300 * is_zero(value) wei
        call stor17 with:
           value (5 * msg.value / 100) - (5 * msg.value / 100 / 2) - (5 * msg.value / 100 / 4) wei
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
    bazaar[arg1].field_256 = 0
    bazaar[arg1].field_512 = 4
    emit Transfer(tokenByIndex[stor5[arg1] - 1].field_256, msg.sender, arg1);
    bazaar[arg1].field_512 = 2
}

function sub_613e867e(?) {
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
    if bids[arg1].field_256 <= 0:
        revert with 0, 'There is no active bid'
    if eth.balance(this.address) < bids[arg1].field_256:
        revert with 0, 'Current balance is not enough for withdrawal'
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
    bids[arg1].field_256 = 0
    if bids[arg1].field_256 and 5 > -1 / bids[arg1].field_256:
        revert with 'NH{q', 17
    if 5 * bids[arg1].field_256 / 100 < 5 * bids[arg1].field_256 / 100 / 2:
        revert with 'NH{q', 17
    if (5 * bids[arg1].field_256 / 100) - (5 * bids[arg1].field_256 / 100 / 2) < 5 * bids[arg1].field_256 / 100 / 4:
        revert with 'NH{q', 17
    if bids[arg1].field_256 < 5 * bids[arg1].field_256 / 100:
        revert with 'NH{q', 17
    call tokenByIndex[stor5[arg1] - 1].field_256 with:
       value bids[arg1].field_256 - (5 * bids[arg1].field_256 / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor2 with:
       value 5 * bids[arg1].field_256 / 100 / 2 wei
         gas 2300 * is_zero(value) wei
    call stor16 with:
       value 5 * bids[arg1].field_256 / 100 / 4 wei
         gas 2300 * is_zero(value) wei
    call stor17 with:
       value (5 * bids[arg1].field_256 / 100) - (5 * bids[arg1].field_256 / 100 / 2) - (5 * bids[arg1].field_256 / 100 / 4) wei
         gas 2300 * is_zero(value) wei
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
    if tokenByIndex[stor5[arg1] - 1].field_256 != tokenByIndex[stor5[arg1] - 1].field_256:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not bids[arg1].field_0:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg1] = 0
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[553 len 23] >> 72,
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
    if not tokenOfOwnerByIndex[stor19[arg1].field_0][1][arg1]:
        tokenOfOwnerByIndex[stor19[arg1].field_0]++
        tokenOfOwnerByIndex[stor19[arg1].field_0][tokenOfOwnerByIndex[stor19[arg1].field_0]] = arg1
        tokenOfOwnerByIndex[stor19[arg1].field_0][1][arg1] = tokenOfOwnerByIndex[stor19[arg1].field_0]
    if stor5[arg1]:
        if stor5[arg1] < 1:
            revert with 'NH{q', 17
        if stor5[arg1] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor5[arg1] - 1].field_256 = bids[arg1].field_0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg1
        tokenByIndex[tokenByIndex.length].field_256 = bids[arg1].field_0
        stor5[arg1] = tokenByIndex.length
    bazaar[arg1].field_256 = 0
    bazaar[arg1].field_512 = 4
    emit Transfer(tokenByIndex[stor5[arg1] - 1].field_256, bids[arg1].field_0, arg1);
    bazaar[arg1].field_512 = 2
    bids[arg1].field_0 = 0
    bids[arg1].field_256 = 0
}

function buyAvatars(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenByIndex.length >= 11000:
        revert with 0, 'Sale has already ended'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can generate minimum 1, maximum 5 Avaxtars'
    if arg1 > 5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can generate minimum 1, maximum 5 Avaxtars'
    if tokenByIndex.length > -arg1 - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length + arg1 > 11000:
        revert with 0, 'Exceeds MAX_AVATARS'
    if bool(uint8(stor12.field_160)) != 1:
        revert with 0, 'Sale hasn't started'
    if tokenByIndex.length >= 11000:
        revert with 0, 'Sale has already ended'
    if tokenByIndex.length >= 8500:
        if arg1 > 0x6261f45f0c13935a2754cc1eec2d1534cc8ff782edb84b50b:
            revert with 'NH{q', 17
        if msg.value < 3 * 10^18 * arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Avax value sent is below the price'
        idx = 0
        while idx < arg1:
            _2079 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2079] = 0
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
                            mem[mem[64] + s + 164] = mem[_2079 + s + 32]
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
                        _4299 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4299] == Mask(32, 224, mem[_4299])
                        if Mask(32, 224, mem[_4299]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    _2343 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2343] = tokenByIndex.length
                    mem[_2343 + 32] = msg.sender
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
                            mem[mem[64] + s + 164] = mem[_2079 + s + 32]
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
                        _4300 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4300] == Mask(32, 224, mem[_4300])
                        if Mask(32, 224, mem[_4300]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                            mem[mem[64] + s + 164] = mem[_2079 + s + 32]
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
                        _4301 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4301] == Mask(32, 224, mem[_4301])
                        if Mask(32, 224, mem[_4301]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    _2348 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2348] = tokenByIndex.length
                    mem[_2348 + 32] = msg.sender
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
                            mem[mem[64] + s + 164] = mem[_2079 + s + 32]
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
                        _4302 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4302] == Mask(32, 224, mem[_4302])
                        if Mask(32, 224, mem[_4302]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if tokenByIndex.length >= 6500:
            if arg1 > 0x9392ee8e921d5d073aff322e62439fcf32d7f344649470f90:
                revert with 'NH{q', 17
            if msg.value < 2 * 10^18 * arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Avax value sent is below the price'
            idx = 0
            while idx < arg1:
                _2078 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2078] = 0
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
                                mem[mem[64] + s + 164] = mem[_2078 + s + 32]
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
                            _4295 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4295] == Mask(32, 224, mem[_4295])
                            if Mask(32, 224, mem[_4295]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        _2333 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2333] = tokenByIndex.length
                        mem[_2333 + 32] = msg.sender
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
                                mem[mem[64] + s + 164] = mem[_2078 + s + 32]
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
                            _4296 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4296] == Mask(32, 224, mem[_4296])
                            if Mask(32, 224, mem[_4296]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                mem[mem[64] + s + 164] = mem[_2078 + s + 32]
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
                            _4297 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4297] == Mask(32, 224, mem[_4297])
                            if Mask(32, 224, mem[_4297]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        _2338 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2338] = tokenByIndex.length
                        mem[_2338 + 32] = msg.sender
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
                                mem[mem[64] + s + 164] = mem[_2078 + s + 32]
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
                            _4298 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4298] == Mask(32, 224, mem[_4298])
                            if Mask(32, 224, mem[_4298]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if tokenByIndex.length >= 4500:
                if arg1 > 0xc4c3e8be182726b44ea9983dd85a2a69991fef05db7096a16:
                    revert with 'NH{q', 17
                if msg.value < 15 * 10^17 * arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Avax value sent is below the price'
                idx = 0
                while idx < arg1:
                    _2077 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2077] = 0
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
                                    mem[mem[64] + s + 164] = mem[_2077 + s + 32]
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
                                _4291 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4291] == Mask(32, 224, mem[_4291])
                                if Mask(32, 224, mem[_4291]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            _2323 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2323] = tokenByIndex.length
                            mem[_2323 + 32] = msg.sender
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
                                    mem[mem[64] + s + 164] = mem[_2077 + s + 32]
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
                                _4292 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4292] == Mask(32, 224, mem[_4292])
                                if Mask(32, 224, mem[_4292]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                    mem[mem[64] + s + 164] = mem[_2077 + s + 32]
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
                                _4293 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4293] == Mask(32, 224, mem[_4293])
                                if Mask(32, 224, mem[_4293]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            _2328 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2328] = tokenByIndex.length
                            mem[_2328 + 32] = msg.sender
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
                                    mem[mem[64] + s + 164] = mem[_2077 + s + 32]
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
                                _4294 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4294] == Mask(32, 224, mem[_4294])
                                if Mask(32, 224, mem[_4294]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if tokenByIndex.length >= 3500:
                    if arg1 > 0xec1e4a7db69561a52b31e9e3d06c32e51e2652070753e7f4e:
                        revert with 'NH{q', 17
                    if msg.value < 125 * 10^16 * arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Avax value sent is below the price'
                    idx = 0
                    while idx < arg1:
                        _2076 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2076] = 0
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
                                        mem[mem[64] + s + 164] = mem[_2076 + s + 32]
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
                                    _4287 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4287] == Mask(32, 224, mem[_4287])
                                    if Mask(32, 224, mem[_4287]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                _2313 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2313] = tokenByIndex.length
                                mem[_2313 + 32] = msg.sender
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
                                        mem[mem[64] + s + 164] = mem[_2076 + s + 32]
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
                                    _4288 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4288] == Mask(32, 224, mem[_4288])
                                    if Mask(32, 224, mem[_4288]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                        mem[mem[64] + s + 164] = mem[_2076 + s + 32]
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
                                    _4289 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4289] == Mask(32, 224, mem[_4289])
                                    if Mask(32, 224, mem[_4289]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                _2318 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2318] = tokenByIndex.length
                                mem[_2318 + 32] = msg.sender
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
                                        mem[mem[64] + s + 164] = mem[_2076 + s + 32]
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
                                    _4290 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4290] == Mask(32, 224, mem[_4290])
                                    if Mask(32, 224, mem[_4290]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    if tokenByIndex.length >= 2500:
                        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 'NH{q', 17
                        if msg.value < 10^18 * arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Avax value sent is below the price'
                        idx = 0
                        while idx < arg1:
                            _2075 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2075] = 0
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
                                            mem[mem[64] + s + 164] = mem[_2075 + s + 32]
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
                                        _4283 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4283] == Mask(32, 224, mem[_4283])
                                        if Mask(32, 224, mem[_4283]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                else:
                                    _2303 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2303] = tokenByIndex.length
                                    mem[_2303 + 32] = msg.sender
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
                                            mem[mem[64] + s + 164] = mem[_2075 + s + 32]
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
                                        _4284 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4284] == Mask(32, 224, mem[_4284])
                                        if Mask(32, 224, mem[_4284]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                            mem[mem[64] + s + 164] = mem[_2075 + s + 32]
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
                                        _4285 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4285] == Mask(32, 224, mem[_4285])
                                        if Mask(32, 224, mem[_4285]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                else:
                                    _2308 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2308] = tokenByIndex.length
                                    mem[_2308 + 32] = msg.sender
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
                                            mem[mem[64] + s + 164] = mem[_2075 + s + 32]
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
                                        _4286 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4286] == Mask(32, 224, mem[_4286])
                                        if Mask(32, 224, mem[_4286]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        if tokenByIndex.length >= 2000:
                            if arg1 > 0x15b3b9ab8df54262f21678521d826a532d1fc1e46924e36feb:
                                revert with 'NH{q', 17
                            if msg.value < 85 * 10^16 * arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Avax value sent is below the price'
                            idx = 0
                            while idx < arg1:
                                _2074 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2074] = 0
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
                                                mem[mem[64] + s + 164] = mem[_2074 + s + 32]
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
                                            _4279 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4279] == Mask(32, 224, mem[_4279])
                                            if Mask(32, 224, mem[_4279]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    else:
                                        _2293 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2293] = tokenByIndex.length
                                        mem[_2293 + 32] = msg.sender
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
                                                mem[mem[64] + s + 164] = mem[_2074 + s + 32]
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
                                            _4280 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4280] == Mask(32, 224, mem[_4280])
                                            if Mask(32, 224, mem[_4280]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                                mem[mem[64] + s + 164] = mem[_2074 + s + 32]
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
                                            _4281 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4281] == Mask(32, 224, mem[_4281])
                                            if Mask(32, 224, mem[_4281]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    else:
                                        _2298 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2298] = tokenByIndex.length
                                        mem[_2298 + 32] = msg.sender
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
                                                mem[mem[64] + s + 164] = mem[_2074 + s + 32]
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
                                            _4282 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4282] == Mask(32, 224, mem[_4282])
                                            if Mask(32, 224, mem[_4282]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            if tokenByIndex.length >= 1500:
                                if arg1 > 0x170ef54646d496892137dfd73f5a90f85ff1be02afb731a6e9:
                                    revert with 'NH{q', 17
                                if msg.value < 8 * 10^17 * arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Avax value sent is below the price'
                                idx = 0
                                while idx < arg1:
                                    _2073 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2073] = 0
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
                                                    mem[mem[64] + s + 164] = mem[_2073 + s + 32]
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
                                                _4275 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4275] == Mask(32, 224, mem[_4275])
                                                if Mask(32, 224, mem[_4275]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            _2283 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2283] = tokenByIndex.length
                                            mem[_2283 + 32] = msg.sender
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
                                                    mem[mem[64] + s + 164] = mem[_2073 + s + 32]
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
                                                _4276 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4276] == Mask(32, 224, mem[_4276])
                                                if Mask(32, 224, mem[_4276]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                                    mem[mem[64] + s + 164] = mem[_2073 + s + 32]
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
                                                _4277 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4277] == Mask(32, 224, mem[_4277])
                                                if Mask(32, 224, mem[_4277]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            _2288 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2288] = tokenByIndex.length
                                            mem[_2288 + 32] = msg.sender
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
                                                    mem[mem[64] + s + 164] = mem[_2073 + s + 32]
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
                                                _4278 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4278] == Mask(32, 224, mem[_4278])
                                                if Mask(32, 224, mem[_4278]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if tokenByIndex.length >= 1250:
                                    if arg1 > 0x1ebe9c5db3c61e0c2c4a7fc9a9ce16a07fecfd58ea49978937:
                                        revert with 'NH{q', 17
                                    if msg.value < 6 * 10^17 * arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Avax value sent is below the price'
                                    idx = 0
                                    while idx < arg1:
                                        _2072 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2072] = 0
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
                                                        mem[mem[64] + s + 164] = mem[_2072 + s + 32]
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
                                                    _4271 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4271] == Mask(32, 224, mem[_4271])
                                                    if Mask(32, 224, mem[_4271]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                _2273 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2273] = tokenByIndex.length
                                                mem[_2273 + 32] = msg.sender
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
                                                        mem[mem[64] + s + 164] = mem[_2072 + s + 32]
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
                                                    _4272 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4272] == Mask(32, 224, mem[_4272])
                                                    if Mask(32, 224, mem[_4272]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                                        mem[mem[64] + s + 164] = mem[_2072 + s + 32]
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
                                                    _4273 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4273] == Mask(32, 224, mem[_4273])
                                                    if Mask(32, 224, mem[_4273]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                _2278 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2278] = tokenByIndex.length
                                                mem[_2278 + 32] = msg.sender
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
                                                        mem[mem[64] + s + 164] = mem[_2072 + s + 32]
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
                                                    _4274 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4274] == Mask(32, 224, mem[_4274])
                                                    if Mask(32, 224, mem[_4274]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if tokenByIndex.length >= 1000:
                                        if arg1 > 0x24e4bba3a4875741cebfcc8b9890e7f3ccb5fcd119251c3e43:
                                            revert with 'NH{q', 17
                                        if msg.value < 5 * 10^17 * arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Avax value sent is below the price'
                                        idx = 0
                                        while idx < arg1:
                                            _2071 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2071] = 0
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
                                                            mem[mem[64] + s + 164] = mem[_2071 + s + 32]
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
                                                        _4267 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_4267] == Mask(32, 224, mem[_4267])
                                                        if Mask(32, 224, mem[_4267]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    _2263 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2263] = tokenByIndex.length
                                                    mem[_2263 + 32] = msg.sender
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
                                                            mem[mem[64] + s + 164] = mem[_2071 + s + 32]
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
                                                        _4268 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_4268] == Mask(32, 224, mem[_4268])
                                                        if Mask(32, 224, mem[_4268]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                                            mem[mem[64] + s + 164] = mem[_2071 + s + 32]
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
                                                        _4269 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_4269] == Mask(32, 224, mem[_4269])
                                                        if Mask(32, 224, mem[_4269]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    _2268 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2268] = tokenByIndex.length
                                                    mem[_2268 + 32] = msg.sender
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
                                                            mem[mem[64] + s + 164] = mem[_2071 + s + 32]
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
                                                        _4270 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_4270] == Mask(32, 224, mem[_4270])
                                                        if Mask(32, 224, mem[_4270]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if tokenByIndex.length >= 750:
                                            if arg1 > 0x2e1dea8c8da92d12426fbfae7eb521f0bfe37c055f6e634dd3:
                                                revert with 'NH{q', 17
                                            if msg.value < 4 * 10^17 * arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Avax value sent is below the price'
                                            idx = 0
                                            while idx < arg1:
                                                _2070 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_2070] = 0
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
                                                                mem[mem[64] + s + 164] = mem[_2070 + s + 32]
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
                                                            _4263 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_4263] == Mask(32, 224, mem[_4263])
                                                            if Mask(32, 224, mem[_4263]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        _2253 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2253] = tokenByIndex.length
                                                        mem[_2253 + 32] = msg.sender
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
                                                                mem[mem[64] + s + 164] = mem[_2070 + s + 32]
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
                                                            _4264 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_4264] == Mask(32, 224, mem[_4264])
                                                            if Mask(32, 224, mem[_4264]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                                                mem[mem[64] + s + 164] = mem[_2070 + s + 32]
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
                                                            _4265 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_4265] == Mask(32, 224, mem[_4265])
                                                            if Mask(32, 224, mem[_4265]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        _2258 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_2258] = tokenByIndex.length
                                                        mem[_2258 + 32] = msg.sender
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
                                                                mem[mem[64] + s + 164] = mem[_2070 + s + 32]
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
                                                            _4266 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_4266] == Mask(32, 224, mem[_4266])
                                                            if Mask(32, 224, mem[_4266]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if tokenByIndex.length >= 500:
                                                if arg1 > 0x3d7d38bb678c3c185894ff93539c2d40ffd9fab1d4932f126f:
                                                    revert with 'NH{q', 17
                                                if msg.value < 3 * 10^17 * arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Avax value sent is below the price'
                                                idx = 0
                                                while idx < arg1:
                                                    _2069 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_2069] = 0
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
                                                                    mem[mem[64] + s + 164] = mem[_2069 + s + 32]
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
                                                                _4259 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_4259] == Mask(32, 224, mem[_4259])
                                                                if Mask(32, 224, mem[_4259]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            _2243 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_2243] = tokenByIndex.length
                                                            mem[_2243 + 32] = msg.sender
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
                                                                    mem[mem[64] + s + 164] = mem[_2069 + s + 32]
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
                                                                _4260 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_4260] == Mask(32, 224, mem[_4260])
                                                                if Mask(32, 224, mem[_4260]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                                                    mem[mem[64] + s + 164] = mem[_2069 + s + 32]
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
                                                                _4261 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_4261] == Mask(32, 224, mem[_4261])
                                                                if Mask(32, 224, mem[_4261]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            _2248 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_2248] = tokenByIndex.length
                                                            mem[_2248 + 32] = msg.sender
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
                                                                    mem[mem[64] + s + 164] = mem[_2069 + s + 32]
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
                                                                _4262 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_4262] == Mask(32, 224, mem[_4262])
                                                                if Mask(32, 224, mem[_4262]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                if tokenByIndex.length < 250:
                                                    if arg1 > 0xb877aa3236a4b44909befeb9fad487c2ff8df0157db98d374f:
                                                        revert with 'NH{q', 17
                                                    if msg.value < 10^17 * arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Avax value sent is below the price'
                                                    idx = 0
                                                    while idx < arg1:
                                                        _2067 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_2067] = 0
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
                                                                        mem[mem[64] + s + 164] = mem[_2067 + s + 32]
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
                                                                    _4251 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_4251] == Mask(32, 224, mem[_4251])
                                                                    if Mask(32, 224, mem[_4251]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                            else:
                                                                _2223 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_2223] = tokenByIndex.length
                                                                mem[_2223 + 32] = msg.sender
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
                                                                        mem[mem[64] + s + 164] = mem[_2067 + s + 32]
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
                                                                    _4252 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_4252] == Mask(32, 224, mem[_4252])
                                                                    if Mask(32, 224, mem[_4252]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                                                        mem[mem[64] + s + 164] = mem[_2067 + s + 32]
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
                                                                    _4253 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_4253] == Mask(32, 224, mem[_4253])
                                                                    if Mask(32, 224, mem[_4253]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                            else:
                                                                _2228 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_2228] = tokenByIndex.length
                                                                mem[_2228 + 32] = msg.sender
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
                                                                        mem[mem[64] + s + 164] = mem[_2067 + s + 32]
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
                                                                    _4254 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_4254] == Mask(32, 224, mem[_4254])
                                                                    if Mask(32, 224, mem[_4254]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    if arg1 > 0x5c3bd5191b525a2484df7f5cfd6a43e17fc6f80abedcc69ba7:
                                                        revert with 'NH{q', 17
                                                    if msg.value < 2 * 10^17 * arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Avax value sent is below the price'
                                                    idx = 0
                                                    while idx < arg1:
                                                        _2068 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_2068] = 0
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
                                                                        mem[mem[64] + s + 164] = mem[_2068 + s + 32]
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
                                                                    _4255 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_4255] == Mask(32, 224, mem[_4255])
                                                                    if Mask(32, 224, mem[_4255]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                            else:
                                                                _2233 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_2233] = tokenByIndex.length
                                                                mem[_2233 + 32] = msg.sender
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
                                                                        mem[mem[64] + s + 164] = mem[_2068 + s + 32]
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
                                                                    _4256 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_4256] == Mask(32, 224, mem[_4256])
                                                                    if Mask(32, 224, mem[_4256]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                                                        mem[mem[64] + s + 164] = mem[_2068 + s + 32]
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
                                                                    _4257 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_4257] == Mask(32, 224, mem[_4257])
                                                                    if Mask(32, 224, mem[_4257]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                            else:
                                                                _2238 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_2238] = tokenByIndex.length
                                                                mem[_2238 + 32] = msg.sender
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
                                                                        mem[mem[64] + s + 164] = mem[_2068 + s + 32]
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
                                                                    _4258 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_4258] == Mask(32, 224, mem[_4258])
                                                                    if Mask(32, 224, mem[_4258]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        continue 
}



}
