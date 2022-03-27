contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - sub_c38b972f(?)
#
array of struct stor0;
array of struct stor1;
mapping of address tokenOwner;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
mapping of struct stor10;
address owner;
uint256 stor13;
uint256 cap;
array of uint256 stor15;
mapping of struct stor16;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not tokenOwner[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
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

function cap() {
    return cap
}

function getTotalNumberOfTokensOwnedByAnAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not tokenOwner[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return tokenOwner[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function getTokenOwner(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not tokenOwner[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return tokenOwner[arg1]
}

function getNumberOfTokensMinted() {
    return tokenByIndex.length
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

function getTokenExists(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return not not tokenOwner[arg1]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function changeCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cap = arg1
}

function changePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = arg1
}

function withdrawFunds() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
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
    if not tokenOwner[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == tokenOwner[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if tokenOwner[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not tokenOwner[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(tokenOwner[arg2], arg1, arg2);
}

function changeIPFS(string arg1) {
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
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while stor15.length.field_1 + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while stor15.length.field_1 + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function getCell(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor16[arg1].field_256:
        if stor16[arg1].field_256 == stor16[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor16[arg1].field_256:
            if stor16[arg1].field_256 == stor16[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor16[arg1].field_257:
                if 31 >= stor16[arg1].field_257:
                    mem[128] = 256 * stor16[arg1].field_264
                else:
                    mem[128] = stor16[arg1][1].field_0
                    idx = 128
                    s = 0
                    while stor16[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor16[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor16[arg1].field_256 == stor16[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor16[arg1].field_257:
                if 31 >= stor16[arg1].field_257:
                    mem[128] = 256 * stor16[arg1].field_264
                else:
                    mem[128] = stor16[arg1][1].field_0
                    idx = 128
                    s = 0
                    while stor16[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor16[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor16[arg1].field_512, 
               Array(len=2 * Mask(256, -1, stor16[arg1].field_257), data=mem[128 len ceil32(stor16[arg1].field_257)])
    if stor16[arg1].field_256 == stor16[arg1].field_257 < 32:
        revert with 'NH{q', 34
    if stor16[arg1].field_256:
        if stor16[arg1].field_256 == stor16[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor16[arg1].field_257:
            if 31 >= stor16[arg1].field_257:
                mem[128] = 256 * stor16[arg1].field_264
            else:
                mem[128] = stor16[arg1][1].field_0
                idx = 128
                s = 0
                while stor16[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor16[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor16[arg1].field_256 == stor16[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor16[arg1].field_257:
            if 31 >= stor16[arg1].field_257:
                mem[128] = 256 * stor16[arg1].field_264
            else:
                mem[128] = stor16[arg1][1].field_0
                idx = 128
                s = 0
                while stor16[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor16[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor16[arg1].field_512, Array(len=stor16[arg1].field_256, data=mem[128 len ceil32(stor16[arg1].field_257)])
}

function sub_c2ee45d1(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor16[arg1].field_256:
        if stor16[arg1].field_256 == stor16[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor16[arg1].field_256:
            if stor16[arg1].field_256 == stor16[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor16[arg1].field_257:
                if 31 >= stor16[arg1].field_257:
                    mem[128] = 256 * stor16[arg1].field_264
                else:
                    mem[128] = stor16[arg1][1].field_0
                    idx = 128
                    s = 0
                    while stor16[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor16[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor16[arg1].field_256 == stor16[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor16[arg1].field_257:
                if 31 >= stor16[arg1].field_257:
                    mem[128] = 256 * stor16[arg1].field_264
                else:
                    mem[128] = stor16[arg1][1].field_0
                    idx = 128
                    s = 0
                    while stor16[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor16[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor16[arg1].field_0, 
               Array(len=2 * Mask(256, -1, stor16[arg1].field_257), data=mem[128 len ceil32(stor16[arg1].field_257)]),
               stor16[arg1].field_512
    if stor16[arg1].field_256 == stor16[arg1].field_257 < 32:
        revert with 'NH{q', 34
    if stor16[arg1].field_256:
        if stor16[arg1].field_256 == stor16[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor16[arg1].field_257:
            if 31 >= stor16[arg1].field_257:
                mem[128] = 256 * stor16[arg1].field_264
            else:
                mem[128] = stor16[arg1][1].field_0
                idx = 128
                s = 0
                while stor16[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor16[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor16[arg1].field_256 == stor16[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor16[arg1].field_257:
            if 31 >= stor16[arg1].field_257:
                mem[128] = 256 * stor16[arg1].field_264
            else:
                mem[128] = stor16[arg1][1].field_0
                idx = 128
                s = 0
                while stor16[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor16[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor16[arg1].field_0, 
           Array(len=stor16[arg1].field_256, data=mem[128 len ceil32(stor16[arg1].field_257)]),
           stor16[arg1].field_512
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not tokenOwner[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not tokenOwner[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if tokenOwner[arg3] != msg.sender:
        if not tokenOwner[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not tokenOwner[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if tokenOwner[arg3] != arg1:
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
    if not tokenOwner[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(tokenOwner[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    tokenOwner[arg3] = arg2
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
    if not tokenOwner[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not tokenOwner[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if tokenOwner[arg3] != msg.sender:
        if not tokenOwner[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not tokenOwner[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if tokenOwner[arg3] != arg1:
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
    if not tokenOwner[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(tokenOwner[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    tokenOwner[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not tokenOwner[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_0:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_1:
                if 31 < stor10[arg1].field_1:
                    mem[128] = stor10[arg1].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[128 len ceil32(stor10[arg1].field_1)])
                mem[128] = 256 * stor10[arg1].field_8
        else:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_1:
                if 31 < stor10[arg1].field_1:
                    mem[128] = stor10[arg1].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[128 len ceil32(stor10[arg1].field_1)])
                mem[128] = 256 * stor10[arg1].field_8
        mem[ceil32(stor10[arg1].field_1) + 224 len ceil32(stor10[arg1].field_1)] = mem[128 len ceil32(stor10[arg1].field_1)]
        if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
            mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 224] = 0
        return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[128 len ceil32(stor10[arg1].field_1)], mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len 2 * ceil32(stor10[arg1].field_1)]), 
    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_1:
            if 31 < stor10[arg1].field_1:
                mem[128] = stor10[arg1].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10[arg1].field_0, data=mem[128 len ceil32(stor10[arg1].field_1)])
            mem[128] = 256 * stor10[arg1].field_8
    else:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_1:
            if 31 < stor10[arg1].field_1:
                mem[128] = stor10[arg1].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10[arg1].field_0, data=mem[128 len ceil32(stor10[arg1].field_1)])
            mem[128] = 256 * stor10[arg1].field_8
    mem[ceil32(stor10[arg1].field_1) + 224 len ceil32(stor10[arg1].field_1)] = mem[128 len ceil32(stor10[arg1].field_1)]
    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
        mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 224] = 0
    return Array(len=stor10[arg1].field_0, data=mem[128 len ceil32(stor10[arg1].field_1)], mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len 2 * ceil32(stor10[arg1].field_1)]), 
}

function getTokenMetaData(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not tokenOwner[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_0:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_1:
                if 31 < stor10[arg1].field_1:
                    mem[128] = stor10[arg1].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[128 len ceil32(stor10[arg1].field_1)])
                mem[128] = 256 * stor10[arg1].field_8
        else:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_1:
                if 31 < stor10[arg1].field_1:
                    mem[128] = stor10[arg1].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[128 len ceil32(stor10[arg1].field_1)])
                mem[128] = 256 * stor10[arg1].field_8
        mem[ceil32(stor10[arg1].field_1) + 224 len ceil32(stor10[arg1].field_1)] = mem[128 len ceil32(stor10[arg1].field_1)]
        if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
            mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 224] = 0
        return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[128 len ceil32(stor10[arg1].field_1)], mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len 2 * ceil32(stor10[arg1].field_1)]), 
    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_1:
            if 31 < stor10[arg1].field_1:
                mem[128] = stor10[arg1].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10[arg1].field_0, data=mem[128 len ceil32(stor10[arg1].field_1)])
            mem[128] = 256 * stor10[arg1].field_8
    else:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_1:
            if 31 < stor10[arg1].field_1:
                mem[128] = stor10[arg1].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10[arg1].field_0, data=mem[128 len ceil32(stor10[arg1].field_1)])
            mem[128] = 256 * stor10[arg1].field_8
    mem[ceil32(stor10[arg1].field_1) + 224 len ceil32(stor10[arg1].field_1)] = mem[128 len ceil32(stor10[arg1].field_1)]
    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
        mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 224] = 0
    return Array(len=stor10[arg1].field_0, data=mem[128 len ceil32(stor10[arg1].field_1)], mem[(2 * ceil32(stor10[arg1].field_1)) + 224 len 2 * ceil32(stor10[arg1].field_1)]), 
}



}
