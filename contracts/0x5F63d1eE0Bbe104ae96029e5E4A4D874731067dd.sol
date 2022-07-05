contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#
const START_AT = 1


address owner;
array of struct stor1;
array of struct stor2;
mapping of address rawOwnerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor6;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor8;
array of uint256 tokenByIndex;
mapping of uint256 stor10;
address royaltiesAddress;
uint256 MAX_ELEMENTS;
uint256 PRICE;
uint8 stor14;
uint256 totalToken;
array of struct stor16;
uint8 sub_bc13a688;
uint256 sub_1ec858ec;
uint256 sub_c7427093;
array of struct stor20;
uint256 stor21;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not rawOwnerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_1ec858ec(?) {
    return sub_1ec858ec
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

function royaltiesAddress() {
    return royaltiesAddress
}

function MAX_ELEMENTS() {
    return MAX_ELEMENTS
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function totalToken() {
    return totalToken
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not rawOwnerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return rawOwnerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function rawOwnerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rawOwnerOf[arg1]
}

function PRICE() {
    return PRICE
}

function owner() {
    return owner
}

function sub_bc13a688(?) {
    return bool(sub_bc13a688)
}

function sub_c7427093(?) {
    return sub_c7427093
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor6[address(arg1)][address(arg2)])
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

function sub_097f0e3c(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor21 = arg1
}

function getMintPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if PRICE and arg1 > -1 / PRICE:
        revert with 'NH{q', 17
    return (PRICE * arg1)
}

function setRoyaltiesAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    royaltiesAddress = arg1
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    PRICE = arg1
    emit 0xe4af3870: PRICE
}

function sub_b8ea3cb0(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MAX_ELEMENTS = arg1
    emit 0xc83d13ef: MAX_ELEMENTS
}

function setPause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14 = uint8(arg1)
    emit PauseEvent(bool(stor14));
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 <= 0:
        return royaltiesAddress, 0
    if arg2 and stor21 > -1 / arg2:
        revert with 'NH{q', 17
    return royaltiesAddress, arg2 * stor21 / 100
}

function withdrawAll(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function sub_12c2449f(?) {
    require calldata.size - 4 >= 96
    require arg1 == bool(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bc13a688 = uint8(bool(arg1))
    sub_1ec858ec = arg2
    sub_c7427093 = arg3
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
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x2a55205a00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not rawOwnerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == rawOwnerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if rawOwnerOf[arg2] != msg.sender:
        if not stor6[stor3[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not rawOwnerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(rawOwnerOf[arg2], arg1, arg2);
}

function walletOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    while idx < balanceOf[address(arg1)]:
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = idx
        mem[32] = sha3(address(arg1), 7)
        if idx >= balanceOf[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function sub_89ece941(?) {
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
    if bool(stor20.length):
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor20[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor20.length = 0
            idx = 0
            while stor20.length.field_1 + 31 / 32 > idx:
                stor20[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor20[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor20.length = 0
            idx = 0
            while stor20.length.field_1 + 31 / 32 > idx:
                stor20[idx].field_0 = 0
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor16.length = 0
            idx = 0
            while stor16.length.field_1 + 31 / 32 > idx:
                stor16[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor16.length = 0
            idx = 0
            while stor16.length.field_1 + 31 / 32 > idx:
                stor16[idx].field_0 = 0
                idx = idx + 1
                continue 
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

function baseTokenURI() {
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor16.length):
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length.field_1), data=mem[128 len ceil32(stor16.length.field_1)])
                mem[128] = 256 * stor16.length.field_8
        else:
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length.field_1), data=mem[128 len ceil32(stor16.length.field_1)])
                mem[128] = 256 * stor16.length.field_8
        mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) > stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor16.length.field_1), data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
    if ceil32(stor16.length.field_1) > stor16.length.field_1:
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 192] = 0
    return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
}

function sub_103c4b53(?) {
    if bool(stor20.length):
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor20.length):
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor20.length.field_1:
                if 31 < stor20.length.field_1:
                    mem[128] = uint256(stor20.field_0)
                    idx = 128
                    s = 0
                    while stor20.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor20[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor20.length.field_1), data=mem[128 len ceil32(stor20.length.field_1)])
                mem[128] = 256 * stor20.length.field_8
        else:
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor20.length.field_1:
                if 31 < stor20.length.field_1:
                    mem[128] = uint256(stor20.field_0)
                    idx = 128
                    s = 0
                    while stor20.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor20[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor20.length.field_1), data=mem[128 len ceil32(stor20.length.field_1)])
                mem[128] = 256 * stor20.length.field_8
        mem[ceil32(stor20.length.field_1) + 192 len ceil32(stor20.length.field_1)] = mem[128 len ceil32(stor20.length.field_1)]
        if ceil32(stor20.length.field_1) > stor20.length.field_1:
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor20.length.field_1), data=mem[128 len ceil32(stor20.length.field_1)], mem[(2 * ceil32(stor20.length.field_1)) + 192 len 2 * ceil32(stor20.length.field_1)]), 
    if bool(stor20.length) == stor20.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor20.length):
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor20.length.field_1:
            if 31 < stor20.length.field_1:
                mem[128] = uint256(stor20.field_0)
                idx = 128
                s = 0
                while stor20.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor20[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)])
            mem[128] = 256 * stor20.length.field_8
    else:
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor20.length.field_1:
            if 31 < stor20.length.field_1:
                mem[128] = uint256(stor20.field_0)
                idx = 128
                s = 0
                while stor20.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor20[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)])
            mem[128] = 256 * stor20.length.field_8
    mem[ceil32(stor20.length.field_1) + 192 len ceil32(stor20.length.field_1)] = mem[128 len ceil32(stor20.length.field_1)]
    if ceil32(stor20.length.field_1) > stor20.length.field_1:
        mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 192] = 0
    return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)], mem[(2 * ceil32(stor20.length.field_1)) + 192 len 2 * ceil32(stor20.length.field_1)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not rawOwnerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not rawOwnerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if rawOwnerOf[arg3] != msg.sender:
        if not rawOwnerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not rawOwnerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if rawOwnerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
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
    if royaltiesAddress:
        if arg1:
            if ext_code.size(arg1) <= 0:
                require ext_code.size(royaltiesAddress)
                call royaltiesAddress.claimCommunity(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    approved[arg3] = 0
    if not rawOwnerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(rawOwnerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    rawOwnerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
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
    if not rawOwnerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not rawOwnerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if rawOwnerOf[arg3] != msg.sender:
        if not rawOwnerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not rawOwnerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if rawOwnerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
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
    if royaltiesAddress:
        if arg1:
            if ext_code.size(arg1) <= 0:
                require ext_code.size(royaltiesAddress)
                call royaltiesAddress.claimCommunity(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    approved[arg3] = 0
    if not rawOwnerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(rawOwnerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    rawOwnerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
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

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalToken > MAX_ELEMENTS:
        revert with 0, 'Soldout!'
    if stor14:
        revert with 0, 'Sales not open'
    if totalToken > -arg1 - 1:
        revert with 'NH{q', 17
    if totalToken + arg1 > MAX_ELEMENTS:
        revert with 0, 'Max limit'
    if PRICE and arg1 > -1 / PRICE:
        revert with 'NH{q', 17
    if msg.value < PRICE * arg1:
        revert with 0, 'Value below price'
    idx = 1
    while uint8(idx) <= arg1:
        if totalToken > -uint8(idx) - 1:
            revert with 'NH{q', 17
        totalToken++
        _191 = mem[64]
        mem[64] = mem[64] + 32
        mem[_191] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if rawOwnerOf[stor15 + uint8(idx)]:
            revert with 0, 'ERC721: token already minted'
        stor10[stor15 + uint8(idx)] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = totalToken + uint8(idx)
        if msg.sender:
            tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = totalToken + uint8(idx)
            stor8[stor15 + uint8(idx)] = balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = totalToken + uint8(idx)
            mem[32] = 3
            rawOwnerOf[stor15 + uint8(idx)] = msg.sender
            emit Transfer(0, msg.sender, totalToken + uint8(idx));
            if not royaltiesAddress:
                if ext_code.size(msg.sender) > 0:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = totalToken + uint8(idx)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_191 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, totalToken + uint8(idx), 128, 0
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
                    _385 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_385] == Mask(32, 224, mem[_385])
                    if Mask(32, 224, mem[_385]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if ext_code.size(msg.sender) > 0:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = totalToken + uint8(idx)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_191 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, totalToken + uint8(idx), 128, 0
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
                    _386 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_386] == Mask(32, 224, mem[_386])
                    if Mask(32, 224, mem[_386]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor10[stor15 + uint8(idx)] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor10[stor15 + uint8(idx)]] = tokenByIndex[tokenByIndex.length]
            stor10[stor9[stor9.length]] = stor10[stor15 + uint8(idx)]
            stor10[stor15 + uint8(idx)] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = totalToken + uint8(idx)
            mem[32] = 3
            rawOwnerOf[stor15 + uint8(idx)] = msg.sender
            emit Transfer(0, msg.sender, totalToken + uint8(idx));
            if not royaltiesAddress:
                if ext_code.size(msg.sender) > 0:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = totalToken + uint8(idx)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_191 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, totalToken + uint8(idx), 128, 0
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
                    _387 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_387] == Mask(32, 224, mem[_387])
                    if Mask(32, 224, mem[_387]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if ext_code.size(msg.sender) > 0:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = totalToken + uint8(idx)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_191 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, totalToken + uint8(idx), 128, 0
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
                    _388 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_388] == Mask(32, 224, mem[_388])
                    if Mask(32, 224, mem[_388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        emit 0x80bc0d9c: totalToken + uint8(idx)
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        continue 
}

function sub_6ea5d178(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = floor32(('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if s > -mem[(32 * idx) + floor32(('cd', 4).length) + 129] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        continue 
    if totalToken > (-1 * s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) - 1:
        revert with 'NH{q', 17
    if totalToken + (s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) > MAX_ELEMENTS:
        revert with 0, 'Max limit'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if var194003 >= mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if var202001 == -1:
            revert with 'NH{q', 17
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        _2632 = mem[(32 * idx) + 128]
        totalToken++
        mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0
        s = var206003
        t = var206001
        while address(_2632):
            if rawOwnerOf[t]:
                revert with 0, 'ERC721: token already minted'
            stor10[t] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = t
            if address(_2632):
                tokenOfOwnerByIndex[address(_2632)][stor4[address(_2632)]] = t
                stor8[t] = balanceOf[address(_2632)]
                if balanceOf[address(_2632)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(_2632)]++
                mem[0] = t
                mem[32] = 3
                rawOwnerOf[t] = address(_2632)
                emit Transfer(0, address(_2632), t);
                if not royaltiesAddress:
                    if ext_code.size(address(_2632)) > 0:
                        _2667 = mem[64]
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = t
                        mem[mem[64] + 100] = 128
                        _2689 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                        mem[mem[64] + 132] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                        u = 0
                        while u < _2689:
                            mem[_2667 + u + 164] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + u + 130]
                            _2632 = mem[(32 * idx) + 128]
                            totalToken++
                            mem[64] = mem[64] + 32
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0
                            u = u + 32
                            continue 
                        if ceil32(_2689) <= _2689:
                            require ext_code.size(address(_2632))
                            call address(_2632).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2667 + ceil32(_2689) + -mem[64] + 160]
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
                            _2863 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2863] == Mask(32, 224, mem[_2863])
                            if Mask(32, 224, mem[_2863]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            mem[_2667 + _2689 + 164] = 0
                            require ext_code.size(address(_2632))
                            call address(_2632).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2667 + ceil32(_2689) + -mem[64] + 160]
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
                            _2867 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2867] == Mask(32, 224, mem[_2867])
                            if Mask(32, 224, mem[_2867]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if ext_code.size(address(_2632)) > 0:
                        _2668 = mem[64]
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = t
                        mem[mem[64] + 100] = 128
                        _2690 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                        mem[mem[64] + 132] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                        u = 0
                        while u < _2690:
                            mem[_2668 + u + 164] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + u + 130]
                            _2632 = mem[(32 * idx) + 128]
                            totalToken++
                            mem[64] = mem[64] + 32
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0
                            u = u + 32
                            continue 
                        if ceil32(_2690) <= _2690:
                            require ext_code.size(address(_2632))
                            call address(_2632).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2668 + ceil32(_2690) + -mem[64] + 160]
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
                            _2864 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2864] == Mask(32, 224, mem[_2864])
                            if Mask(32, 224, mem[_2864]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            mem[_2668 + _2690 + 164] = 0
                            require ext_code.size(address(_2632))
                            call address(_2632).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2668 + ceil32(_2690) + -mem[64] + 160]
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
                            _2868 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2868] == Mask(32, 224, mem[_2868])
                            if Mask(32, 224, mem[_2868]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor10[t] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor10[t]] = tokenByIndex[tokenByIndex.length]
                stor10[stor9[stor9.length]] = stor10[t]
                stor10[t] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(_2632)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(_2632)]++
                mem[0] = t
                mem[32] = 3
                rawOwnerOf[t] = address(_2632)
                emit Transfer(0, address(_2632), t);
                if not royaltiesAddress:
                    if ext_code.size(address(_2632)) > 0:
                        _2673 = mem[64]
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = t
                        mem[mem[64] + 100] = 128
                        _2693 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                        mem[mem[64] + 132] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                        u = 0
                        while u < _2693:
                            mem[_2673 + u + 164] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + u + 130]
                            _2632 = mem[(32 * idx) + 128]
                            totalToken++
                            mem[64] = mem[64] + 32
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0
                            u = u + 32
                            continue 
                        if ceil32(_2693) <= _2693:
                            require ext_code.size(address(_2632))
                            call address(_2632).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2673 + ceil32(_2693) + -mem[64] + 160]
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
                            _2865 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2865] == Mask(32, 224, mem[_2865])
                            if Mask(32, 224, mem[_2865]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            mem[_2673 + _2693 + 164] = 0
                            require ext_code.size(address(_2632))
                            call address(_2632).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2673 + ceil32(_2693) + -mem[64] + 160]
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
                            _2869 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2869] == Mask(32, 224, mem[_2869])
                            if Mask(32, 224, mem[_2869]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if ext_code.size(address(_2632)) > 0:
                        _2674 = mem[64]
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = t
                        mem[mem[64] + 100] = 128
                        _2695 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                        mem[mem[64] + 132] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
                        u = 0
                        while u < _2695:
                            mem[_2674 + u + 164] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + u + 130]
                            _2632 = mem[(32 * idx) + 128]
                            totalToken++
                            mem[64] = mem[64] + 32
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0
                            u = u + 32
                            continue 
                        if ceil32(_2695) <= _2695:
                            require ext_code.size(address(_2632))
                            call address(_2632).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2674 + ceil32(_2695) + -mem[64] + 160]
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
                            _2866 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2866] == Mask(32, 224, mem[_2866])
                            if Mask(32, 224, mem[_2866]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            mem[_2674 + _2695 + 164] = 0
                            require ext_code.size(address(_2632))
                            call address(_2632).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2674 + ceil32(_2695) + -mem[64] + 160]
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
                            _2870 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2870] == Mask(32, 224, mem[_2870])
                            if Mask(32, 224, mem[_2870]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            emit 0x80bc0d9c: t
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            if s + 1 >= mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                if idx == -1:
                    revert with 'NH{q', 17
                _2632 = mem[(32 * idx + 1) + 128]
                totalToken++
                mem[64] = mem[64] + 32
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0
                idx = idx + 1
                continue 
            if t == -1:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _2632 = mem[(32 * idx) + 128]
            totalToken++
            mem[64] = mem[64] + 32
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0
            s = s + 1
            t = t + 1
            continue 
        revert with 0, 'ERC721: mint to the zero address'
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 3
    if not rawOwnerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if sub_bc13a688:
        if not bool(stor16.length):
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if bool(stor16.length):
                if bool(stor16.length) == stor16.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not stor16.length.field_1:
                    if stor16.length.field_1 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                            return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
                    mem[ceil32(stor16.length.field_1) + 128] = s
                    if s:
                        mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    if ceil32(stor16.length.field_1) > stor16.length.field_1:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
                    return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
                if 31 >= stor16.length.field_1:
                    mem[128] = 256 * stor16.length.field_8
                    if stor16.length.field_1 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                            return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
                    mem[ceil32(stor16.length.field_1) + 128] = s
                    if s:
                        mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    if ceil32(stor16.length.field_1) > stor16.length.field_1:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
                    return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor16.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
                mem[ceil32(stor16.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) > stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) + 32], 
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor16.length.field_1:
                if 31 >= stor16.length.field_1:
                    mem[128] = 256 * stor16.length.field_8
                else:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
            if stor16.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor16.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) > stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
            return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[96] = stor16.length.field_1
        if bool(stor16.length):
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor16.length.field_1:
                if stor16.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
                mem[ceil32(stor16.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) > stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
                return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
            if 31 >= stor16.length.field_1:
                mem[128] = 256 * stor16.length.field_8
                if stor16.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
                mem[ceil32(stor16.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) > stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
                return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
            mem[128] = uint256(stor16.field_0)
            idx = 128
            s = 0
            while stor16.length.field_1 + 96 > idx:
                mem[idx + 32] = stor16[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if stor16.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor16.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) > stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) + 32], 
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor16.length.field_1:
            if stor16.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor16.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) > stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) + 32], 
        if 31 < stor16.length.field_1:
            mem[128] = uint256(stor16.field_0)
            idx = 128
            s = 0
            while stor16.length.field_1 + 96 > idx:
                mem[idx + 32] = stor16[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if stor16.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor16.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) > stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) + 32], 
        mem[128] = 256 * stor16.length.field_8
        if stor16.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
            return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor16.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) > stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
        mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
        return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
    if arg1 < sub_1ec858ec:
        if not bool(stor16.length):
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if bool(stor16.length):
                if bool(stor16.length) == stor16.length.field_1 < 32:
                    revert with 'NH{q', 34
                if stor16.length.field_1:
                    if 31 >= stor16.length.field_1:
                        mem[128] = 256 * stor16.length.field_8
                    else:
                        mem[128] = uint256(stor16.field_0)
                        idx = 128
                        s = 0
                        while stor16.length.field_1 + 96 > idx:
                            mem[idx + 32] = stor16[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor16.length) == stor16.length.field_1 < 32:
                    revert with 'NH{q', 34
                if stor16.length.field_1:
                    if 31 >= stor16.length.field_1:
                        mem[128] = 256 * stor16.length.field_8
                        if stor16.length.field_1 <= 0:
                            return ''
                        if not arg1:
                            mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                                return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                            return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
                        mem[ceil32(stor16.length.field_1) + 128] = s
                        if s:
                            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                        if ceil32(stor16.length.field_1) > stor16.length.field_1:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) + 32], 
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
            if stor16.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor16.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) > stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
            return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[96] = stor16.length.field_1
        if bool(stor16.length):
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor16.length.field_1:
                if stor16.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
                mem[ceil32(stor16.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) > stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) + 32], 
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor16.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
                mem[ceil32(stor16.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) > stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) + 32], 
            mem[128] = 256 * stor16.length.field_8
            if stor16.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor16.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) > stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
            return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor16.length.field_1:
            if stor16.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor16.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) > stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
            return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
        if 31 >= stor16.length.field_1:
            mem[128] = 256 * stor16.length.field_8
            if stor16.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor16.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) > stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
            return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
        mem[128] = uint256(stor16.field_0)
        idx = 128
        s = 0
        while stor16.length.field_1 + 96 > idx:
            mem[idx + 32] = stor16[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    else:
        if arg1 <= sub_c7427093:
            if bool(stor20.length):
                if bool(stor20.length) == stor20.length.field_1 < 32:
                    revert with 'NH{q', 34
                if bool(stor20.length):
                    if bool(stor20.length) == stor20.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor20.length.field_1:
                        if 31 < stor20.length.field_1:
                            mem[128] = uint256(stor20.field_0)
                            idx = 128
                            s = 0
                            while stor20.length.field_1 + 96 > idx:
                                mem[idx + 32] = stor20[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor20.length.field_1), data=mem[128 len ceil32(stor20.length.field_1)])
                        mem[128] = 256 * stor20.length.field_8
                else:
                    if bool(stor20.length) == stor20.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor20.length.field_1:
                        if 31 < stor20.length.field_1:
                            mem[128] = uint256(stor20.field_0)
                            idx = 128
                            s = 0
                            while stor20.length.field_1 + 96 > idx:
                                mem[idx + 32] = stor20[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor20.length.field_1), data=mem[128 len ceil32(stor20.length.field_1)])
                        mem[128] = 256 * stor20.length.field_8
                mem[ceil32(stor20.length.field_1) + 192 len ceil32(stor20.length.field_1)] = mem[128 len ceil32(stor20.length.field_1)]
                if ceil32(stor20.length.field_1) > stor20.length.field_1:
                    mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 192] = 0
                return Array(len=2 * Mask(256, -1, stor20.length.field_1), data=mem[128 len ceil32(stor20.length.field_1)], mem[(2 * ceil32(stor20.length.field_1)) + 192 len 2 * ceil32(stor20.length.field_1)]), 
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 'NH{q', 34
            if bool(stor20.length):
                if bool(stor20.length) == stor20.length.field_1 < 32:
                    revert with 'NH{q', 34
                if stor20.length.field_1:
                    if 31 < stor20.length.field_1:
                        mem[128] = uint256(stor20.field_0)
                        idx = 128
                        s = 0
                        while stor20.length.field_1 + 96 > idx:
                            mem[idx + 32] = stor20[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)])
                    mem[128] = 256 * stor20.length.field_8
            else:
                if bool(stor20.length) == stor20.length.field_1 < 32:
                    revert with 'NH{q', 34
                if stor20.length.field_1:
                    if 31 < stor20.length.field_1:
                        mem[128] = uint256(stor20.field_0)
                        idx = 128
                        s = 0
                        while stor20.length.field_1 + 96 > idx:
                            mem[idx + 32] = stor20[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)])
                    mem[128] = 256 * stor20.length.field_8
            mem[ceil32(stor20.length.field_1) + 192 len ceil32(stor20.length.field_1)] = mem[128 len ceil32(stor20.length.field_1)]
            if ceil32(stor20.length.field_1) > stor20.length.field_1:
                mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 192] = 0
            return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)], mem[(2 * ceil32(stor20.length.field_1)) + 192 len 2 * ceil32(stor20.length.field_1)]), 
        if not bool(stor16.length):
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if bool(stor16.length):
                if bool(stor16.length) == stor16.length.field_1 < 32:
                    revert with 'NH{q', 34
                if stor16.length.field_1:
                    if 31 >= stor16.length.field_1:
                        mem[128] = 256 * stor16.length.field_8
                        if stor16.length.field_1 <= 0:
                            return ''
                        if not arg1:
                            mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                                return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                            return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
                        mem[ceil32(stor16.length.field_1) + 128] = s
                        if s:
                            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                        if ceil32(stor16.length.field_1) > stor16.length.field_1:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) + 32], 
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
            else:
                if bool(stor16.length) == stor16.length.field_1 < 32:
                    revert with 'NH{q', 34
                if stor16.length.field_1:
                    if 31 >= stor16.length.field_1:
                        mem[128] = 256 * stor16.length.field_8
                        if stor16.length.field_1 <= 0:
                            return ''
                        if not arg1:
                            mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                                return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                            return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
                        mem[ceil32(stor16.length.field_1) + 128] = s
                        if s:
                            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                        if ceil32(stor16.length.field_1) > stor16.length.field_1:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) + 32], 
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
            if stor16.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor16.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) > stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
            return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[96] = stor16.length.field_1
        if bool(stor16.length):
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor16.length.field_1:
                if stor16.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
                mem[ceil32(stor16.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) > stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
                return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
            if 31 >= stor16.length.field_1:
                mem[128] = 256 * stor16.length.field_8
                if stor16.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
                mem[ceil32(stor16.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) > stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
                return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
            mem[128] = uint256(stor16.field_0)
            idx = 128
            s = 0
            while stor16.length.field_1 + 96 > idx:
                mem[idx + 32] = stor16[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        else:
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor16.length.field_1:
                if stor16.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
                mem[ceil32(stor16.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) > stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
                return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
            if 31 >= stor16.length.field_1:
                mem[128] = 256 * stor16.length.field_8
            else:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor16.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = '.json'
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 230] = 32
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262] = mem[ceil32(stor16.length.field_1) + 192]
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
            return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 294 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 294] = 0
        return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 262 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
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
    mem[ceil32(stor16.length.field_1) + 128] = s
    if s:
        mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
    if ceil32(stor16.length.field_1) > stor16.length.field_1:
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = '.json'
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 197] = 32
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
    if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
        return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 261] = 0
    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 229 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) + 32], 
}



}
