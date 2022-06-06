contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
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
address owner;
array of uint256 stor11;
array of struct stor12;
uint256 cost;
uint256 presaleCost;
uint8 paused; offset 16
uint8 presalePaused; offset 24
uint16 maxSupply;
address stor15; offset 32
uint256 stor15; offset 24
uint256 stor15; offset 16
mapping of uint8 stor16;
mapping of uint8 stor17;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function cost() {
    return cost
}

function totalSupply() {
    return tokenByIndex.length
}

function presaleCost() {
    return presaleCost
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

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function sub_514cc155(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor16[arg1])
}

function paused() {
    return bool(paused)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function sub_7b92dc27(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor17[arg1])
}

function owner() {
    return owner
}

function presalePaused() {
    return bool(presalePaused)
}

function maxSupply() {
    return maxSupply
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

function setCost(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cost = arg1
}

function sub_3775d358(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17[address(arg1)] = 1
}

function sub_4439cf0d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16[address(arg1)] = 1
}

function sub_8d22f814(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16[address(arg1)] = 0
}

function sub_f957ea33(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17[address(arg1)] = 0
}

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor15.field_16) = Mask(240, 0, arg1)
}

function presalePause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(232, 0, stor15.field_24) = Mask(232, 0, arg1)
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

function withdraw() payable {
    if not stor16[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You do not have permission to interact with this contract.'
    call address(stor15.field_32) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
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
        mem[32] = sha3(address(arg1), 6)
        if idx >= balanceOf[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
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

function setBaseExtension(string arg1) {
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
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor12[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor12[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
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
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
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
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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

function base() {
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        else:
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) > stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
    if ceil32(stor12.length.field_1) > stor12.length.field_1:
        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
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
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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

function sub_deaccda6(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        mem[228] = 0
        hash = sha256hash(Mask(144, 112, 'AxCMS22!', '0', Mask(184, 72, 'l33tZc0d3') >> 72) >> 112) 
        mem[210] = hash
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require hash == hash
        if not hash:
            return '0', 0
        s = 0
        idx = hash
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 210] = s
        if s:
            mem[ceil32(return_data.size) + 242 len s] = call.data[calldata.size len s]
        t = s
        idx = hash
        while idx:
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if not t:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(return_data.size) + 210]:
                revert with 'NH{q', 50
            mem[t + ceil32(return_data.size) + 241 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(return_data.size) + ceil32(s) + 242] = 32
        mem[ceil32(return_data.size) + ceil32(s) + 274] = mem[ceil32(return_data.size) + 210]
        mem[ceil32(return_data.size) + ceil32(s) + 306 len ceil32(mem[ceil32(return_data.size) + 210])] = mem[ceil32(return_data.size) + 242 len ceil32(mem[ceil32(return_data.size) + 210])]
        if ceil32(mem[ceil32(return_data.size) + 210]) > mem[ceil32(return_data.size) + 210]:
            mem[ceil32(return_data.size) + ceil32(s) + mem[ceil32(return_data.size) + 210] + 306] = 0
        return Array(len=mem[ceil32(return_data.size) + 210], data=mem[ceil32(return_data.size) + ceil32(s) + 306 len ceil32(mem[ceil32(return_data.size) + 210])]), 
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
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _193 = mem[64]
        mem[mem[64] + 32] = 'AxCMS22!'
        _207 = mem[96]
        mem[mem[64] + 40 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 40] = 'l33tZc0d3'
        if ceil32(mem[96]) <= mem[96]:
            _351 = mem[64]
            mem[mem[64]] = _193 + _207 + -mem[64] + 17
            mem[64] = _193 + _207 + 49
            _367 = mem[_351]
            mem[_193 + _207 + 49 len ceil32(mem[_351])] = mem[_351 + 32 len ceil32(mem[_351])]
            if ceil32(_367) <= _367:
                hash = sha256hash(mem[_193 + _207 + 49 len _367]) 
                mem[_193 + _207 + 49] = hash
                if not sha256hash.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require hash == hash
                if not hash:
                    return '0', 0
                s = 0
                idx = hash
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[_193 + _207 + ceil32(return_data.size) + 49] = s
                mem[64] = _193 + _207 + ceil32(return_data.size) + ceil32(s) + 81
                if not s:
                    t = s
                    idx = hash
                    while idx:
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if not t:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_193 + _207 + ceil32(return_data.size) + 49]:
                            revert with 'NH{q', 50
                        mem[t + _193 + _207 + ceil32(return_data.size) + 80 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _755 = mem[64]
                    mem[mem[64]] = 32
                    _771 = mem[_193 + _207 + ceil32(return_data.size) + 49]
                    mem[mem[64] + 32] = mem[_193 + _207 + ceil32(return_data.size) + 49]
                    mem[mem[64] + 64 len ceil32(_771)] = mem[_193 + _207 + ceil32(return_data.size) + 81 len ceil32(_771)]
                    if ceil32(_771) <= _771:
                        return 32, mem[mem[64] + 32 len ceil32(_771) + 32]
                    mem[mem[64] + _771 + 64] = 0
                    return memory
                      from mem[64]
                       len _755 + ceil32(_771) + -mem[64] + 64
                mem[_193 + _207 + ceil32(return_data.size) + 81 len s] = call.data[calldata.size len s]
                t = s
                idx = hash
                while idx:
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if not t:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_193 + _207 + ceil32(return_data.size) + 49]:
                        revert with 'NH{q', 50
                    mem[t + _193 + _207 + ceil32(return_data.size) + 80 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _756 = mem[64]
                mem[mem[64]] = 32
                _772 = mem[_193 + _207 + ceil32(return_data.size) + 49]
                mem[mem[64] + 32] = mem[_193 + _207 + ceil32(return_data.size) + 49]
                mem[mem[64] + 64 len ceil32(_772)] = mem[_193 + _207 + ceil32(return_data.size) + 81 len ceil32(_772)]
                if ceil32(_772) <= _772:
                    return 32, mem[mem[64] + 32 len ceil32(_772) + 32]
                mem[mem[64] + _772 + 64] = 0
                return memory
                  from mem[64]
                   len _756 + ceil32(_772) + -mem[64] + 64
            mem[_193 + _207 + _367 + 49] = 0
            hash = sha256hash(mem[_193 + _207 + 49 len _367]) 
            mem[_193 + _207 + 49] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require hash == hash
            if not hash:
                return '0', 0
            s = 0
            idx = hash
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[_193 + _207 + ceil32(return_data.size) + 49] = s
            mem[64] = _193 + _207 + ceil32(return_data.size) + ceil32(s) + 81
            if not s:
                t = s
                idx = hash
                while idx:
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if not t:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_193 + _207 + ceil32(return_data.size) + 49]:
                        revert with 'NH{q', 50
                    mem[t + _193 + _207 + ceil32(return_data.size) + 80 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _757 = mem[64]
                mem[mem[64]] = 32
                _773 = mem[_193 + _207 + ceil32(return_data.size) + 49]
                mem[mem[64] + 32] = mem[_193 + _207 + ceil32(return_data.size) + 49]
                mem[mem[64] + 64 len ceil32(_773)] = mem[_193 + _207 + ceil32(return_data.size) + 81 len ceil32(_773)]
                if ceil32(_773) <= _773:
                    return 32, mem[mem[64] + 32 len ceil32(_773) + 32]
                mem[mem[64] + _773 + 64] = 0
                return memory
                  from mem[64]
                   len _757 + ceil32(_773) + -mem[64] + 64
            mem[_193 + _207 + ceil32(return_data.size) + 81 len s] = call.data[calldata.size len s]
            t = s
            idx = hash
            while idx:
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if not t:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_193 + _207 + ceil32(return_data.size) + 49]:
                    revert with 'NH{q', 50
                mem[t + _193 + _207 + ceil32(return_data.size) + 80 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _758 = mem[64]
            mem[mem[64]] = 32
            _774 = mem[_193 + _207 + ceil32(return_data.size) + 49]
            mem[mem[64] + 32] = mem[_193 + _207 + ceil32(return_data.size) + 49]
            mem[mem[64] + 64 len ceil32(_774)] = mem[_193 + _207 + ceil32(return_data.size) + 81 len ceil32(_774)]
            if ceil32(_774) <= _774:
                return 32, mem[mem[64] + 32 len ceil32(_774) + 32]
            mem[mem[64] + _774 + 64] = 0
            return memory
              from mem[64]
               len _758 + ceil32(_774) + -mem[64] + 64
        _359 = mem[64]
        mem[mem[64]] = _193 + _207 + -mem[64] + 17
        mem[64] = _193 + _207 + 49
        _369 = mem[_359]
        mem[_193 + _207 + 49 len ceil32(mem[_359])] = mem[_359 + 32 len ceil32(mem[_359])]
        if ceil32(_369) <= _369:
            hash = sha256hash(mem[_193 + _207 + 49 len _369]) 
            mem[_193 + _207 + 49] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require hash == hash
            if not hash:
                return '0', 0
            s = 0
            idx = hash
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[_193 + _207 + ceil32(return_data.size) + 49] = s
            mem[64] = _193 + _207 + ceil32(return_data.size) + ceil32(s) + 81
            if not s:
                t = s
                idx = hash
                while idx:
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if not t:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_193 + _207 + ceil32(return_data.size) + 49]:
                        revert with 'NH{q', 50
                    mem[t + _193 + _207 + ceil32(return_data.size) + 80 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[mem[64]] = 32
                _775 = mem[_193 + _207 + ceil32(return_data.size) + 49]
                mem[mem[64] + 32] = mem[_193 + _207 + ceil32(return_data.size) + 49]
                mem[mem[64] + 64 len ceil32(_775)] = mem[_193 + _207 + ceil32(return_data.size) + 81 len ceil32(_775)]
                if ceil32(_775) > _775:
                    mem[mem[64] + _775 + 64] = 0
                return 32, mem[mem[64] + 32 len ceil32(_775) + 32]
            mem[_193 + _207 + ceil32(return_data.size) + 81 len s] = call.data[calldata.size len s]
            t = s
            idx = hash
            while idx:
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if not t:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_193 + _207 + ceil32(return_data.size) + 49]:
                    revert with 'NH{q', 50
                mem[t + _193 + _207 + ceil32(return_data.size) + 80 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _760 = mem[64]
            mem[mem[64]] = 32
            _776 = mem[_193 + _207 + ceil32(return_data.size) + 49]
            mem[mem[64] + 32] = mem[_193 + _207 + ceil32(return_data.size) + 49]
            mem[mem[64] + 64 len ceil32(_776)] = mem[_193 + _207 + ceil32(return_data.size) + 81 len ceil32(_776)]
            if ceil32(_776) <= _776:
                return 32, mem[mem[64] + 32 len ceil32(_776) + 32]
            mem[mem[64] + _776 + 64] = 0
            return memory
              from mem[64]
               len _760 + ceil32(_776) + -mem[64] + 64
        mem[_193 + _207 + _369 + 49] = 0
        hash = sha256hash(mem[_193 + _207 + 49 len _369]) 
        mem[_193 + _207 + 49] = hash
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require hash == hash
        if not hash:
            return '0', 0
        s = 0
        idx = hash
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[_193 + _207 + ceil32(return_data.size) + 49] = s
        mem[64] = _193 + _207 + ceil32(return_data.size) + ceil32(s) + 81
        if not s:
            t = s
            idx = hash
            while idx:
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if not t:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_193 + _207 + ceil32(return_data.size) + 49]:
                    revert with 'NH{q', 50
                mem[t + _193 + _207 + ceil32(return_data.size) + 80 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _761 = mem[64]
            mem[mem[64]] = 32
            _777 = mem[_193 + _207 + ceil32(return_data.size) + 49]
            mem[mem[64] + 32] = mem[_193 + _207 + ceil32(return_data.size) + 49]
            mem[mem[64] + 64 len ceil32(_777)] = mem[_193 + _207 + ceil32(return_data.size) + 81 len ceil32(_777)]
            if ceil32(_777) <= _777:
                return 32, mem[mem[64] + 32 len ceil32(_777) + 32]
            mem[mem[64] + _777 + 64] = 0
            return memory
              from mem[64]
               len _761 + ceil32(_777) + -mem[64] + 64
        mem[_193 + _207 + ceil32(return_data.size) + 81 len s] = call.data[calldata.size len s]
        t = s
        idx = hash
        while idx:
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if not t:
                revert with 'NH{q', 17
            if t - 1 >= mem[_193 + _207 + ceil32(return_data.size) + 49]:
                revert with 'NH{q', 50
            mem[t + _193 + _207 + ceil32(return_data.size) + 80 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _762 = mem[64]
        mem[mem[64]] = 32
        _778 = mem[_193 + _207 + ceil32(return_data.size) + 49]
        mem[mem[64] + 32] = mem[_193 + _207 + ceil32(return_data.size) + 49]
        mem[mem[64] + 64 len ceil32(_778)] = mem[_193 + _207 + ceil32(return_data.size) + 81 len ceil32(_778)]
        if ceil32(_778) <= _778:
            return 32, mem[mem[64] + 32 len ceil32(_778) + 32]
        mem[mem[64] + _778 + 64] = 0
        return memory
          from mem[64]
           len _762 + ceil32(_778) + -mem[64] + 64
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _194 = mem[64]
    mem[mem[64] + 32] = 'AxCMS22!'
    _208 = mem[96]
    mem[mem[64] + 40 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[mem[64] + mem[96] + 40] = 'l33tZc0d3'
    if ceil32(mem[96]) <= mem[96]:
        _353 = mem[64]
        mem[mem[64]] = _194 + _208 + -mem[64] + 17
        mem[64] = _194 + _208 + 49
        _368 = mem[_353]
        mem[_194 + _208 + 49 len ceil32(mem[_353])] = mem[_353 + 32 len ceil32(mem[_353])]
        if ceil32(_368) <= _368:
            hash = sha256hash(mem[_194 + _208 + 49 len _368]) 
            mem[_194 + _208 + 49] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require hash == hash
            if not hash:
                return '0', 0
            s = 0
            idx = hash
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[_194 + _208 + ceil32(return_data.size) + 49] = s
            mem[64] = _194 + _208 + ceil32(return_data.size) + ceil32(s) + 81
            if not s:
                t = s
                idx = hash
                while idx:
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if not t:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_194 + _208 + ceil32(return_data.size) + 49]:
                        revert with 'NH{q', 50
                    mem[t + _194 + _208 + ceil32(return_data.size) + 80 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _763 = mem[64]
                mem[mem[64]] = 32
                _779 = mem[_194 + _208 + ceil32(return_data.size) + 49]
                mem[mem[64] + 32] = mem[_194 + _208 + ceil32(return_data.size) + 49]
                mem[mem[64] + 64 len ceil32(_779)] = mem[_194 + _208 + ceil32(return_data.size) + 81 len ceil32(_779)]
                if ceil32(_779) <= _779:
                    return 32, mem[mem[64] + 32 len ceil32(_779) + 32]
                mem[mem[64] + _779 + 64] = 0
                return memory
                  from mem[64]
                   len _763 + ceil32(_779) + -mem[64] + 64
            mem[_194 + _208 + ceil32(return_data.size) + 81 len s] = call.data[calldata.size len s]
            t = s
            idx = hash
            while idx:
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if not t:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_194 + _208 + ceil32(return_data.size) + 49]:
                    revert with 'NH{q', 50
                mem[t + _194 + _208 + ceil32(return_data.size) + 80 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _764 = mem[64]
            mem[mem[64]] = 32
            _780 = mem[_194 + _208 + ceil32(return_data.size) + 49]
            mem[mem[64] + 32] = mem[_194 + _208 + ceil32(return_data.size) + 49]
            mem[mem[64] + 64 len ceil32(_780)] = mem[_194 + _208 + ceil32(return_data.size) + 81 len ceil32(_780)]
            if ceil32(_780) <= _780:
                return 32, mem[mem[64] + 32 len ceil32(_780) + 32]
            mem[mem[64] + _780 + 64] = 0
            return memory
              from mem[64]
               len _764 + ceil32(_780) + -mem[64] + 64
        mem[_194 + _208 + _368 + 49] = 0
        hash = sha256hash(mem[_194 + _208 + 49 len _368]) 
        mem[_194 + _208 + 49] = hash
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require hash == hash
        if not hash:
            return '0', 0
        s = 0
        idx = hash
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[_194 + _208 + ceil32(return_data.size) + 49] = s
        mem[64] = _194 + _208 + ceil32(return_data.size) + ceil32(s) + 81
        if not s:
            t = s
            idx = hash
            while idx:
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if not t:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_194 + _208 + ceil32(return_data.size) + 49]:
                    revert with 'NH{q', 50
                mem[t + _194 + _208 + ceil32(return_data.size) + 80 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _765 = mem[64]
            mem[mem[64]] = 32
            _781 = mem[_194 + _208 + ceil32(return_data.size) + 49]
            mem[mem[64] + 32] = mem[_194 + _208 + ceil32(return_data.size) + 49]
            mem[mem[64] + 64 len ceil32(_781)] = mem[_194 + _208 + ceil32(return_data.size) + 81 len ceil32(_781)]
            if ceil32(_781) <= _781:
                return 32, mem[mem[64] + 32 len ceil32(_781) + 32]
            mem[mem[64] + _781 + 64] = 0
            return memory
              from mem[64]
               len _765 + ceil32(_781) + -mem[64] + 64
        mem[_194 + _208 + ceil32(return_data.size) + 81 len s] = call.data[calldata.size len s]
        t = s
        idx = hash
        while idx:
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if not t:
                revert with 'NH{q', 17
            if t - 1 >= mem[_194 + _208 + ceil32(return_data.size) + 49]:
                revert with 'NH{q', 50
            mem[t + _194 + _208 + ceil32(return_data.size) + 80 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _766 = mem[64]
        mem[mem[64]] = 32
        _782 = mem[_194 + _208 + ceil32(return_data.size) + 49]
        mem[mem[64] + 32] = mem[_194 + _208 + ceil32(return_data.size) + 49]
        mem[mem[64] + 64 len ceil32(_782)] = mem[_194 + _208 + ceil32(return_data.size) + 81 len ceil32(_782)]
        if ceil32(_782) <= _782:
            return 32, mem[mem[64] + 32 len ceil32(_782) + 32]
        mem[mem[64] + _782 + 64] = 0
        return memory
          from mem[64]
           len _766 + ceil32(_782) + -mem[64] + 64
    _361 = mem[64]
    mem[mem[64]] = _194 + _208 + -mem[64] + 17
    mem[64] = _194 + _208 + 49
    _370 = mem[_361]
    mem[_194 + _208 + 49 len ceil32(mem[_361])] = mem[_361 + 32 len ceil32(mem[_361])]
    if ceil32(_370) <= _370:
        hash = sha256hash(mem[_194 + _208 + 49 len _370]) 
        mem[_194 + _208 + 49] = hash
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require hash == hash
        if not hash:
            return '0', 0
        s = 0
        idx = hash
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[_194 + _208 + ceil32(return_data.size) + 49] = s
        mem[64] = _194 + _208 + ceil32(return_data.size) + ceil32(s) + 81
        if not s:
            t = s
            idx = hash
            while idx:
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if not t:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_194 + _208 + ceil32(return_data.size) + 49]:
                    revert with 'NH{q', 50
                mem[t + _194 + _208 + ceil32(return_data.size) + 80 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _767 = mem[64]
            mem[mem[64]] = 32
            _783 = mem[_194 + _208 + ceil32(return_data.size) + 49]
            mem[mem[64] + 32] = mem[_194 + _208 + ceil32(return_data.size) + 49]
            mem[mem[64] + 64 len ceil32(_783)] = mem[_194 + _208 + ceil32(return_data.size) + 81 len ceil32(_783)]
            if ceil32(_783) <= _783:
                return 32, mem[mem[64] + 32 len ceil32(_783) + 32]
            mem[mem[64] + _783 + 64] = 0
            return memory
              from mem[64]
               len _767 + ceil32(_783) + -mem[64] + 64
        mem[_194 + _208 + ceil32(return_data.size) + 81 len s] = call.data[calldata.size len s]
        t = s
        idx = hash
        while idx:
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if not t:
                revert with 'NH{q', 17
            if t - 1 >= mem[_194 + _208 + ceil32(return_data.size) + 49]:
                revert with 'NH{q', 50
            mem[t + _194 + _208 + ceil32(return_data.size) + 80 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _768 = mem[64]
        mem[mem[64]] = 32
        _784 = mem[_194 + _208 + ceil32(return_data.size) + 49]
        mem[mem[64] + 32] = mem[_194 + _208 + ceil32(return_data.size) + 49]
        mem[mem[64] + 64 len ceil32(_784)] = mem[_194 + _208 + ceil32(return_data.size) + 81 len ceil32(_784)]
        if ceil32(_784) <= _784:
            return 32, mem[mem[64] + 32 len ceil32(_784) + 32]
        mem[mem[64] + _784 + 64] = 0
        return memory
          from mem[64]
           len _768 + ceil32(_784) + -mem[64] + 64
    mem[_194 + _208 + _370 + 49] = 0
    hash = sha256hash(mem[_194 + _208 + 49 len _370]) 
    mem[_194 + _208 + 49] = hash
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require hash == hash
    if not hash:
        return '0', 0
    s = 0
    idx = hash
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[_194 + _208 + ceil32(return_data.size) + 49] = s
    mem[64] = _194 + _208 + ceil32(return_data.size) + ceil32(s) + 81
    if not s:
        t = s
        idx = hash
        while idx:
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if not t:
                revert with 'NH{q', 17
            if t - 1 >= mem[_194 + _208 + ceil32(return_data.size) + 49]:
                revert with 'NH{q', 50
            mem[t + _194 + _208 + ceil32(return_data.size) + 80 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _769 = mem[64]
        mem[mem[64]] = 32
        _785 = mem[_194 + _208 + ceil32(return_data.size) + 49]
        mem[mem[64] + 32] = mem[_194 + _208 + ceil32(return_data.size) + 49]
        mem[mem[64] + 64 len ceil32(_785)] = mem[_194 + _208 + ceil32(return_data.size) + 81 len ceil32(_785)]
        if ceil32(_785) <= _785:
            return 32, mem[mem[64] + 32 len ceil32(_785) + 32]
        mem[mem[64] + _785 + 64] = 0
        return memory
          from mem[64]
           len _769 + ceil32(_785) + -mem[64] + 64
    mem[_194 + _208 + ceil32(return_data.size) + 81 len s] = call.data[calldata.size len s]
    t = s
    idx = hash
    while idx:
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if not t:
            revert with 'NH{q', 17
        if t - 1 >= mem[_194 + _208 + ceil32(return_data.size) + 49]:
            revert with 'NH{q', 50
        mem[t + _194 + _208 + ceil32(return_data.size) + 80 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _770 = mem[64]
    mem[mem[64]] = 32
    _786 = mem[_194 + _208 + ceil32(return_data.size) + 49]
    mem[mem[64] + 32] = mem[_194 + _208 + ceil32(return_data.size) + 49]
    mem[mem[64] + 64 len ceil32(_786)] = mem[_194 + _208 + ceil32(return_data.size) + 81 len ceil32(_786)]
    if ceil32(_786) <= _786:
        return 32, mem[mem[64] + 32 len ceil32(_786) + 32]
    mem[mem[64] + _786 + 64] = 0
    return memory
      from mem[64]
       len _770 + ceil32(_786) + -mem[64] + 64
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 > 0
    if arg1 <= 1:
        if msg.sender == owner:
            idx = 1
            while idx <= arg1:
                if tokenByIndex.length > -idx - 1:
                    revert with 'NH{q', 17
                _919 = mem[64]
                mem[64] = mem[64] + 32
                mem[_919] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor8.length + idx]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor8.length + idx] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                    stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = tokenByIndex.length + idx
                    mem[32] = 2
                    ownerOf[stor8.length + idx] = msg.sender
                    emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                    if ext_code.size(msg.sender) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + idx
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_919 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + idx, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _1859 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1859] == Mask(32, 224, mem[_1859])
                        if Mask(32, 224, mem[_1859]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[stor8.length + idx] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                    stor9[stor8.length + idx] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = tokenByIndex.length + idx
                    mem[32] = 2
                    ownerOf[stor8.length + idx] = msg.sender
                    emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                    if ext_code.size(msg.sender) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + idx
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_919 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + idx, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _1860 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1860] == Mask(32, 224, mem[_1860])
                        if Mask(32, 224, mem[_1860]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if bool(stor17[address(msg.sender)]) == 1:
                mem[0] = msg.sender
                mem[32] = 17
                if bool(stor17[address(msg.sender)]) != 1:
                    idx = 1
                    while idx <= arg1:
                        if tokenByIndex.length > -idx - 1:
                            revert with 'NH{q', 17
                        _920 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_920] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor8.length + idx]:
                            revert with 0, 'ERC721: token already minted'
                        stor9[stor8.length + idx] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                            stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_920 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1861 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1861] == Mask(32, 224, mem[_1861])
                                if Mask(32, 224, mem[_1861]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor9[stor8.length + idx] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                            stor9[stor8.length + idx] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_920 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1862 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1862] == Mask(32, 224, mem[_1862])
                                if Mask(32, 224, mem[_1862]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    if presalePaused:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract early adopter event is paused.'
                    if presaleCost and arg1 > -1 / presaleCost:
                        revert with 'NH{q', 17
                    if msg.value < presaleCost * arg1:
                        revert with 0, 'Insufficient funds.'
                    mem[0] = msg.sender
                    mem[32] = 17
                    stor17[address(msg.sender)] = 0
                    idx = 1
                    while idx <= arg1:
                        if tokenByIndex.length > -idx - 1:
                            revert with 'NH{q', 17
                        _921 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_921] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor8.length + idx]:
                            revert with 0, 'ERC721: token already minted'
                        stor9[stor8.length + idx] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                            stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_921 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1863 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1863] == Mask(32, 224, mem[_1863])
                                if Mask(32, 224, mem[_1863]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor9[stor8.length + idx] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                            stor9[stor8.length + idx] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_921 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1864 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1864] == Mask(32, 224, mem[_1864])
                                if Mask(32, 224, mem[_1864]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
            else:
                if paused:
                    revert with 0, 'Contract is paused.'
                if cost and arg1 > -1 / cost:
                    revert with 'NH{q', 17
                if msg.value < cost * arg1:
                    revert with 0, 'Insufficient funds.'
                mem[0] = msg.sender
                mem[32] = 17
                if bool(stor17[address(msg.sender)]) != 1:
                    idx = 1
                    while idx <= arg1:
                        if tokenByIndex.length > -idx - 1:
                            revert with 'NH{q', 17
                        _922 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_922] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor8.length + idx]:
                            revert with 0, 'ERC721: token already minted'
                        stor9[stor8.length + idx] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                            stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_922 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1865 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1865] == Mask(32, 224, mem[_1865])
                                if Mask(32, 224, mem[_1865]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor9[stor8.length + idx] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                            stor9[stor8.length + idx] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_922 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1866 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1866] == Mask(32, 224, mem[_1866])
                                if Mask(32, 224, mem[_1866]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    if presalePaused:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract early adopter event is paused.'
                    if presaleCost and arg1 > -1 / presaleCost:
                        revert with 'NH{q', 17
                    if msg.value < presaleCost * arg1:
                        revert with 0, 'Insufficient funds.'
                    mem[0] = msg.sender
                    mem[32] = 17
                    stor17[address(msg.sender)] = 0
                    idx = 1
                    while idx <= arg1:
                        if tokenByIndex.length > -idx - 1:
                            revert with 'NH{q', 17
                        _923 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_923] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor8.length + idx]:
                            revert with 0, 'ERC721: token already minted'
                        stor9[stor8.length + idx] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                            stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_923 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1867 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1867] == Mask(32, 224, mem[_1867])
                                if Mask(32, 224, mem[_1867]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor9[stor8.length + idx] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                            stor9[stor8.length + idx] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_923 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1868 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1868] == Mask(32, 224, mem[_1868])
                                if Mask(32, 224, mem[_1868]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
    else:
        if arg1 % 5:
            revert with 0, 'Can only mint 1, 5 or 10'
        if arg1 > 10:
            revert with 0, 'Can only mint 10 max.'
        if tokenByIndex.length > -arg1 - 1:
            revert with 'NH{q', 17
        require tokenByIndex.length + arg1 <= maxSupply
        if msg.sender == owner:
            idx = 1
            while idx <= arg1:
                if tokenByIndex.length > -idx - 1:
                    revert with 'NH{q', 17
                _924 = mem[64]
                mem[64] = mem[64] + 32
                mem[_924] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor8.length + idx]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor8.length + idx] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                    stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = tokenByIndex.length + idx
                    mem[32] = 2
                    ownerOf[stor8.length + idx] = msg.sender
                    emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                    if ext_code.size(msg.sender) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + idx
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_924 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + idx, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _1869 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1869] == Mask(32, 224, mem[_1869])
                        if Mask(32, 224, mem[_1869]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[stor8.length + idx] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                    stor9[stor8.length + idx] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = tokenByIndex.length + idx
                    mem[32] = 2
                    ownerOf[stor8.length + idx] = msg.sender
                    emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                    if ext_code.size(msg.sender) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + idx
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_924 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + idx, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _1870 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1870] == Mask(32, 224, mem[_1870])
                        if Mask(32, 224, mem[_1870]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if bool(stor17[address(msg.sender)]) == 1:
                mem[0] = msg.sender
                mem[32] = 17
                if bool(stor17[address(msg.sender)]) != 1:
                    idx = 1
                    while idx <= arg1:
                        if tokenByIndex.length > -idx - 1:
                            revert with 'NH{q', 17
                        _925 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_925] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor8.length + idx]:
                            revert with 0, 'ERC721: token already minted'
                        stor9[stor8.length + idx] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                            stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_925 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1871 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1871] == Mask(32, 224, mem[_1871])
                                if Mask(32, 224, mem[_1871]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor9[stor8.length + idx] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                            stor9[stor8.length + idx] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_925 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1872 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1872] == Mask(32, 224, mem[_1872])
                                if Mask(32, 224, mem[_1872]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    if presalePaused:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract early adopter event is paused.'
                    if presaleCost and arg1 > -1 / presaleCost:
                        revert with 'NH{q', 17
                    if msg.value < presaleCost * arg1:
                        revert with 0, 'Insufficient funds.'
                    mem[0] = msg.sender
                    mem[32] = 17
                    stor17[address(msg.sender)] = 0
                    idx = 1
                    while idx <= arg1:
                        if tokenByIndex.length > -idx - 1:
                            revert with 'NH{q', 17
                        _926 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_926] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor8.length + idx]:
                            revert with 0, 'ERC721: token already minted'
                        stor9[stor8.length + idx] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                            stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_926 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1873 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1873] == Mask(32, 224, mem[_1873])
                                if Mask(32, 224, mem[_1873]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor9[stor8.length + idx] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                            stor9[stor8.length + idx] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_926 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1874 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1874] == Mask(32, 224, mem[_1874])
                                if Mask(32, 224, mem[_1874]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
            else:
                if paused:
                    revert with 0, 'Contract is paused.'
                if cost and arg1 > -1 / cost:
                    revert with 'NH{q', 17
                if msg.value < cost * arg1:
                    revert with 0, 'Insufficient funds.'
                mem[0] = msg.sender
                mem[32] = 17
                if bool(stor17[address(msg.sender)]) != 1:
                    idx = 1
                    while idx <= arg1:
                        if tokenByIndex.length > -idx - 1:
                            revert with 'NH{q', 17
                        _927 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_927] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor8.length + idx]:
                            revert with 0, 'ERC721: token already minted'
                        stor9[stor8.length + idx] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                            stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_927 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1875 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1875] == Mask(32, 224, mem[_1875])
                                if Mask(32, 224, mem[_1875]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor9[stor8.length + idx] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                            stor9[stor8.length + idx] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_927 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1876 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1876] == Mask(32, 224, mem[_1876])
                                if Mask(32, 224, mem[_1876]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    if presalePaused:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract early adopter event is paused.'
                    if presaleCost and arg1 > -1 / presaleCost:
                        revert with 'NH{q', 17
                    if msg.value < presaleCost * arg1:
                        revert with 0, 'Insufficient funds.'
                    mem[0] = msg.sender
                    mem[32] = 17
                    stor17[address(msg.sender)] = 0
                    idx = 1
                    while idx <= arg1:
                        if tokenByIndex.length > -idx - 1:
                            revert with 'NH{q', 17
                        _928 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_928] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor8.length + idx]:
                            revert with 0, 'ERC721: token already minted'
                        stor9[stor8.length + idx] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + idx
                            stor7[stor8.length + idx] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_928 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1877 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1877] == Mask(32, 224, mem[_1877])
                                if Mask(32, 224, mem[_1877]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor9[stor8.length + idx] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
                            stor9[stor8.length + idx] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = tokenByIndex.length + idx
                            mem[32] = 2
                            ownerOf[stor8.length + idx] = msg.sender
                            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                            if ext_code.size(msg.sender) > 0:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = tokenByIndex.length + idx
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_928 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not mem[96]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1878 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1878] == Mask(32, 224, mem[_1878])
                                if Mask(32, 224, mem[_1878]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
}



}
