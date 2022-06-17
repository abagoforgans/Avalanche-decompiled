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
array of struct stor11;
uint256 cost;
uint256 sub_1228a25f;
uint256 presaleCost;
uint8 paused; offset 16
uint8 presalePaused; offset 24
uint16 maxSupply;
address stor15; offset 32
uint256 stor15; offset 24
uint256 stor15; offset 16
mapping of uint8 stor16;
mapping of uint8 stor17;
array of uint256 stor18;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_1228a25f(?) {
    return sub_1228a25f
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

function setPresaleCost(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    presaleCost = arg1
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
        call arg2.0x150b7a02 with:
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

function base() {
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
        call arg2.0x150b7a02 with:
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
    require arg1 > 0
    if arg1 <= 1:
        if msg.sender == owner:
            idx = 1
            while idx <= arg1:
                if tokenByIndex.length > -idx - 1:
                    revert with 'NH{q', 17
                _1655 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1655] = 0
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
                            mem[mem[64] + s + 164] = mem[_1655 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
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
                        _3347 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3347] == Mask(32, 224, mem[_3347])
                        if Mask(32, 224, mem[_3347]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                            mem[mem[64] + s + 164] = mem[_1655 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
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
                        _3348 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3348] == Mask(32, 224, mem[_3348])
                        if Mask(32, 224, mem[_3348]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                        _1656 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1656] = 0
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
                                    mem[mem[64] + s + 164] = mem[_1656 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
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
                                _3349 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3349] == Mask(32, 224, mem[_3349])
                                if Mask(32, 224, mem[_3349]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                    mem[mem[64] + s + 164] = mem[_1656 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
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
                                _3350 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3350] == Mask(32, 224, mem[_3350])
                                if Mask(32, 224, mem[_3350]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                        _1657 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1657] = 0
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
                                    mem[mem[64] + s + 164] = mem[_1657 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
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
                                _3351 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3351] == Mask(32, 224, mem[_3351])
                                if Mask(32, 224, mem[_3351]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                    mem[mem[64] + s + 164] = mem[_1657 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
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
                                _3352 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3352] == Mask(32, 224, mem[_3352])
                                if Mask(32, 224, mem[_3352]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
            else:
                if paused:
                    revert with 0, 'Contract is paused.'
                if tokenByIndex.length > 2000:
                    if sub_1228a25f and arg1 > -1 / sub_1228a25f:
                        revert with 'NH{q', 17
                    if msg.value < sub_1228a25f * arg1:
                        revert with 0, 'Insufficient funds.'
                    mem[0] = msg.sender
                    mem[32] = 17
                    if bool(stor17[address(msg.sender)]) != 1:
                        idx = 1
                        while idx <= arg1:
                            if tokenByIndex.length > -idx - 1:
                                revert with 'NH{q', 17
                            _1658 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1658] = 0
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
                                        mem[mem[64] + s + 164] = mem[_1658 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.0x150b7a02 with:
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
                                    _3353 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3353] == Mask(32, 224, mem[_3353])
                                    if Mask(32, 224, mem[_3353]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                        mem[mem[64] + s + 164] = mem[_1658 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.0x150b7a02 with:
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
                                    _3354 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3354] == Mask(32, 224, mem[_3354])
                                    if Mask(32, 224, mem[_3354]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                            _1659 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1659] = 0
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
                                        mem[mem[64] + s + 164] = mem[_1659 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.0x150b7a02 with:
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
                                    _3355 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3355] == Mask(32, 224, mem[_3355])
                                    if Mask(32, 224, mem[_3355]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                        mem[mem[64] + s + 164] = mem[_1659 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.0x150b7a02 with:
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
                                    _3356 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3356] == Mask(32, 224, mem[_3356])
                                    if Mask(32, 224, mem[_3356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                else:
                    if cost and arg1 > -1 / cost:
                        revert with 'NH{q', 17
                    if msg.value < cost * arg1:
                        revert with 0, 'Insufficient funds.'
                    if tokenByIndex.length <= 2000:
                        mem[0] = msg.sender
                        mem[32] = 17
                        if bool(stor17[address(msg.sender)]) != 1:
                            idx = 1
                            while idx <= arg1:
                                if tokenByIndex.length > -idx - 1:
                                    revert with 'NH{q', 17
                                _1660 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1660] = 0
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
                                            mem[mem[64] + s + 164] = mem[_1660 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.0x150b7a02 with:
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
                                        _3357 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3357] == Mask(32, 224, mem[_3357])
                                        if Mask(32, 224, mem[_3357]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                            mem[mem[64] + s + 164] = mem[_1660 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.0x150b7a02 with:
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
                                        _3358 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3358] == Mask(32, 224, mem[_3358])
                                        if Mask(32, 224, mem[_3358]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                _1661 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1661] = 0
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
                                            mem[mem[64] + s + 164] = mem[_1661 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.0x150b7a02 with:
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
                                        _3359 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3359] == Mask(32, 224, mem[_3359])
                                        if Mask(32, 224, mem[_3359]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                            mem[mem[64] + s + 164] = mem[_1661 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.0x150b7a02 with:
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
                                        _3360 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3360] == Mask(32, 224, mem[_3360])
                                        if Mask(32, 224, mem[_3360]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                    else:
                        if sub_1228a25f and arg1 > -1 / sub_1228a25f:
                            revert with 'NH{q', 17
                        if msg.value < sub_1228a25f * arg1:
                            revert with 0, 'Insufficient funds.'
                        mem[0] = msg.sender
                        mem[32] = 17
                        if bool(stor17[address(msg.sender)]) != 1:
                            idx = 1
                            while idx <= arg1:
                                if tokenByIndex.length > -idx - 1:
                                    revert with 'NH{q', 17
                                _1662 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1662] = 0
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
                                            mem[mem[64] + s + 164] = mem[_1662 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.0x150b7a02 with:
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
                                        _3361 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3361] == Mask(32, 224, mem[_3361])
                                        if Mask(32, 224, mem[_3361]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                            mem[mem[64] + s + 164] = mem[_1662 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.0x150b7a02 with:
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
                                        _3362 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3362] == Mask(32, 224, mem[_3362])
                                        if Mask(32, 224, mem[_3362]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                _1663 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1663] = 0
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
                                            mem[mem[64] + s + 164] = mem[_1663 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.0x150b7a02 with:
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
                                        _3363 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3363] == Mask(32, 224, mem[_3363])
                                        if Mask(32, 224, mem[_3363]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                            mem[mem[64] + s + 164] = mem[_1663 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.0x150b7a02 with:
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
                                        _3364 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3364] == Mask(32, 224, mem[_3364])
                                        if Mask(32, 224, mem[_3364]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                _1664 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1664] = 0
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
                            mem[mem[64] + s + 164] = mem[_1664 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
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
                        _3365 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3365] == Mask(32, 224, mem[_3365])
                        if Mask(32, 224, mem[_3365]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                            mem[mem[64] + s + 164] = mem[_1664 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
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
                        _3366 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3366] == Mask(32, 224, mem[_3366])
                        if Mask(32, 224, mem[_3366]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                        _1665 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1665] = 0
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
                                    mem[mem[64] + s + 164] = mem[_1665 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
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
                                _3367 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3367] == Mask(32, 224, mem[_3367])
                                if Mask(32, 224, mem[_3367]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                    mem[mem[64] + s + 164] = mem[_1665 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
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
                                _3368 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3368] == Mask(32, 224, mem[_3368])
                                if Mask(32, 224, mem[_3368]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                        _1666 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1666] = 0
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
                                    mem[mem[64] + s + 164] = mem[_1666 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
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
                                _3369 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3369] == Mask(32, 224, mem[_3369])
                                if Mask(32, 224, mem[_3369]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                    mem[mem[64] + s + 164] = mem[_1666 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
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
                                _3370 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3370] == Mask(32, 224, mem[_3370])
                                if Mask(32, 224, mem[_3370]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
            else:
                if paused:
                    revert with 0, 'Contract is paused.'
                if tokenByIndex.length > 2000:
                    if sub_1228a25f and arg1 > -1 / sub_1228a25f:
                        revert with 'NH{q', 17
                    if msg.value < sub_1228a25f * arg1:
                        revert with 0, 'Insufficient funds.'
                    mem[0] = msg.sender
                    mem[32] = 17
                    if bool(stor17[address(msg.sender)]) != 1:
                        idx = 1
                        while idx <= arg1:
                            if tokenByIndex.length > -idx - 1:
                                revert with 'NH{q', 17
                            _1667 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1667] = 0
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
                                        mem[mem[64] + s + 164] = mem[_1667 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.0x150b7a02 with:
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
                                    _3371 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3371] == Mask(32, 224, mem[_3371])
                                    if Mask(32, 224, mem[_3371]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                        mem[mem[64] + s + 164] = mem[_1667 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.0x150b7a02 with:
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
                                    _3372 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3372] == Mask(32, 224, mem[_3372])
                                    if Mask(32, 224, mem[_3372]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                            _1668 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1668] = 0
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
                                        mem[mem[64] + s + 164] = mem[_1668 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.0x150b7a02 with:
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
                                    _3373 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3373] == Mask(32, 224, mem[_3373])
                                    if Mask(32, 224, mem[_3373]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                        mem[mem[64] + s + 164] = mem[_1668 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.0x150b7a02 with:
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
                                    _3374 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3374] == Mask(32, 224, mem[_3374])
                                    if Mask(32, 224, mem[_3374]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                else:
                    if cost and arg1 > -1 / cost:
                        revert with 'NH{q', 17
                    if msg.value < cost * arg1:
                        revert with 0, 'Insufficient funds.'
                    if tokenByIndex.length <= 2000:
                        mem[0] = msg.sender
                        mem[32] = 17
                        if bool(stor17[address(msg.sender)]) != 1:
                            idx = 1
                            while idx <= arg1:
                                if tokenByIndex.length > -idx - 1:
                                    revert with 'NH{q', 17
                                _1669 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1669] = 0
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
                                            mem[mem[64] + s + 164] = mem[_1669 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.0x150b7a02 with:
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
                                        _3375 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3375] == Mask(32, 224, mem[_3375])
                                        if Mask(32, 224, mem[_3375]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                            mem[mem[64] + s + 164] = mem[_1669 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.0x150b7a02 with:
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
                                        _3376 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3376] == Mask(32, 224, mem[_3376])
                                        if Mask(32, 224, mem[_3376]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                _1670 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1670] = 0
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
                                            mem[mem[64] + s + 164] = mem[_1670 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.0x150b7a02 with:
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
                                        _3377 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3377] == Mask(32, 224, mem[_3377])
                                        if Mask(32, 224, mem[_3377]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                            mem[mem[64] + s + 164] = mem[_1670 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.0x150b7a02 with:
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
                                        _3378 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3378] == Mask(32, 224, mem[_3378])
                                        if Mask(32, 224, mem[_3378]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                    else:
                        if sub_1228a25f and arg1 > -1 / sub_1228a25f:
                            revert with 'NH{q', 17
                        if msg.value < sub_1228a25f * arg1:
                            revert with 0, 'Insufficient funds.'
                        mem[0] = msg.sender
                        mem[32] = 17
                        if bool(stor17[address(msg.sender)]) != 1:
                            idx = 1
                            while idx <= arg1:
                                if tokenByIndex.length > -idx - 1:
                                    revert with 'NH{q', 17
                                _1671 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1671] = 0
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
                                            mem[mem[64] + s + 164] = mem[_1671 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.0x150b7a02 with:
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
                                        _3379 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3379] == Mask(32, 224, mem[_3379])
                                        if Mask(32, 224, mem[_3379]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                            mem[mem[64] + s + 164] = mem[_1671 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.0x150b7a02 with:
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
                                        _3380 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3380] == Mask(32, 224, mem[_3380])
                                        if Mask(32, 224, mem[_3380]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                _1672 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1672] = 0
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
                                            mem[mem[64] + s + 164] = mem[_1672 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.0x150b7a02 with:
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
                                        _3381 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3381] == Mask(32, 224, mem[_3381])
                                        if Mask(32, 224, mem[_3381]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                            mem[mem[64] + s + 164] = mem[_1672 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(msg.sender)
                                        call msg.sender.0x150b7a02 with:
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
                                        _3382 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3382] == Mask(32, 224, mem[_3382])
                                        if Mask(32, 224, mem[_3382]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
}



}
