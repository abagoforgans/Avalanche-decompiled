contract main {




// =====================  Runtime code  =====================


#
#  - sub_02ff1721(?)
#  - claimRewards(uint256[] arg1)
#  - sub_6c0a4749(?)
#  - tokenURI(uint256 arg1)
#  - _fallback()
#
const sub_5a3869b1(?) = 1000

const sub_6db3dffb(?) = 0

const sub_bbab2ede(?) = 2

const sub_d2ae3170(?) = 1

const sub_dd9992a2(?) = 200

const REWARD_PERCENT = 2500


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
uint256 totalSupply;
uint8 states;
array of struct sub_053e27ab;
mapping of uint256 discounts;
mapping of uint256 stor10;
mapping of uint256 mints;
mapping of uint256 sub_53f6fa25;
array of struct stor14;
mapping of uint256 tokenAssets;
mapping of uint8 tokenState;
mapping of uint256 stor17;
array of struct stor18;
mapping of uint256 stor19;
array of struct stor20;
array of struct stor21;
array of struct stor22;
array of struct stor23;
address factoryAddress;
address owner;
array of struct stor26;
uint256 locked;

function totalAssets() {
    return sub_053e27ab.length
}

function sub_053e27ab(?) {
    require calldata.size - 4 >= 32
    if arg1 >= sub_053e27ab.length:
        revert with 0, 50
    return uint256(sub_053e27ab[arg1].field_1024)
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return totalSupply
}

function sub_53f6fa25(?) {
    require calldata.size - 4 >= 32
    return sub_53f6fa25[arg1]
}

function mints(uint256 arg1) {
    require calldata.size - 4 >= 32
    return mints[arg1]
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

function states() {
    return states
}

function owner() {
    return owner
}

function tokenState(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenState[arg1]
}

function discounts(uint256 arg1) {
    require calldata.size - 4 >= 32
    return discounts[arg1]
}

function factory() {
    return factoryAddress
}

function locked() {
    return locked
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function tokenAssets(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenAssets[arg1]
}

function sub_5edb9656(?) {
    require calldata.size - 4 >= 32
    return (block.timestamp < discounts[arg1])
}

function sub_6ab638c5(?) {
    require calldata.size - 4 >= 32
    if tokenState[arg1] != 2:
        return 0
    return stor17[arg1]
}

function sub_966be72f(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if tokenState[arg1] != 2:
        return 0
    return stor19[arg1][address(arg2)]
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

function sub_a39ce20c(?) {
    require calldata.size - 4 >= 64
    if arg1 >= sub_053e27ab.length:
        revert with 0, 50
    if address(sub_053e27ab[arg1].field_768) != msg.sender:
        revert with 0, 'Permission denied'
    if arg2 <= block.timestamp:
        revert with 0, 'Discount invalid'
    discounts[arg1] = arg2
    emit 0x6e9df22c: arg1, arg2
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function wrap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Permission denied'
    if tokenState[arg1]:
        revert with 0, 'State invalid'
    if 1 >= states:
        revert with 0, 'Invalid state'
    tokenState[arg1] = 1
    emit 0x5f37cb0e: arg1, 1
}

function open(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Permission denied'
    if tokenState[arg1] != 1:
        revert with 0, 'State invalid'
    if 2 >= states:
        revert with 0, 'Invalid state'
    tokenState[arg1] = 2
    emit 0x5f37cb0e: arg1, 2
}

function price(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= sub_053e27ab.length:
        revert with 0, 'Asset invalid'
    if arg1 >= sub_053e27ab.length:
        revert with 0, 50
    if block.timestamp >= discounts[arg1]:
        return uint256(sub_053e27ab[arg1].field_1024)
    if uint256(sub_053e27ab[arg1].field_1024) and 9000 > -1 / uint256(sub_053e27ab[arg1].field_1024):
        revert with 0, 17
    return (9000 * uint256(sub_053e27ab[arg1].field_1024) / 10000)
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
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

function sub_6ef18867(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if tokenState[arg1] != 2:
        mem[160 len 1024] = 32, mem[160 len 992]
        return 32, 32, mem[160 len 1024]
    if uint256(stor21[arg1][address(arg2)].field_0):
        mem[128] = uint256(stor21[arg1][address(arg2)].field_0)
        idx = 128
        s = 0
        while (32 * uint256(stor21[arg1][address(arg2)].field_0)) + 96 > idx:
            mem[idx + 32] = uint256(stor21[arg1][address(arg2)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=uint256(stor21[arg1][address(arg2)].field_0), data=mem[128 len 32 * uint256(stor21[arg1][address(arg2)].field_0)]), 
    mem[(32 * uint256(stor21[arg1][address(arg2)].field_0)) + 128] = 32
    mem[(32 * uint256(stor21[arg1][address(arg2)].field_0)) + 160] = uint256(stor21[arg1][address(arg2)].field_0)
    mem[(32 * uint256(stor21[arg1][address(arg2)].field_0)) + 192 len 32 * uint256(stor21[arg1][address(arg2)].field_0)] = mem[128 len 32 * uint256(stor21[arg1][address(arg2)].field_0)]
    return memory
      from (32 * uint256(stor21[arg1][address(arg2)].field_0)) + 128
       len (96 * uint256(stor21[arg1][address(arg2)].field_0)) + 64
}

function reward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= sub_053e27ab.length:
        revert with 0, 50
    if uint256(sub_053e27ab[arg1].field_1024) and 2500 > -1 / uint256(sub_053e27ab[arg1].field_1024):
        revert with 0, 17
    if 2500 * uint256(sub_053e27ab[arg1].field_1024) / 10000 and mints[arg1] > -1 / 2500 * uint256(sub_053e27ab[arg1].field_1024) / 10000:
        revert with 0, 17
    if uint256(sub_053e27ab[arg1].field_1024) and 1000 > -1 / uint256(sub_053e27ab[arg1].field_1024):
        revert with 0, 17
    if 1000 * uint256(sub_053e27ab[arg1].field_1024) / 10000 and sub_53f6fa25[arg1] > -1 / 1000 * uint256(sub_053e27ab[arg1].field_1024) / 10000:
        revert with 0, 17
    if 2500 * uint256(sub_053e27ab[arg1].field_1024) / 10000 * mints[arg1] < 1000 * uint256(sub_053e27ab[arg1].field_1024) / 10000 * sub_53f6fa25[arg1]:
        revert with 0, 17
    if (2500 * uint256(sub_053e27ab[arg1].field_1024) / 10000 * mints[arg1]) - (1000 * uint256(sub_053e27ab[arg1].field_1024) / 10000 * sub_53f6fa25[arg1]) < stor10[arg1]:
        revert with 0, 17
    return ((2500 * uint256(sub_053e27ab[arg1].field_1024) / 10000 * mints[arg1]) - (1000 * uint256(sub_053e27ab[arg1].field_1024) / 10000 * sub_53f6fa25[arg1]) - stor10[arg1])
}

function sub_685f8e5b(?) {
    require calldata.size - 4 >= 32
    if tokenState[arg1] != 2:
        mem[128] = 32
        idx = 0
        s = 160
        t = 128
        while idx < 32:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 32, 32, mem[160 len 1024]
    if uint256(stor22[arg1].field_0):
        mem[128] = address(stor22[arg1].field_0)
        if (32 * uint256(stor22[arg1].field_0)) + 32 > 64:
            mem[160] = address(stor22[arg1].field_256)
            idx = 160
            s = 1
            while (32 * uint256(stor22[arg1].field_0)) + 96 > idx:
                mem[idx + 32] = address(stor22[arg1][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * uint256(stor22[arg1].field_0)) + 128] = 32
    mem[(32 * uint256(stor22[arg1].field_0)) + 160] = uint256(stor22[arg1].field_0)
    idx = 0
    s = (32 * uint256(stor22[arg1].field_0)) + 192
    t = 128
    while idx < uint256(stor22[arg1].field_0):
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * uint256(stor22[arg1].field_0)) + 128
       len (96 * uint256(stor22[arg1].field_0)) + 64
}

function sub_f709c59d(?) {
    require calldata.size - 4 >= 32
    if tokenState[arg1] != 2:
        mem[128] = 32
        idx = 0
        s = 160
        t = 128
        while idx < 32:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 32, 32, mem[160 len 1024]
    if uint256(stor20[arg1].field_0):
        mem[128] = address(stor20[arg1].field_0)
        if (32 * uint256(stor20[arg1].field_0)) + 32 > 64:
            mem[160] = address(stor20[arg1].field_256)
            idx = 160
            s = 1
            while (32 * uint256(stor20[arg1].field_0)) + 96 > idx:
                mem[idx + 32] = address(stor20[arg1][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * uint256(stor20[arg1].field_0)) + 128] = 32
    mem[(32 * uint256(stor20[arg1].field_0)) + 160] = uint256(stor20[arg1].field_0)
    idx = 0
    s = (32 * uint256(stor20[arg1].field_0)) + 192
    t = 128
    while idx < uint256(stor20[arg1].field_0):
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * uint256(stor20[arg1].field_0)) + 128
       len (96 * uint256(stor20[arg1].field_0)) + 64
}

function sub_b5d35423(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    mem[0] = arg1
    mem[32] = 16
    if tokenState[arg1] != 2:
        mem[96] = 32
        mem[128] = 32
        idx = 0
        s = 128
        t = 160
        while idx < 32:
            _19 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_19 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return 32, 32, mem[160 len 2048]
    mem[0] = address(arg2)
    mem[32] = sha3(arg1, 23)
    mem[64] = (32 * uint256(stor23[arg1][address(arg2)].field_0)) + 128
    mem[96] = uint256(stor23[arg1][address(arg2)].field_0)
    s = 128
    idx = 0
    while idx < uint256(stor23[arg1][address(arg2)].field_0):
        mem[0] = sha3(address(arg2), sha3(arg1, 23))
        _23 = mem[64]
        mem[64] = mem[64] + 64
        mem[_23] = uint256(stor23[arg1][address(arg2)][idx].field_0)
        mem[_23 + 32] = uint256(stor23[arg1][address(arg2)][idx].field_256)
        mem[s] = _23
        s = s + 32
        idx = idx + 1
        continue 
    _25 = mem[64]
    mem[mem[64]] = 32
    _26 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _26:
        _31 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_31 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _25 + (64 * _26) + -mem[64] + 64
}

function sub_162033b6(?) {
    require calldata.size - 4 >= 32
    if tokenState[arg1] != 2:
        mem[128] = 32
        idx = 0
        s = 160
        t = 128
        while idx < 32:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 32, 32, mem[160 len 1024]
    mem[64] = (32 * uint256(stor18[arg1].field_0)) + 128
    mem[96] = uint256(stor18[arg1].field_0)
    if not uint256(stor18[arg1].field_0):
        mem[(32 * uint256(stor18[arg1].field_0)) + 128] = 32
        mem[(32 * uint256(stor18[arg1].field_0)) + 160] = uint256(stor18[arg1].field_0)
        idx = 0
        s = (32 * uint256(stor18[arg1].field_0)) + 192
        t = 128
        while idx < uint256(stor18[arg1].field_0):
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * uint256(stor18[arg1].field_0)) + 128
           len (96 * uint256(stor18[arg1].field_0)) + 64
    mem[128] = address(stor18[arg1].field_0)
    idx = 128
    s = 0
    while (32 * uint256(stor18[arg1].field_0)) + 96 > idx:
        mem[idx + 32] = address(stor18[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(stor18[arg1].field_0)) + 128] = 32
    mem[(32 * uint256(stor18[arg1].field_0)) + 160] = uint256(stor18[arg1].field_0)
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < uint256(stor18[arg1].field_0):
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * uint256(stor18[arg1].field_0)) + -mem[64] + 192
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

function sub_5d8f6b73(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Permission denied'
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor26.length = 0
            idx = 0
            while (uint255(stor26.length) * 0.5) + 31 / 32 > idx:
                uint256(stor26[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            stor26.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                uint256(stor26[s].field_0) = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while (uint255(stor26.length) * 0.5) + 31 / 32 > idx:
                uint256(stor26[idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor26.length) == stor26.length.field_1 % 128 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor26.length = 0
            idx = 0
            while stor26.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor26[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            stor26.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                uint256(stor26[s].field_0) = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor26.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor26[idx].field_0) = 0
                idx = idx + 1
                continue 
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Permission denied'
    if eth.balance(this.address) < locked:
        revert with 0, 17
    if eth.balance(this.address) - locked:
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == owner:
            call factoryAddress with:
               value eth.balance(this.address) - locked wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.0xbc86bd78 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if eth.balance(this.address) - locked and ext_call.return_data[31 len 1] > -1 / eth.balance(this.address) - locked:
                revert with 0, 17
            call factoryAddress with:
               value (eth.balance(this.address) * ext_call.return_data[31 len 1]) - (locked * ext_call.return_data[31 len 1]) / 10000 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) - locked < (eth.balance(this.address) * ext_call.return_data[31 len 1]) - (locked * ext_call.return_data[31 len 1]) / 10000:
                revert with 0, 17
            call owner with:
               value eth.balance(this.address) - locked - ((eth.balance(this.address) * ext_call.return_data[31 len 1]) - (locked * ext_call.return_data[31 len 1]) / 10000) wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if factoryAddress != msg.sender:
        revert with 0, 'Permission denied'
    if eth.balance(this.address) < locked:
        revert with 0, 17
    if eth.balance(this.address) - locked:
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == owner:
            call factoryAddress with:
               value eth.balance(this.address) - locked wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.0xbc86bd78 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if eth.balance(this.address) - locked and ext_call.return_data[31 len 1] > -1 / eth.balance(this.address) - locked:
                revert with 0, 17
            call factoryAddress with:
               value (eth.balance(this.address) * ext_call.return_data[31 len 1]) - (locked * ext_call.return_data[31 len 1]) / 10000 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) - locked < (eth.balance(this.address) * ext_call.return_data[31 len 1]) - (locked * ext_call.return_data[31 len 1]) / 10000:
                revert with 0, 17
            call owner with:
               value eth.balance(this.address) - locked - ((eth.balance(this.address) * ext_call.return_data[31 len 1]) - (locked * ext_call.return_data[31 len 1]) / 10000) wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
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

function batchTransfer(address arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    while arg2.length > uint8(idx):
        if uint8(idx) >= arg2.length:
            revert with 0, 50
        if not ownerOf[cd[((32 * uint8(idx)) + arg2 + 36)]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
        if not ownerOf[cd[((32 * uint8(idx)) + arg2 + 36)]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if ownerOf[cd[((32 * uint8(idx)) + arg2 + 36)]] != msg.sender:
            if not ownerOf[cd[((32 * uint8(idx)) + arg2 + 36)]]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
            if approved[cd[((32 * uint8(idx)) + arg2 + 36)]] != msg.sender:
                if not stor5[stor2[cd[((32 * uint8(idx)) + arg2 + 36)]]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
        if not ownerOf[cd[((32 * uint8(idx)) + arg2 + 36)]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if ownerOf[cd[((32 * uint8(idx)) + arg2 + 36)]] != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
        approved[cd[((32 * uint8(idx)) + arg2 + 36)]] = 0
        if not ownerOf[cd[((32 * uint8(idx)) + arg2 + 36)]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[cd[((32 * uint8(idx)) + arg2 + 36)]], 0, cd[((32 * uint8(idx)) + arg2 + 36)]);
        if balanceOf[address(msg.sender)] < 1:
            revert with 0, 17
        balanceOf[address(msg.sender)]--
        if balanceOf[address(arg1)] > -2:
            revert with 0, 17
        balanceOf[address(arg1)]++
        mem[0] = cd[((32 * uint8(idx)) + arg2 + 36)]
        mem[32] = 2
        ownerOf[cd[((32 * uint8(idx)) + arg2 + 36)]] = arg1
        emit Transfer(msg.sender, arg1, cd[((32 * uint8(idx)) + arg2 + 36)]);
        if uint8(idx) == 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        continue 
}

function sub_adad78b0(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if tokenState[cd[4]]:
        revert with 0, 'State invalid'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        _66 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
            revert with 0, 50
        _68 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 102] = msg.sender
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 134] = this.address
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 166] = _68
        require ext_code.size(address(_66))
        call address(_66).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, _68
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not uint256(stor21[cd[4]][address(_66)].field_0):
            uint256(stor20[cd[4]].field_0)++
            address(stor20[cd[4]][uint256(stor20[cd[4]].field_0)].field_0) = address(_66)
        mem[32] = sha3(cd[4], 21)
        uint256(stor21[cd[4]][address(_66)].field_0)++
        mem[0] = sha3(address(_66), sha3(cd[4], 21))
        uint256(stor21[cd[4]][address(_66)][uint256(stor21[cd[4]][address(_66)].field_0)].field_0) = _68
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ab2b885a(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if tokenState[cd[4]]:
        revert with 0, 'State invalid'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        _105 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
            revert with 0, 50
        _107 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 102] = msg.sender
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 134] = this.address
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 166] = _107
        require ext_code.size(address(_105))
        call address(_105).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, _107
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not uint256(stor21[cd[4]][address(_105)].field_0):
            uint256(stor20[cd[4]].field_0)++
            address(stor20[cd[4]][uint256(stor20[cd[4]].field_0)].field_0) = address(_105)
        mem[32] = sha3(cd[4], 21)
        uint256(stor21[cd[4]][address(_105)].field_0)++
        mem[0] = sha3(address(_105), sha3(cd[4], 21))
        uint256(stor21[cd[4]][address(_105)][uint256(stor21[cd[4]][address(_105)].field_0)].field_0) = _107
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not ownerOf[cd[4]]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[cd[4]] != msg.sender:
        revert with 0, 'Permission denied'
    if tokenState[cd[4]]:
        revert with 0, 'State invalid'
    if 1 >= states:
        revert with 0, 'Invalid state'
    tokenState[cd[4]] = 1
    emit 0x5f37cb0e: cd[4], 1
}

function batchTransfers(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg2.length == arg1.length
    idx = 0
    while arg2.length > uint8(idx):
        if uint8(idx) >= arg1.length:
            revert with 0, 50
        require cd[((32 * uint8(idx)) + arg1 + 36)] == address(cd[((32 * uint8(idx)) + arg1 + 36)])
        if uint8(idx) >= arg2.length:
            revert with 0, 50
        if not ownerOf[cd[((32 * uint8(idx)) + arg2 + 36)]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
        if not ownerOf[cd[((32 * uint8(idx)) + arg2 + 36)]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if ownerOf[cd[((32 * uint8(idx)) + arg2 + 36)]] != msg.sender:
            if not ownerOf[cd[((32 * uint8(idx)) + arg2 + 36)]]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
            if approved[cd[((32 * uint8(idx)) + arg2 + 36)]] != msg.sender:
                if not stor5[stor2[cd[((32 * uint8(idx)) + arg2 + 36)]]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
        if not ownerOf[cd[((32 * uint8(idx)) + arg2 + 36)]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if ownerOf[cd[((32 * uint8(idx)) + arg2 + 36)]] != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
        if not address(cd[((32 * uint8(idx)) + arg1 + 36)]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
        approved[cd[((32 * uint8(idx)) + arg2 + 36)]] = 0
        if not ownerOf[cd[((32 * uint8(idx)) + arg2 + 36)]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[cd[((32 * uint8(idx)) + arg2 + 36)]], 0, cd[((32 * uint8(idx)) + arg2 + 36)]);
        if balanceOf[address(msg.sender)] < 1:
            revert with 0, 17
        balanceOf[address(msg.sender)]--
        if balanceOf[address(cd[((32 * uint8(idx)) + arg1 + 36)])] > -2:
            revert with 0, 17
        balanceOf[address(cd[((32 * uint8(idx)) + arg1 + 36)])]++
        mem[0] = cd[((32 * uint8(idx)) + arg2 + 36)]
        mem[32] = 2
        ownerOf[cd[((32 * uint8(idx)) + arg2 + 36)]] = address(cd[((32 * uint8(idx)) + arg1 + 36)])
        emit Transfer(msg.sender, address(cd[((32 * uint8(idx)) + arg1 + 36)]), cd[((32 * uint8(idx)) + arg2 + 36)]);
        if uint8(idx) == 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        continue 
}

function buyItem(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= sub_053e27ab.length:
        revert with 0, 'Asset invalid'
    if arg1 >= sub_053e27ab.length:
        revert with 0, 50
    if block.timestamp >= discounts[arg1]:
        if uint256(sub_053e27ab[arg1].field_1024) and arg2 > -1 / uint256(sub_053e27ab[arg1].field_1024):
            revert with 0, 17
        if msg.value < uint256(sub_053e27ab[arg1].field_1024) * arg2:
            revert with 0, 'Fee insufficient'
    else:
        if uint256(sub_053e27ab[arg1].field_1024) and 9000 > -1 / uint256(sub_053e27ab[arg1].field_1024):
            revert with 0, 17
        if 9000 * uint256(sub_053e27ab[arg1].field_1024) / 10000 and arg2 > -1 / 9000 * uint256(sub_053e27ab[arg1].field_1024) / 10000:
            revert with 0, 17
        if msg.value < 9000 * uint256(sub_053e27ab[arg1].field_1024) / 10000 * arg2:
            revert with 0, 'Fee insufficient'
    if arg1 >= sub_053e27ab.length:
        revert with 0, 50
    if mints[arg1] > !arg2:
        revert with 0, 17
    if mints[arg1] + arg2 > uint256(sub_053e27ab[arg1].field_1280):
        revert with 0, 'Fully minted already'
    if mints[arg1] > !arg2:
        revert with 0, 17
    mints[arg1] += arg2
    if arg1 >= sub_053e27ab.length:
        revert with 0, 50
    if block.timestamp >= discounts[arg1]:
        if uint256(sub_053e27ab[arg1].field_1024) and 2500 > -1 / uint256(sub_053e27ab[arg1].field_1024):
            revert with 0, 17
        if 2500 * uint256(sub_053e27ab[arg1].field_1024) / 10000 and arg2 > -1 / 2500 * uint256(sub_053e27ab[arg1].field_1024) / 10000:
            revert with 0, 17
        if 1 > !totalSupply:
            revert with 0, 17
        totalSupply += arg2
        idx = totalSupply + 1
        while idx <= arg2 + totalSupply:
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[idx]:
                revert with 0, 'ERC721: token already minted'
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            ownerOf[idx] = msg.sender
            emit Transfer(0, msg.sender, idx);
            mem[0] = idx
            mem[32] = 15
            tokenAssets[idx] = arg1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if locked > !(2500 * uint256(sub_053e27ab[arg1].field_1024) / 10000 * arg2):
            revert with 0, 17
        locked += 2500 * uint256(sub_053e27ab[arg1].field_1024) / 10000 * arg2
    else:
        if sub_53f6fa25[arg1] > !arg2:
            revert with 0, 17
        sub_53f6fa25[arg1] += arg2
        if uint256(sub_053e27ab[arg1].field_1024) and 1500 > -1 / uint256(sub_053e27ab[arg1].field_1024):
            revert with 0, 17
        if 1500 * uint256(sub_053e27ab[arg1].field_1024) / 10000 and arg2 > -1 / 1500 * uint256(sub_053e27ab[arg1].field_1024) / 10000:
            revert with 0, 17
        if 1 > !totalSupply:
            revert with 0, 17
        totalSupply += arg2
        idx = totalSupply + 1
        while idx <= arg2 + totalSupply:
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[idx]:
                revert with 0, 'ERC721: token already minted'
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            ownerOf[idx] = msg.sender
            emit Transfer(0, msg.sender, idx);
            mem[0] = idx
            mem[32] = 15
            tokenAssets[idx] = arg1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if locked > !(1500 * uint256(sub_053e27ab[arg1].field_1024) / 10000 * arg2):
            revert with 0, 17
        locked += 1500 * uint256(sub_053e27ab[arg1].field_1024) / 10000 * arg2
    return (arg2 + totalSupply)
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
                        mem[idx + 32] = uint256(stor0[s].field_256)
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
                        mem[idx + 32] = uint256(stor0[s].field_256)
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
                    mem[idx + 32] = uint256(stor0[s].field_256)
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
                    mem[idx + 32] = uint256(stor0[s].field_256)
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
                        mem[idx + 32] = uint256(stor1[s].field_256)
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
                        mem[idx + 32] = uint256(stor1[s].field_256)
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
                    mem[idx + 32] = uint256(stor1[s].field_256)
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
                    mem[idx + 32] = uint256(stor1[s].field_256)
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

function promo() {
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor26.length):
                if 31 < uint255(stor26.length) * 0.5:
                    mem[128] = uint256(stor26.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor26.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor26[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor26.length), data=mem[128 len ceil32(uint255(stor26.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor26.length.field_8)
        else:
            if bool(stor26.length) == stor26.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor26.length.field_1 % 128:
                if 31 < stor26.length.field_1 % 128:
                    mem[128] = uint256(stor26.field_0)
                    idx = 128
                    s = 0
                    while stor26.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor26[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor26.length), data=mem[128 len ceil32(uint255(stor26.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor26.length.field_8)
        mem[ceil32(uint255(stor26.length) * 0.5) + 192 len ceil32(uint255(stor26.length) * 0.5)] = mem[128 len ceil32(uint255(stor26.length) * 0.5)]
        if ceil32(uint255(stor26.length) * 0.5) > uint255(stor26.length) * 0.5:
            mem[(uint255(stor26.length) * 0.5) + ceil32(uint255(stor26.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor26.length), data=mem[128 len ceil32(uint255(stor26.length) * 0.5)], mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor26.length) * 0.5)]), 
    if bool(stor26.length) == stor26.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor26.length):
            if 31 < uint255(stor26.length) * 0.5:
                mem[128] = uint256(stor26.field_0)
                idx = 128
                s = 0
                while (uint255(stor26.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor26[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor26.length % 128, data=mem[128 len ceil32(stor26.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor26.length.field_8)
    else:
        if bool(stor26.length) == stor26.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor26.length.field_1 % 128:
            if 31 < stor26.length.field_1 % 128:
                mem[128] = uint256(stor26.field_0)
                idx = 128
                s = 0
                while stor26.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor26[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor26.length % 128, data=mem[128 len ceil32(stor26.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor26.length.field_8)
    mem[ceil32(stor26.length.field_1 % 128) + 192 len ceil32(stor26.length.field_1 % 128)] = mem[128 len ceil32(stor26.length.field_1 % 128)]
    if ceil32(stor26.length.field_1 % 128) > stor26.length.field_1 % 128:
        mem[stor26.length.field_1 % 128 + ceil32(stor26.length.field_1 % 128) + 192] = 0
    return Array(len=stor26.length % 128, data=mem[128 len ceil32(stor26.length.field_1 % 128)], mem[(2 * ceil32(stor26.length.field_1 % 128)) + 192 len 2 * ceil32(stor26.length.field_1 % 128)]), 
}

function baseURI() {
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor14.length):
            if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor14.length):
                if 31 < uint255(stor14.length) * 0.5:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor14.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor14[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length), data=mem[128 len ceil32(uint255(stor14.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor14.length.field_8)
        else:
            if bool(stor14.length) == stor14.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor14.length.field_1 % 128:
                if 31 < stor14.length.field_1 % 128:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor14[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length), data=mem[128 len ceil32(uint255(stor14.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor14.length.field_8)
        mem[ceil32(uint255(stor14.length) * 0.5) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
        if ceil32(uint255(stor14.length) * 0.5) > uint255(stor14.length) * 0.5:
            mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor14.length), data=mem[128 len ceil32(uint255(stor14.length) * 0.5)], mem[(2 * ceil32(uint255(stor14.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor14.length) * 0.5)]), 
    if bool(stor14.length) == stor14.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor14.length):
            if 31 < uint255(stor14.length) * 0.5:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while (uint255(stor14.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor14[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor14.length.field_8)
    else:
        if bool(stor14.length) == stor14.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor14.length.field_1 % 128:
            if 31 < stor14.length.field_1 % 128:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor14[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor14.length.field_8)
    mem[ceil32(stor14.length.field_1 % 128) + 192 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
    if ceil32(stor14.length.field_1 % 128) > stor14.length.field_1 % 128:
        mem[stor14.length.field_1 % 128 + ceil32(stor14.length.field_1 % 128) + 192] = 0
    return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1 % 128)], mem[(2 * ceil32(stor14.length.field_1 % 128)) + 192 len 2 * ceil32(stor14.length.field_1 % 128)]), 
}

function sub_c8b3f3ac(?) {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 99 < 98 or ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 99 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 99
    mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if tokenState[cd[4]]:
        revert with 0, 'State invalid'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        _121 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
            revert with 0, 50
        _123 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
        if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98]:
            revert with 0, 50
        _125 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130]
        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _123
        mem[mem[64] + 100] = _125
        mem[mem[64] + 132] = 160
        mem[mem[64] + 164] = 4
        mem[mem[64] + 196] = 0x3078303000000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_121))
        call address(_121).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, this.address, _123, _125, 160, 4, 0x3078303000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint256(stor23[cd[4]][address(_121)].field_0):
            mem[0] = address(_121)
            mem[32] = sha3(cd[4], 23)
            _132 = mem[64]
            mem[64] = mem[64] + 64
            mem[_132] = _123
            mem[_132 + 32] = _125
        else:
            uint256(stor22[cd[4]].field_0)++
            address(stor22[cd[4]][uint256(stor22[cd[4]].field_0)].field_0) = address(_121)
            mem[0] = address(_121)
            mem[32] = sha3(cd[4], 23)
            _140 = mem[64]
            mem[64] = mem[64] + 64
            mem[_140] = _123
            mem[_140 + 32] = _125
        uint256(stor23[cd[4]][address(_121)].field_0)++
        mem[0] = sha3(address(_121), sha3(cd[4], 23))
        uint256(stor23[cd[4]][address(_121)][uint256(stor23[cd[4]][address(_121)].field_0)].field_0) = _123
        uint256(stor23[cd[4]][address(_121)][uint256(stor23[cd[4]][address(_121)].field_0)].field_256) = _125
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_053ddaed(?) {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 99 < 98 or ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 99 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 99
    mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if tokenState[cd[4]]:
        revert with 0, 'State invalid'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        _173 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
            revert with 0, 50
        _175 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
        if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98]:
            revert with 0, 50
        _177 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130]
        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _175
        mem[mem[64] + 100] = _177
        mem[mem[64] + 132] = 160
        mem[mem[64] + 164] = 4
        mem[mem[64] + 196] = 0x3078303000000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_173))
        call address(_173).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, this.address, _175, _177, 160, 4, 0x3078303000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint256(stor23[cd[4]][address(_173)].field_0):
            mem[0] = address(_173)
            mem[32] = sha3(cd[4], 23)
            _187 = mem[64]
            mem[64] = mem[64] + 64
            mem[_187] = _175
            mem[_187 + 32] = _177
        else:
            uint256(stor22[cd[4]].field_0)++
            address(stor22[cd[4]][uint256(stor22[cd[4]].field_0)].field_0) = address(_173)
            mem[0] = address(_173)
            mem[32] = sha3(cd[4], 23)
            _197 = mem[64]
            mem[64] = mem[64] + 64
            mem[_197] = _175
            mem[_197 + 32] = _177
        uint256(stor23[cd[4]][address(_173)].field_0)++
        mem[0] = sha3(address(_173), sha3(cd[4], 23))
        uint256(stor23[cd[4]][address(_173)][uint256(stor23[cd[4]][address(_173)].field_0)].field_0) = _175
        uint256(stor23[cd[4]][address(_173)][uint256(stor23[cd[4]][address(_173)].field_0)].field_256) = _177
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not ownerOf[cd[4]]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[cd[4]] != msg.sender:
        revert with 0, 'Permission denied'
    if tokenState[cd[4]]:
        revert with 0, 'State invalid'
    if 1 >= states:
        revert with 0, 'Invalid state'
    tokenState[cd[4]] = 1
    emit 0x5f37cb0e: cd[4], 1
}

function sub_9bf16297(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = cd[4]
    mem[32] = 16
    if tokenState[cd[4]]:
        revert with 0, 'State invalid'
    if not msg.value:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _175 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                revert with 0, 50
            _181 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _181
            require ext_code.size(address(_175))
            call address(_175).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, _181
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _190 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_190] == bool(mem[_190])
            if not stor19[cd[4]][address(_175)]:
                uint256(stor18[cd[4]].field_0)++
                address(stor18[cd[4]][uint256(stor18[cd[4]].field_0)].field_0) = address(_175)
            mem[0] = address(_175)
            mem[32] = sha3(cd[4], 19)
            if stor19[cd[4]][address(_175)] > !_181:
                revert with 0, 17
            stor19[cd[4]][address(_175)] += _181
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if locked > !msg.value:
            revert with 0, 17
        locked += msg.value
        if not msg.value:
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= mem[96]:
                    revert with 0, 50
                _177 = mem[(32 * idx) + 128]
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                _184 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _184
                require ext_code.size(address(_177))
                call address(_177).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, _184
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _191 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_191] == bool(mem[_191])
                if not stor19[cd[4]][address(_177)]:
                    uint256(stor18[cd[4]].field_0)++
                    address(stor18[cd[4]][uint256(stor18[cd[4]].field_0)].field_0) = address(_177)
                mem[0] = address(_177)
                mem[32] = sha3(cd[4], 19)
                if stor19[cd[4]][address(_177)] > !_184:
                    revert with 0, 17
                stor19[cd[4]][address(_177)] += _184
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            mem[0] = cd[4]
            mem[32] = 17
            if stor17[cd[4]] > !msg.value:
                revert with 0, 17
            stor17[cd[4]] += msg.value
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= mem[96]:
                    revert with 0, 50
                _179 = mem[(32 * idx) + 128]
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                _187 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _187
                require ext_code.size(address(_179))
                call address(_179).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, _187
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _192 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_192] == bool(mem[_192])
                if not stor19[cd[4]][address(_179)]:
                    uint256(stor18[cd[4]].field_0)++
                    address(stor18[cd[4]][uint256(stor18[cd[4]].field_0)].field_0) = address(_179)
                mem[0] = address(_179)
                mem[32] = sha3(cd[4], 19)
                if stor19[cd[4]][address(_179)] > !_187:
                    revert with 0, 17
                stor19[cd[4]][address(_179)] += _187
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}

function sub_fbad26b9(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = cd[4]
    mem[32] = 16
    if tokenState[cd[4]]:
        revert with 0, 'State invalid'
    if not msg.value:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _292 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                revert with 0, 50
            _298 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _298
            require ext_code.size(address(_292))
            call address(_292).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, _298
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _308 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_308] == bool(mem[_308])
            if not stor19[cd[4]][address(_292)]:
                uint256(stor18[cd[4]].field_0)++
                address(stor18[cd[4]][uint256(stor18[cd[4]].field_0)].field_0) = address(_292)
            mem[0] = address(_292)
            mem[32] = sha3(cd[4], 19)
            if stor19[cd[4]][address(_292)] > !_298:
                revert with 0, 17
            stor19[cd[4]][address(_292)] += _298
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if locked > !msg.value:
            revert with 0, 17
        locked += msg.value
        if not msg.value:
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= mem[96]:
                    revert with 0, 50
                _294 = mem[(32 * idx) + 128]
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                _301 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _301
                require ext_code.size(address(_294))
                call address(_294).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, _301
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _310 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_310] == bool(mem[_310])
                if not stor19[cd[4]][address(_294)]:
                    uint256(stor18[cd[4]].field_0)++
                    address(stor18[cd[4]][uint256(stor18[cd[4]].field_0)].field_0) = address(_294)
                mem[0] = address(_294)
                mem[32] = sha3(cd[4], 19)
                if stor19[cd[4]][address(_294)] > !_301:
                    revert with 0, 17
                stor19[cd[4]][address(_294)] += _301
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            mem[0] = cd[4]
            mem[32] = 17
            if stor17[cd[4]] > !msg.value:
                revert with 0, 17
            stor17[cd[4]] += msg.value
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= mem[96]:
                    revert with 0, 50
                _296 = mem[(32 * idx) + 128]
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                _304 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _304
                require ext_code.size(address(_296))
                call address(_296).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, _304
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _312 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_312] == bool(mem[_312])
                if not stor19[cd[4]][address(_296)]:
                    uint256(stor18[cd[4]].field_0)++
                    address(stor18[cd[4]][uint256(stor18[cd[4]].field_0)].field_0) = address(_296)
                mem[0] = address(_296)
                mem[32] = sha3(cd[4], 19)
                if stor19[cd[4]][address(_296)] > !_304:
                    revert with 0, 17
                stor19[cd[4]][address(_296)] += _304
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    if not ownerOf[cd[4]]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[cd[4]] != msg.sender:
        revert with 0, 'Permission denied'
    if tokenState[cd[4]]:
        revert with 0, 'State invalid'
    if 1 >= states:
        revert with 0, 'Invalid state'
    tokenState[cd[4]] = 1
    emit 0x5f37cb0e: cd[4], 1
}

function assets(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < sub_053e27ab.length
    if bool(sub_053e27ab[arg1].field_0):
        if bool(sub_053e27ab[arg1].field_0) == uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(sub_053e27ab[arg1].field_0):
            if bool(sub_053e27ab[arg1].field_0) == uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(sub_053e27ab[arg1].field_0)):
                if 31 >= uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5:
                    mem[128] = 256 * Mask(248, 0, sub_053e27ab[arg1].field_8)
                else:
                    mem[128] = uint256(sub_053e27ab[arg1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(sub_053e27ab[(6 * arg1) + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(sub_053e27ab[arg1].field_0) == sub_053e27ab[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if sub_053e27ab[arg1].field_1 % 128:
                if 31 >= sub_053e27ab[arg1].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, sub_053e27ab[arg1].field_8)
                else:
                    mem[128] = uint256(sub_053e27ab[arg1].field_0)
                    idx = 128
                    s = 0
                    while sub_053e27ab[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(sub_053e27ab[(6 * arg1) + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        if bool(sub_053e27ab[arg1].field_256):
            if bool(sub_053e27ab[arg1].field_256) == uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5 < 32:
                revert with 0, 34
            if bool(sub_053e27ab[arg1].field_256):
                if bool(sub_053e27ab[arg1].field_256) == uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(sub_053e27ab[arg1].field_256)):
                    if ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) > uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5:
                        mem[(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 352] = 0
                    mem[(2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 352] = uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5
                    mem[(2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 384 len ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5)] = mem[ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160 len ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5)]
                    if ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) > uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5:
                        mem[(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + (2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 384] = 0
                else:
                    if 31 >= uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5:
                        mem[ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160] = 256 * Mask(248, 0, sub_053e27ab[arg1].field_264)
                    else:
                        mem[ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160] = uint256(stor[sha3((6 * arg1) + ('name', 'sub_053e27ab', 8) + 1)].field_0)
                        idx = ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + (uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 128 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'sub_053e27ab', 8) + 1)].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) > uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5:
                        mem[(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 352] = 0
                    mem[(2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 352] = uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5
                    mem[(2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 384 len ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5)] = mem[ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160 len ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5)]
                    if ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) > uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5:
                        mem[(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + (2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 384] = 0
            else:
                if bool(sub_053e27ab[arg1].field_256) == sub_053e27ab[arg1].field_257 % 128 < 32:
                    revert with 0, 34
                if not sub_053e27ab[arg1].field_257 % 128:
                    if ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) > uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5:
                        mem[(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 352] = 0
                    mem[(2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 352] = uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5
                    mem[(2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 384 len ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5)] = mem[ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160 len ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5)]
                    if ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) > uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5:
                        mem[(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + (2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 384] = 0
                else:
                    if 31 >= sub_053e27ab[arg1].field_257 % 128:
                        mem[ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160] = 256 * Mask(248, 0, sub_053e27ab[arg1].field_264)
                    else:
                        mem[ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160] = uint256(stor[sha3((6 * arg1) + ('name', 'sub_053e27ab', 8) + 1)].field_0)
                        idx = ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + sub_053e27ab[arg1].field_257 % 128 + 128 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'sub_053e27ab', 8) + 1)].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) > uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5:
                        mem[(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 352] = 0
                    mem[(2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 352] = uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5
                    mem[(2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 384 len ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5)] = mem[ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160 len ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5)]
                    if ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) > uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5:
                        mem[(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + (2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 384] = 0
            return Array(len=2 * Mask(256, -1, uint256(sub_053e27ab[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)], 2 * Mask(256, -1, uint256(sub_053e27ab[arg1].field_256)), mem[ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160 len ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5)]), 
                   ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 192,
                   address(sub_053e27ab[arg1].field_768),
                   uint256(sub_053e27ab[arg1].field_1024),
                   uint256(sub_053e27ab[arg1].field_1280)
        if bool(sub_053e27ab[arg1].field_256) == sub_053e27ab[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if bool(sub_053e27ab[arg1].field_256):
            if bool(sub_053e27ab[arg1].field_256) == uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(sub_053e27ab[arg1].field_256)):
                if ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) > uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5:
                    mem[(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 352] = 0
                mem[(2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 352] = sub_053e27ab[arg1].field_257 % 128
                mem[(2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 384 len ceil32(sub_053e27ab[arg1].field_257 % 128)] = mem[ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160 len ceil32(sub_053e27ab[arg1].field_257 % 128)]
                if ceil32(sub_053e27ab[arg1].field_257 % 128) > sub_053e27ab[arg1].field_257 % 128:
                    mem[sub_053e27ab[arg1].field_257 % 128 + (2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 384] = 0
            else:
                if 31 >= uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5:
                    mem[ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160] = 256 * Mask(248, 0, sub_053e27ab[arg1].field_264)
                else:
                    mem[ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160] = uint256(stor[sha3((6 * arg1) + ('name', 'sub_053e27ab', 8) + 1)].field_0)
                    idx = ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + (uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 128 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'sub_053e27ab', 8) + 1)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) > uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5:
                    mem[(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 352] = 0
                mem[(2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 352] = sub_053e27ab[arg1].field_257 % 128
                mem[(2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 384 len ceil32(sub_053e27ab[arg1].field_257 % 128)] = mem[ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160 len ceil32(sub_053e27ab[arg1].field_257 % 128)]
                if ceil32(sub_053e27ab[arg1].field_257 % 128) > sub_053e27ab[arg1].field_257 % 128:
                    mem[sub_053e27ab[arg1].field_257 % 128 + (2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 384] = 0
        else:
            if bool(sub_053e27ab[arg1].field_256) == sub_053e27ab[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if not sub_053e27ab[arg1].field_257 % 128:
                if ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) > uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5:
                    mem[(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 352] = 0
                mem[(2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 352] = sub_053e27ab[arg1].field_257 % 128
                mem[(2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 384 len ceil32(sub_053e27ab[arg1].field_257 % 128)] = mem[ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160 len ceil32(sub_053e27ab[arg1].field_257 % 128)]
                if ceil32(sub_053e27ab[arg1].field_257 % 128) > sub_053e27ab[arg1].field_257 % 128:
                    mem[sub_053e27ab[arg1].field_257 % 128 + (2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 384] = 0
            else:
                if 31 >= sub_053e27ab[arg1].field_257 % 128:
                    mem[ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160] = 256 * Mask(248, 0, sub_053e27ab[arg1].field_264)
                else:
                    mem[ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160] = uint256(stor[sha3((6 * arg1) + ('name', 'sub_053e27ab', 8) + 1)].field_0)
                    idx = ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + sub_053e27ab[arg1].field_257 % 128 + 128 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'sub_053e27ab', 8) + 1)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) > uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5:
                    mem[(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 352] = 0
                mem[(2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 352] = sub_053e27ab[arg1].field_257 % 128
                mem[(2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 384 len ceil32(sub_053e27ab[arg1].field_257 % 128)] = mem[ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160 len ceil32(sub_053e27ab[arg1].field_257 % 128)]
                if ceil32(sub_053e27ab[arg1].field_257 % 128) > sub_053e27ab[arg1].field_257 % 128:
                    mem[sub_053e27ab[arg1].field_257 % 128 + (2 * ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 384] = 0
        return Array(len=2 * Mask(256, -1, uint256(sub_053e27ab[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5)], sub_053e27ab[arg1].field_256 % 128, mem[ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 160 len ceil32(sub_053e27ab[arg1].field_257 % 128)]), 
               ceil32(uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 192,
               address(sub_053e27ab[arg1].field_768),
               uint256(sub_053e27ab[arg1].field_1024),
               uint256(sub_053e27ab[arg1].field_1280)
    if bool(sub_053e27ab[arg1].field_0) == sub_053e27ab[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(sub_053e27ab[arg1].field_0):
        if bool(sub_053e27ab[arg1].field_0) == uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(sub_053e27ab[arg1].field_0)):
            if 31 >= uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5:
                mem[128] = 256 * Mask(248, 0, sub_053e27ab[arg1].field_8)
            else:
                mem[128] = uint256(sub_053e27ab[arg1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(sub_053e27ab[arg1].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(sub_053e27ab[(6 * arg1) + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(sub_053e27ab[arg1].field_0) == sub_053e27ab[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if sub_053e27ab[arg1].field_1 % 128:
            if 31 >= sub_053e27ab[arg1].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, sub_053e27ab[arg1].field_8)
            else:
                mem[128] = uint256(sub_053e27ab[arg1].field_0)
                idx = 128
                s = 0
                while sub_053e27ab[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(sub_053e27ab[(6 * arg1) + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    if bool(sub_053e27ab[arg1].field_256):
        if bool(sub_053e27ab[arg1].field_256) == uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5 < 32:
            revert with 0, 34
        if bool(sub_053e27ab[arg1].field_256):
            if bool(sub_053e27ab[arg1].field_256) == uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(sub_053e27ab[arg1].field_256)):
                if ceil32(sub_053e27ab[arg1].field_1 % 128) > sub_053e27ab[arg1].field_1 % 128:
                    mem[sub_053e27ab[arg1].field_1 % 128 + ceil32(sub_053e27ab[arg1].field_1 % 128) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 352] = 0
                mem[(2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 352] = uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5
                mem[(2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 384 len ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5)] = mem[ceil32(sub_053e27ab[arg1].field_1 % 128) + 160 len ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5)]
                if ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) > uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5:
                    mem[(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + (2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 384] = 0
            else:
                if 31 >= uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5:
                    mem[ceil32(sub_053e27ab[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_053e27ab[arg1].field_264)
                else:
                    mem[ceil32(sub_053e27ab[arg1].field_1 % 128) + 160] = uint256(stor[sha3((6 * arg1) + ('name', 'sub_053e27ab', 8) + 1)].field_0)
                    idx = ceil32(sub_053e27ab[arg1].field_1 % 128) + 160
                    s = 0
                    while ceil32(sub_053e27ab[arg1].field_1 % 128) + (uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 128 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'sub_053e27ab', 8) + 1)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(sub_053e27ab[arg1].field_1 % 128) > sub_053e27ab[arg1].field_1 % 128:
                    mem[sub_053e27ab[arg1].field_1 % 128 + ceil32(sub_053e27ab[arg1].field_1 % 128) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 352] = 0
                mem[(2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 352] = uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5
                mem[(2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 384 len ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5)] = mem[ceil32(sub_053e27ab[arg1].field_1 % 128) + 160 len ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5)]
                if ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) > uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5:
                    mem[(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + (2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 384] = 0
        else:
            if bool(sub_053e27ab[arg1].field_256) == sub_053e27ab[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if not sub_053e27ab[arg1].field_257 % 128:
                if ceil32(sub_053e27ab[arg1].field_1 % 128) > sub_053e27ab[arg1].field_1 % 128:
                    mem[sub_053e27ab[arg1].field_1 % 128 + ceil32(sub_053e27ab[arg1].field_1 % 128) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 352] = 0
                mem[(2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 352] = uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5
                mem[(2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 384 len ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5)] = mem[ceil32(sub_053e27ab[arg1].field_1 % 128) + 160 len ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5)]
                if ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) > uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5:
                    mem[(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + (2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 384] = 0
            else:
                if 31 >= sub_053e27ab[arg1].field_257 % 128:
                    mem[ceil32(sub_053e27ab[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_053e27ab[arg1].field_264)
                else:
                    mem[ceil32(sub_053e27ab[arg1].field_1 % 128) + 160] = uint256(stor[sha3((6 * arg1) + ('name', 'sub_053e27ab', 8) + 1)].field_0)
                    idx = ceil32(sub_053e27ab[arg1].field_1 % 128) + 160
                    s = 0
                    while ceil32(sub_053e27ab[arg1].field_1 % 128) + sub_053e27ab[arg1].field_257 % 128 + 128 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'sub_053e27ab', 8) + 1)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(sub_053e27ab[arg1].field_1 % 128) > sub_053e27ab[arg1].field_1 % 128:
                    mem[sub_053e27ab[arg1].field_1 % 128 + ceil32(sub_053e27ab[arg1].field_1 % 128) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 352] = 0
                mem[(2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 352] = uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5
                mem[(2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 384 len ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5)] = mem[ceil32(sub_053e27ab[arg1].field_1 % 128) + 160 len ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5)]
                if ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) > uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5:
                    mem[(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + (2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 384] = 0
        return Array(len=sub_053e27ab[arg1].field_0 % 128, data=mem[128 len ceil32(sub_053e27ab[arg1].field_1 % 128)], 2 * Mask(256, -1, uint256(sub_053e27ab[arg1].field_256)), mem[ceil32(sub_053e27ab[arg1].field_1 % 128) + 160 len ceil32(uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5)]), 
               ceil32(sub_053e27ab[arg1].field_1 % 128) + 192,
               address(sub_053e27ab[arg1].field_768),
               uint256(sub_053e27ab[arg1].field_1024),
               uint256(sub_053e27ab[arg1].field_1280)
    if bool(sub_053e27ab[arg1].field_256) == sub_053e27ab[arg1].field_257 % 128 < 32:
        revert with 0, 34
    if bool(sub_053e27ab[arg1].field_256):
        if bool(sub_053e27ab[arg1].field_256) == uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, uint256(sub_053e27ab[arg1].field_256)):
            if ceil32(sub_053e27ab[arg1].field_1 % 128) > sub_053e27ab[arg1].field_1 % 128:
                mem[sub_053e27ab[arg1].field_1 % 128 + ceil32(sub_053e27ab[arg1].field_1 % 128) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 352] = 0
            mem[(2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 352] = sub_053e27ab[arg1].field_257 % 128
            mem[(2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 384 len ceil32(sub_053e27ab[arg1].field_257 % 128)] = mem[ceil32(sub_053e27ab[arg1].field_1 % 128) + 160 len ceil32(sub_053e27ab[arg1].field_257 % 128)]
            if ceil32(sub_053e27ab[arg1].field_257 % 128) > sub_053e27ab[arg1].field_257 % 128:
                mem[sub_053e27ab[arg1].field_257 % 128 + (2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 384] = 0
        else:
            if 31 >= uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5:
                mem[ceil32(sub_053e27ab[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_053e27ab[arg1].field_264)
            else:
                mem[ceil32(sub_053e27ab[arg1].field_1 % 128) + 160] = uint256(stor[sha3((6 * arg1) + ('name', 'sub_053e27ab', 8) + 1)].field_0)
                idx = ceil32(sub_053e27ab[arg1].field_1 % 128) + 160
                s = 0
                while ceil32(sub_053e27ab[arg1].field_1 % 128) + (uint255(uint256(sub_053e27ab[arg1].field_256)) * 0.5) + 128 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'sub_053e27ab', 8) + 1)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(sub_053e27ab[arg1].field_1 % 128) > sub_053e27ab[arg1].field_1 % 128:
                mem[sub_053e27ab[arg1].field_1 % 128 + ceil32(sub_053e27ab[arg1].field_1 % 128) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 352] = 0
            mem[(2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 352] = sub_053e27ab[arg1].field_257 % 128
            mem[(2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 384 len ceil32(sub_053e27ab[arg1].field_257 % 128)] = mem[ceil32(sub_053e27ab[arg1].field_1 % 128) + 160 len ceil32(sub_053e27ab[arg1].field_257 % 128)]
            if ceil32(sub_053e27ab[arg1].field_257 % 128) > sub_053e27ab[arg1].field_257 % 128:
                mem[sub_053e27ab[arg1].field_257 % 128 + (2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 384] = 0
    else:
        if bool(sub_053e27ab[arg1].field_256) == sub_053e27ab[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if not sub_053e27ab[arg1].field_257 % 128:
            if ceil32(sub_053e27ab[arg1].field_1 % 128) > sub_053e27ab[arg1].field_1 % 128:
                mem[sub_053e27ab[arg1].field_1 % 128 + ceil32(sub_053e27ab[arg1].field_1 % 128) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 352] = 0
            mem[(2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 352] = sub_053e27ab[arg1].field_257 % 128
            mem[(2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 384 len ceil32(sub_053e27ab[arg1].field_257 % 128)] = mem[ceil32(sub_053e27ab[arg1].field_1 % 128) + 160 len ceil32(sub_053e27ab[arg1].field_257 % 128)]
            if ceil32(sub_053e27ab[arg1].field_257 % 128) > sub_053e27ab[arg1].field_257 % 128:
                mem[sub_053e27ab[arg1].field_257 % 128 + (2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 384] = 0
        else:
            if 31 >= sub_053e27ab[arg1].field_257 % 128:
                mem[ceil32(sub_053e27ab[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_053e27ab[arg1].field_264)
            else:
                mem[ceil32(sub_053e27ab[arg1].field_1 % 128) + 160] = uint256(stor[sha3((6 * arg1) + ('name', 'sub_053e27ab', 8) + 1)].field_0)
                idx = ceil32(sub_053e27ab[arg1].field_1 % 128) + 160
                s = 0
                while ceil32(sub_053e27ab[arg1].field_1 % 128) + sub_053e27ab[arg1].field_257 % 128 + 128 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'sub_053e27ab', 8) + 1)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(sub_053e27ab[arg1].field_1 % 128) > sub_053e27ab[arg1].field_1 % 128:
                mem[sub_053e27ab[arg1].field_1 % 128 + ceil32(sub_053e27ab[arg1].field_1 % 128) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 352] = 0
            mem[(2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 352] = sub_053e27ab[arg1].field_257 % 128
            mem[(2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 384 len ceil32(sub_053e27ab[arg1].field_257 % 128)] = mem[ceil32(sub_053e27ab[arg1].field_1 % 128) + 160 len ceil32(sub_053e27ab[arg1].field_257 % 128)]
            if ceil32(sub_053e27ab[arg1].field_257 % 128) > sub_053e27ab[arg1].field_257 % 128:
                mem[sub_053e27ab[arg1].field_257 % 128 + (2 * ceil32(sub_053e27ab[arg1].field_1 % 128)) + ceil32(sub_053e27ab[arg1].field_257 % 128) + 384] = 0
    return Array(len=sub_053e27ab[arg1].field_0 % 128, data=mem[128 len ceil32(sub_053e27ab[arg1].field_1 % 128)], sub_053e27ab[arg1].field_256 % 128, mem[ceil32(sub_053e27ab[arg1].field_1 % 128) + 160 len ceil32(sub_053e27ab[arg1].field_257 % 128)]), 
           ceil32(sub_053e27ab[arg1].field_1 % 128) + 192,
           address(sub_053e27ab[arg1].field_768),
           uint256(sub_053e27ab[arg1].field_1024),
           uint256(sub_053e27ab[arg1].field_1280)
}

function claimDeposits(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Permission denied'
    if tokenState[arg1] != 2:
        revert with 0, 'State invalid'
    if not stor17[arg1]:
        if not uint256(stor18[arg1].field_0):
            if not uint256(stor20[arg1].field_0):
                if uint256(stor22[arg1].field_0):
                    mem[0] = arg1
                    mem[32] = 22
                    idx = 0
                    while idx < uint256(stor22[arg1].field_0):
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var37005 >= uint256(stor[var37004][address(stor[idx + sha3(var37002)])]):
                            uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0) = 0
                            mem[0] = sha3(address(stor22[arg1][idx].field_0), sha3(arg1, 23))
                            s = sha3(mem[0])
                            while sha3(sha3(address(stor22[arg1][idx].field_0), sha3(arg1, 23))) + (2 * uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0)) > s:
                                uint256(stor[s]) = 0
                                uint256(stor1[s].field_0) = 0
                                mem[0] = arg1
                                mem[32] = 22
                                s = s + 2
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 22
                            idx = idx + 1
                            continue 
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var43009 >= uint256(stor[var43004][address(stor[idx + sha3(var43002)])]):
                            revert with 0, 50
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        mem[32] = var47004
                        if var47010 >= uint256(stor[var47004][address(stor[idx + sha3(var47002)])]):
                            revert with 0, 50
                        mem[0] = var49002
                        mem[96] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                        mem[100] = this.address
                        mem[132] = msg.sender
                        mem[164] = var49003
                        mem[196] = uint256(stor[(2 * var49001) + sha3(var49002) + 1])
                        mem[228] = 160
                        mem[260] = 4
                        mem[292] = 0x3078303100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(var51003)
                        call var53002.mem[var53004 len 4] with:
                             gas gas_remaining wei
                            args mem[var53004 + 4 len var53005 - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if var57001 == -1:
                            revert with 0, 17
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var65005 < uint256(stor[var65004][address(stor[idx + sha3(var65002)])]):
                            if idx >= uint256(stor22[arg1].field_0):
                                revert with 0, 50
                            # nil
                        else:
                            uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0) = 0
                            mem[0] = sha3(address(stor22[arg1][idx].field_0), sha3(arg1, 23))
                            s = sha3(mem[0])
                            while sha3(sha3(address(stor22[arg1][idx].field_0), sha3(arg1, 23))) + (2 * uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0)) > s:
                                uint256(stor[s]) = 0
                                uint256(stor1[s].field_0) = 0
                                mem[0] = arg1
                                mem[32] = 22
                                s = s + 2
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 22
                            idx = idx + 1
                            continue 
                    uint256(stor22[arg1].field_0) = 0
                    idx = 0
                    while uint256(stor22[arg1].field_0) > idx:
                        uint256(stor22[arg1][idx].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                mem[0] = arg1
                idx = 0
                while idx < uint256(stor20[arg1].field_0):
                    s = 0
                    while s < uint256(stor20[arg1].field_0):
                        if idx >= uint256(stor20[arg1].field_0):
                            revert with 0, 50
                        if idx >= uint256(stor20[arg1].field_0):
                            revert with 0, 50
                        if s >= uint256(stor21[arg1][address(stor20[arg1][idx].field_0)].field_0):
                            revert with 0, 50
                        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[100] = this.address
                        mem[132] = msg.sender
                        mem[164] = uint256(stor21[arg1][address(stor20[arg1][idx].field_0)][s].field_0)
                        require ext_code.size(address(stor20[arg1][idx].field_0))
                        call address(stor20[arg1][idx].field_0).0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, uint256(stor21[arg1][address(stor20[arg1][idx].field_0)][s].field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 20
                        s = s + 1
                        continue 
                    if idx >= uint256(stor20[arg1].field_0):
                        revert with 0, 50
                    uint256(stor21[arg1][address(stor20[arg1][idx].field_0)].field_0) = 0
                    mem[0] = sha3(address(stor20[arg1][idx].field_0), sha3(arg1, 21))
                    s = sha3(mem[0])
                    while sha3(sha3(address(stor20[arg1][idx].field_0), sha3(arg1, 21))) + uint256(stor21[arg1][address(stor20[arg1][idx].field_0)].field_0) > s:
                        uint256(stor[s]) = 0
                        mem[0] = arg1
                        mem[32] = 20
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 20
                    idx = idx + 1
                    continue 
                uint256(stor20[arg1].field_0) = 0
                idx = 0
                while uint256(stor20[arg1].field_0) > idx:
                    uint256(stor20[arg1][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                if uint256(stor22[arg1].field_0):
                    mem[0] = arg1
                    mem[32] = 22
                    idx = 0
                    while idx < uint256(stor22[arg1].field_0):
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var48005 >= uint256(stor[var48004][address(stor[idx + sha3(var48002)])]):
                            uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0) = 0
                            mem[0] = sha3(address(stor22[arg1][idx].field_0), sha3(arg1, 23))
                            s = sha3(mem[0])
                            while sha3(sha3(address(stor22[arg1][idx].field_0), sha3(arg1, 23))) + (2 * uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0)) > s:
                                uint256(stor[s]) = 0
                                uint256(stor1[s].field_0) = 0
                                mem[0] = arg1
                                mem[32] = 22
                                s = s + 2
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 22
                            idx = idx + 1
                            continue 
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var54009 >= uint256(stor[var54004][address(stor[idx + sha3(var54002)])]):
                            revert with 0, 50
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        mem[32] = var58004
                        if var58010 >= uint256(stor[var58004][address(stor[idx + sha3(var58002)])]):
                            revert with 0, 50
                        mem[0] = var60002
                        mem[96] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                        mem[100] = this.address
                        mem[132] = msg.sender
                        mem[164] = var60003
                        mem[196] = uint256(stor[(2 * var60001) + sha3(var60002) + 1])
                        mem[228] = 160
                        mem[260] = 4
                        mem[292] = 0x3078303100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(var62003)
                        call var64002.mem[var64004 len 4] with:
                             gas gas_remaining wei
                            args mem[var64004 + 4 len var64005 - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if var68001 == -1:
                            revert with 0, 17
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var76005 < uint256(stor[var76004][address(stor[idx + sha3(var76002)])]):
                            # nil
                        else:
                            if idx >= uint256(stor22[arg1].field_0):
                                revert with 0, 50
                            uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0) = 0
                            # nil
                    uint256(stor22[arg1].field_0) = 0
                    idx = 0
                    while uint256(stor22[arg1].field_0) > idx:
                        uint256(stor22[arg1][idx].field_0) = 0
                        idx = idx + 1
                        continue 
        else:
            mem[0] = arg1
            mem[32] = 18
            idx = 0
            while idx < uint256(stor18[arg1].field_0):
                if idx >= uint256(stor18[arg1].field_0):
                    revert with 0, 50
                if idx >= uint256(stor18[arg1].field_0):
                    revert with 0, 50
                mem[0] = address(stor18[arg1][idx].field_0)
                mem[32] = sha3(arg1, 19)
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = stor19[arg1][address(stor18[arg1][idx].field_0)]
                require ext_code.size(address(stor18[arg1][idx].field_0))
                call address(stor18[arg1][idx].field_0).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor19[arg1][address(stor18[arg1][idx].field_0)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _491 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_491] == bool(mem[_491])
                if idx >= uint256(stor18[arg1].field_0):
                    revert with 0, 50
                stor19[arg1][address(stor18[arg1][idx].field_0)] = 0
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 18
                idx = idx + 1
                continue 
            uint256(stor18[arg1].field_0) = 0
            idx = 0
            while uint256(stor18[arg1].field_0) > idx:
                uint256(stor18[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
            if not uint256(stor20[arg1].field_0):
                if uint256(stor22[arg1].field_0):
                    mem[0] = arg1
                    mem[32] = 22
                    idx = 0
                    while idx < uint256(stor22[arg1].field_0):
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var48005 >= uint256(stor[var48004][address(stor[idx + sha3(var48002)])]):
                            uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0) = 0
                            mem[0] = sha3(address(stor22[arg1][idx].field_0), sha3(arg1, 23))
                            s = sha3(mem[0])
                            while sha3(sha3(address(stor22[arg1][idx].field_0), sha3(arg1, 23))) + (2 * uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0)) > s:
                                uint256(stor[s]) = 0
                                uint256(stor1[s].field_0) = 0
                                mem[0] = arg1
                                mem[32] = 22
                                s = s + 2
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 22
                            idx = idx + 1
                            continue 
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var54009 >= uint256(stor[var54004][address(stor[idx + sha3(var54002)])]):
                            revert with 0, 50
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        mem[32] = var58004
                        if var58010 >= uint256(stor[var58004][address(stor[idx + sha3(var58002)])]):
                            revert with 0, 50
                        mem[0] = var60002
                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = var60003
                        mem[mem[64] + 100] = uint256(stor[(2 * var60001) + sha3(var60002) + 1])
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 4
                        mem[mem[64] + 196] = 0x3078303100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(var62003)
                        call var64002.mem[var64004 len 4] with:
                             gas gas_remaining wei
                            args mem[var64004 + 4 len var64005 - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if var68001 == -1:
                            revert with 0, 17
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var76005 < uint256(stor[var76004][address(stor[idx + sha3(var76002)])]):
                            # nil
                        else:
                            if idx >= uint256(stor22[arg1].field_0):
                                revert with 0, 50
                            uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0) = 0
                            # nil
                    uint256(stor22[arg1].field_0) = 0
                    idx = 0
                    while uint256(stor22[arg1].field_0) > idx:
                        uint256(stor22[arg1][idx].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                mem[0] = arg1
                idx = 0
                while idx < uint256(stor20[arg1].field_0):
                    s = 0
                    while s < uint256(stor20[arg1].field_0):
                        if idx >= uint256(stor20[arg1].field_0):
                            revert with 0, 50
                        if idx >= uint256(stor20[arg1].field_0):
                            revert with 0, 50
                        if s >= uint256(stor21[arg1][address(stor20[arg1][idx].field_0)].field_0):
                            revert with 0, 50
                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = uint256(stor21[arg1][address(stor20[arg1][idx].field_0)][s].field_0)
                        require ext_code.size(address(stor20[arg1][idx].field_0))
                        call address(stor20[arg1][idx].field_0).0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, uint256(stor21[arg1][address(stor20[arg1][idx].field_0)][s].field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 20
                        s = s + 1
                        continue 
                    if idx >= uint256(stor20[arg1].field_0):
                        revert with 0, 50
                    uint256(stor21[arg1][address(stor20[arg1][idx].field_0)].field_0) = 0
                    mem[0] = sha3(address(stor20[arg1][idx].field_0), sha3(arg1, 21))
                    s = sha3(mem[0])
                    while sha3(sha3(address(stor20[arg1][idx].field_0), sha3(arg1, 21))) + uint256(stor21[arg1][address(stor20[arg1][idx].field_0)].field_0) > s:
                        uint256(stor[s]) = 0
                        mem[0] = arg1
                        mem[32] = 20
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 20
                    idx = idx + 1
                    continue 
                uint256(stor20[arg1].field_0) = 0
                idx = 0
                while uint256(stor20[arg1].field_0) > idx:
                    uint256(stor20[arg1][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                if uint256(stor22[arg1].field_0):
                    mem[0] = arg1
                    mem[32] = 22
                    idx = 0
                    while idx < uint256(stor22[arg1].field_0):
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var59005 >= uint256(stor[var59004][address(stor[idx + sha3(var59002)])]):
                            uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0) = 0
                            mem[0] = sha3(address(stor22[arg1][idx].field_0), sha3(arg1, 23))
                            s = sha3(mem[0])
                            while sha3(sha3(address(stor22[arg1][idx].field_0), sha3(arg1, 23))) + (2 * uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0)) > s:
                                uint256(stor[s]) = 0
                                uint256(stor1[s].field_0) = 0
                                mem[0] = arg1
                                mem[32] = 22
                                s = s + 2
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 22
                            idx = idx + 1
                            continue 
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var65009 >= uint256(stor[var65004][address(stor[idx + sha3(var65002)])]):
                            revert with 0, 50
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        mem[32] = var69004
                        if var69010 >= uint256(stor[var69004][address(stor[idx + sha3(var69002)])]):
                            revert with 0, 50
                        mem[0] = var71002
                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = var71003
                        mem[mem[64] + 100] = uint256(stor[(2 * var71001) + sha3(var71002) + 1])
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 4
                        mem[mem[64] + 196] = 0x3078303100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(var73003)
                        call var75002.mem[var75004 len 4] with:
                             gas gas_remaining wei
                            args mem[var75004 + 4 len var75005 - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if var79001 == -1:
                            revert with 0, 17
                        # nil
                    uint256(stor22[arg1].field_0) = 0
                    idx = 0
                    while uint256(stor22[arg1].field_0) > idx:
                        uint256(stor22[arg1][idx].field_0) = 0
                        idx = idx + 1
                        continue 
        if locked < 0:
            revert with 0, 17
    else:
        call msg.sender with:
           value stor17[arg1] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor17[arg1] = 0
        if not uint256(stor18[arg1].field_0):
            if not uint256(stor20[arg1].field_0):
                if uint256(stor22[arg1].field_0):
                    mem[0] = arg1
                    mem[32] = 22
                    idx = 0
                    while idx < uint256(stor22[arg1].field_0):
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var39005 >= uint256(stor[var39004][address(stor[idx + sha3(var39002)])]):
                            uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0) = 0
                            mem[0] = sha3(address(stor22[arg1][idx].field_0), sha3(arg1, 23))
                            s = sha3(mem[0])
                            while sha3(sha3(address(stor22[arg1][idx].field_0), sha3(arg1, 23))) + (2 * uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0)) > s:
                                uint256(stor[s]) = 0
                                uint256(stor1[s].field_0) = 0
                                mem[0] = arg1
                                mem[32] = 22
                                s = s + 2
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 22
                            idx = idx + 1
                            continue 
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var45009 >= uint256(stor[var45004][address(stor[idx + sha3(var45002)])]):
                            revert with 0, 50
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        mem[32] = var49004
                        if var49010 >= uint256(stor[var49004][address(stor[idx + sha3(var49002)])]):
                            revert with 0, 50
                        mem[0] = var51002
                        mem[96] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                        mem[100] = this.address
                        mem[132] = msg.sender
                        mem[164] = var51003
                        mem[196] = uint256(stor[(2 * var51001) + sha3(var51002) + 1])
                        mem[228] = 160
                        mem[260] = 4
                        mem[292] = 0x3078303100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(var53003)
                        call var55002.mem[var55004 len 4] with:
                             gas gas_remaining wei
                            args mem[var55004 + 4 len var55005 - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if var59001 == -1:
                            revert with 0, 17
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var67005 < uint256(stor[var67004][address(stor[idx + sha3(var67002)])]):
                            if idx >= uint256(stor22[arg1].field_0):
                                revert with 0, 50
                            # nil
                        else:
                            uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0) = 0
                            mem[0] = sha3(address(stor22[arg1][idx].field_0), sha3(arg1, 23))
                            s = sha3(mem[0])
                            while sha3(sha3(address(stor22[arg1][idx].field_0), sha3(arg1, 23))) + (2 * uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0)) > s:
                                uint256(stor[s]) = 0
                                uint256(stor1[s].field_0) = 0
                                mem[0] = arg1
                                mem[32] = 22
                                s = s + 2
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 22
                            idx = idx + 1
                            continue 
                    uint256(stor22[arg1].field_0) = 0
                    idx = 0
                    while uint256(stor22[arg1].field_0) > idx:
                        uint256(stor22[arg1][idx].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                mem[0] = arg1
                idx = 0
                while idx < uint256(stor20[arg1].field_0):
                    s = 0
                    while s < uint256(stor20[arg1].field_0):
                        if idx >= uint256(stor20[arg1].field_0):
                            revert with 0, 50
                        if idx >= uint256(stor20[arg1].field_0):
                            revert with 0, 50
                        if s >= uint256(stor21[arg1][address(stor20[arg1][idx].field_0)].field_0):
                            revert with 0, 50
                        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[100] = this.address
                        mem[132] = msg.sender
                        mem[164] = uint256(stor21[arg1][address(stor20[arg1][idx].field_0)][s].field_0)
                        require ext_code.size(address(stor20[arg1][idx].field_0))
                        call address(stor20[arg1][idx].field_0).0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, uint256(stor21[arg1][address(stor20[arg1][idx].field_0)][s].field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 20
                        s = s + 1
                        continue 
                    if idx >= uint256(stor20[arg1].field_0):
                        revert with 0, 50
                    uint256(stor21[arg1][address(stor20[arg1][idx].field_0)].field_0) = 0
                    mem[0] = sha3(address(stor20[arg1][idx].field_0), sha3(arg1, 21))
                    s = sha3(mem[0])
                    while sha3(sha3(address(stor20[arg1][idx].field_0), sha3(arg1, 21))) + uint256(stor21[arg1][address(stor20[arg1][idx].field_0)].field_0) > s:
                        uint256(stor[s]) = 0
                        mem[0] = arg1
                        mem[32] = 20
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 20
                    idx = idx + 1
                    continue 
                uint256(stor20[arg1].field_0) = 0
                idx = 0
                while uint256(stor20[arg1].field_0) > idx:
                    uint256(stor20[arg1][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                if uint256(stor22[arg1].field_0):
                    mem[0] = arg1
                    mem[32] = 22
                    idx = 0
                    while idx < uint256(stor22[arg1].field_0):
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var50005 >= uint256(stor[var50004][address(stor[idx + sha3(var50002)])]):
                            uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0) = 0
                            mem[0] = sha3(address(stor22[arg1][idx].field_0), sha3(arg1, 23))
                            s = sha3(mem[0])
                            while sha3(sha3(address(stor22[arg1][idx].field_0), sha3(arg1, 23))) + (2 * uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0)) > s:
                                uint256(stor[s]) = 0
                                uint256(stor1[s].field_0) = 0
                                mem[0] = arg1
                                mem[32] = 22
                                s = s + 2
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 22
                            idx = idx + 1
                            continue 
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var56009 >= uint256(stor[var56004][address(stor[idx + sha3(var56002)])]):
                            revert with 0, 50
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        mem[32] = var60004
                        if var60010 >= uint256(stor[var60004][address(stor[idx + sha3(var60002)])]):
                            revert with 0, 50
                        mem[0] = var62002
                        mem[96] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                        mem[100] = this.address
                        mem[132] = msg.sender
                        mem[164] = var62003
                        mem[196] = uint256(stor[(2 * var62001) + sha3(var62002) + 1])
                        mem[228] = 160
                        mem[260] = 4
                        mem[292] = 0x3078303100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(var64003)
                        call var66002.mem[var66004 len 4] with:
                             gas gas_remaining wei
                            args mem[var66004 + 4 len var66005 - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if var70001 == -1:
                            revert with 0, 17
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var78005 < uint256(stor[var78004][address(stor[idx + sha3(var78002)])]):
                            # nil
                        else:
                            if idx >= uint256(stor22[arg1].field_0):
                                revert with 0, 50
                            uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0) = 0
                            # nil
                    uint256(stor22[arg1].field_0) = 0
                    idx = 0
                    while uint256(stor22[arg1].field_0) > idx:
                        uint256(stor22[arg1][idx].field_0) = 0
                        idx = idx + 1
                        continue 
        else:
            mem[0] = arg1
            mem[32] = 18
            idx = 0
            while idx < uint256(stor18[arg1].field_0):
                if idx >= uint256(stor18[arg1].field_0):
                    revert with 0, 50
                if idx >= uint256(stor18[arg1].field_0):
                    revert with 0, 50
                mem[0] = address(stor18[arg1][idx].field_0)
                mem[32] = sha3(arg1, 19)
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = stor19[arg1][address(stor18[arg1][idx].field_0)]
                require ext_code.size(address(stor18[arg1][idx].field_0))
                call address(stor18[arg1][idx].field_0).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor19[arg1][address(stor18[arg1][idx].field_0)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _500 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_500] == bool(mem[_500])
                if idx >= uint256(stor18[arg1].field_0):
                    revert with 0, 50
                stor19[arg1][address(stor18[arg1][idx].field_0)] = 0
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 18
                idx = idx + 1
                continue 
            uint256(stor18[arg1].field_0) = 0
            idx = 0
            while uint256(stor18[arg1].field_0) > idx:
                uint256(stor18[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
            if not uint256(stor20[arg1].field_0):
                if uint256(stor22[arg1].field_0):
                    mem[0] = arg1
                    mem[32] = 22
                    idx = 0
                    while idx < uint256(stor22[arg1].field_0):
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var50005 >= uint256(stor[var50004][address(stor[idx + sha3(var50002)])]):
                            uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0) = 0
                            mem[0] = sha3(address(stor22[arg1][idx].field_0), sha3(arg1, 23))
                            s = sha3(mem[0])
                            while sha3(sha3(address(stor22[arg1][idx].field_0), sha3(arg1, 23))) + (2 * uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0)) > s:
                                uint256(stor[s]) = 0
                                uint256(stor1[s].field_0) = 0
                                mem[0] = arg1
                                mem[32] = 22
                                s = s + 2
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 22
                            idx = idx + 1
                            continue 
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var56009 >= uint256(stor[var56004][address(stor[idx + sha3(var56002)])]):
                            revert with 0, 50
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        mem[32] = var60004
                        if var60010 >= uint256(stor[var60004][address(stor[idx + sha3(var60002)])]):
                            revert with 0, 50
                        mem[0] = var62002
                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = var62003
                        mem[mem[64] + 100] = uint256(stor[(2 * var62001) + sha3(var62002) + 1])
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 4
                        mem[mem[64] + 196] = 0x3078303100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(var64003)
                        call var66002.mem[var66004 len 4] with:
                             gas gas_remaining wei
                            args mem[var66004 + 4 len var66005 - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if var70001 == -1:
                            revert with 0, 17
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var78005 < uint256(stor[var78004][address(stor[idx + sha3(var78002)])]):
                            # nil
                        else:
                            if idx >= uint256(stor22[arg1].field_0):
                                revert with 0, 50
                            uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0) = 0
                            # nil
                    uint256(stor22[arg1].field_0) = 0
                    idx = 0
                    while uint256(stor22[arg1].field_0) > idx:
                        uint256(stor22[arg1][idx].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                mem[0] = arg1
                idx = 0
                while idx < uint256(stor20[arg1].field_0):
                    s = 0
                    while s < uint256(stor20[arg1].field_0):
                        if idx >= uint256(stor20[arg1].field_0):
                            revert with 0, 50
                        if idx >= uint256(stor20[arg1].field_0):
                            revert with 0, 50
                        if s >= uint256(stor21[arg1][address(stor20[arg1][idx].field_0)].field_0):
                            revert with 0, 50
                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = uint256(stor21[arg1][address(stor20[arg1][idx].field_0)][s].field_0)
                        require ext_code.size(address(stor20[arg1][idx].field_0))
                        call address(stor20[arg1][idx].field_0).0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, uint256(stor21[arg1][address(stor20[arg1][idx].field_0)][s].field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 20
                        s = s + 1
                        continue 
                    if idx >= uint256(stor20[arg1].field_0):
                        revert with 0, 50
                    uint256(stor21[arg1][address(stor20[arg1][idx].field_0)].field_0) = 0
                    mem[0] = sha3(address(stor20[arg1][idx].field_0), sha3(arg1, 21))
                    s = sha3(mem[0])
                    while sha3(sha3(address(stor20[arg1][idx].field_0), sha3(arg1, 21))) + uint256(stor21[arg1][address(stor20[arg1][idx].field_0)].field_0) > s:
                        uint256(stor[s]) = 0
                        mem[0] = arg1
                        mem[32] = 20
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 20
                    idx = idx + 1
                    continue 
                uint256(stor20[arg1].field_0) = 0
                idx = 0
                while uint256(stor20[arg1].field_0) > idx:
                    uint256(stor20[arg1][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                if uint256(stor22[arg1].field_0):
                    mem[0] = arg1
                    mem[32] = 22
                    idx = 0
                    while idx < uint256(stor22[arg1].field_0):
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var61005 >= uint256(stor[var61004][address(stor[idx + sha3(var61002)])]):
                            uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0) = 0
                            mem[0] = sha3(address(stor22[arg1][idx].field_0), sha3(arg1, 23))
                            s = sha3(mem[0])
                            while sha3(sha3(address(stor22[arg1][idx].field_0), sha3(arg1, 23))) + (2 * uint256(stor23[arg1][address(stor22[arg1][idx].field_0)].field_0)) > s:
                                uint256(stor[s]) = 0
                                uint256(stor1[s].field_0) = 0
                                mem[0] = arg1
                                mem[32] = 22
                                s = s + 2
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 22
                            idx = idx + 1
                            continue 
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        if var67009 >= uint256(stor[var67004][address(stor[idx + sha3(var67002)])]):
                            revert with 0, 50
                        if idx >= uint256(stor22[arg1].field_0):
                            revert with 0, 50
                        mem[32] = var71004
                        if var71010 >= uint256(stor[var71004][address(stor[idx + sha3(var71002)])]):
                            revert with 0, 50
                        mem[0] = var73002
                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = var73003
                        mem[mem[64] + 100] = uint256(stor[(2 * var73001) + sha3(var73002) + 1])
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 4
                        mem[mem[64] + 196] = 0x3078303100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(var75003)
                        call var77002.mem[var77004 len 4] with:
                             gas gas_remaining wei
                            args mem[var77004 + 4 len var77005 - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if var81001 == -1:
                            revert with 0, 17
                        # nil
                    uint256(stor22[arg1].field_0) = 0
                    idx = 0
                    while uint256(stor22[arg1].field_0) > idx:
                        uint256(stor22[arg1][idx].field_0) = 0
                        idx = idx + 1
                        continue 
        if locked < stor17[arg1]:
            revert with 0, 17
        locked -= stor17[arg1]
    if 0 >= states:
        revert with 0, 'Invalid state'
    tokenState[arg1] = 0
    emit 0x5f37cb0e: arg1, 0
}



}
