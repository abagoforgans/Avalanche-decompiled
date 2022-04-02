contract main {




// =====================  Runtime code  =====================


#
#  - setEstate(string arg1, string arg2, string arg3, uint8 arg4, uint8 arg5, uint8 arg6, uint8 arg7, uint8 arg8)
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
uint8 stor12;
array of uint256 stor13;
uint8 stor14;
uint8 stor14; offset 8
uint8 stor14; offset 16
uint8 stor14; offset 24
uint8 stor14; offset 32
mapping of struct stor15;
uint8 stor16;
mapping of uint8 stor18;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not address(ownerOf[arg1]):
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

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return address(ownerOf[arg1])
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
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setFee(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16 = arg1
}

function setStatus(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = uint8(arg1)
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'basic.withdraw'
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

function removeMarket(uint8 arg1, uint8 arg2, uint8 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not address(ownerOf[stor15[arg1][arg2][arg3].field_0]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[stor15[arg1][arg2][arg3].field_0]) != msg.sender:
        revert with 0, 'market.owner'
    stor15[arg1][arg2][arg3].field_256 = 0
    stor15[arg1][arg2][arg3].field_768 = 0
    emit RemoveMarket(stor15[arg1][arg2][arg3].field_0);
}

function setMarket(uint8 arg1, uint8 arg2, uint8 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not address(ownerOf[stor15[arg1][arg2][arg3].field_0]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[stor15[arg1][arg2][arg3].field_0]) != msg.sender:
        revert with 0, 'market.owner'
    stor15[arg1][arg2][arg3].field_256 = arg4
    stor15[arg1][arg2][arg3].field_768 = 1
    emit SetMarket(stor15[arg1][arg2][arg3].field_0, arg4);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function getPrice() {
    if stor13.length < 1:
        revert with 0, 17
    if uint8(stor14.field_24) and uint8(stor14.field_32) > -1 / uint8(stor14.field_24):
        revert with 0, 17
    if not uint8(stor14.field_24) * uint8(stor14.field_32):
        revert with 0, 18
    if uint8(stor14.field_16) and uint8(stor14.field_24) * uint8(stor14.field_32) > -1 / uint8(stor14.field_16):
        revert with 0, 17
    if tokenByIndex.length < uint8(stor14.field_16) * uint8(stor14.field_24) * uint8(stor14.field_32):
        if tokenByIndex.length / uint8(stor14.field_24) * uint8(stor14.field_32) >= stor13.length:
            revert with 0, 50
        return stor13[stor8.length / uint8(stor14.field_24) * uint8(stor14.field_32)]
    if stor13.length - 1 >= stor13.length:
        revert with 0, 50
    return stor13[stor13.length]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not address(ownerOf[arg2]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == address(ownerOf[arg2]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if address(ownerOf[arg2]) != msg.sender:
        if not stor5[address(stor2[arg2])][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not address(ownerOf[arg2]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(address(ownerOf[arg2]), arg1, arg2);
}

function setResource(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 0, 34
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
            revert with 0, 34
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

function setPrices(uint256[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if (32 * arg1.length) + 128 < 96 or (32 * arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor13.length > idx:
            stor13[idx] = 0
            idx = idx + 1
            continue 
    else:
        if 32 * arg1.length <= 0:
            idx = 0
            while stor13.length > idx:
                stor13[idx] = 0
                idx = idx + 1
                continue 
        else:
            stor13 = mem[128]
            s = 1
            idx = 160
            while (32 * arg1.length) + 128 > idx:
                stor13[s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = (Mask(251, 0, (32 * arg1.length) - 1) >> 5) + 1
            while stor13.length > idx:
                stor13[idx] = 0
                idx = idx + 1
                continue 
}

function removeEstate(uint8 arg1, uint8 arg2, uint8 arg3, uint8 arg4, uint8 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require calldata.size - 36 >= 64
    require arg2 == arg2
    mem[96] = arg2
    require arg3 == arg3
    mem[128] = arg3
    require calldata.size - 100 >= 64
    mem[64] = 224
    require arg4 == arg4
    mem[160] = arg4
    require arg5 == arg5
    mem[192] = arg5
    idx = mem[96]
    while uint8(idx) <= arg3:
        _38 = mem[192]
        s = mem[160]
        while uint8(s) <= uint8(_38):
            _39 = mem[64]
            mem[mem[64] + 32] = arg1 << 248
            mem[mem[64] + 33] = idx << 248
            mem[mem[64] + 34] = s << 248
            _40 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 35
            mem[0] = sha3(mem[_40 + 32 len mem[_40]])
            _43 = sha3(mem[0], 15)
            mem[0] = stor15[mem[0]].field_0
            if not address(ownerOf[mem[0]]):
                revert with 0, 'ERC721: owner query for nonexistent token'
            if address(ownerOf[mem[0]]) != msg.sender:
                revert with 0, 'estate.owner'
            mem[0] = uint256(ownerOf[_43])
            mem[32] = 18
            if 1 == bool(stor18[uint256(stor2[_43])]):
                mem[0] = uint256(ownerOf[_43])
                mem[32] = 18
                stor18[uint256(stor2[_43])] = 0
                mem[_39 + 35] = uint256(ownerOf[_43])
                emit RemoveEstate(uint256(ownerOf[_43]));
            if uint8(s) == 255:
                revert with 0, 17
            s = uint8(s) + 1
            continue 
        if uint8(idx) == 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not address(ownerOf[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not address(ownerOf[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[arg3]) != msg.sender:
        if not address(ownerOf[arg3]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[address(stor2[arg3])][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not address(ownerOf[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[arg3]) != arg1:
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
    if not address(ownerOf[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(address(ownerOf[arg3]), 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    address(ownerOf[arg3]) = arg2
    emit Transfer(arg1, arg2, arg3);
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if bool(stor0.length):
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
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
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
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
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
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if bool(stor1.length):
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
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
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
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[arg3]) != msg.sender:
        if not address(ownerOf[arg3]):
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[address(stor2[arg3])][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[arg3]) != arg1:
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
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(address(ownerOf[arg3]), 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    address(ownerOf[arg3]) = arg2
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[arg3]) != msg.sender:
        if not address(ownerOf[arg3]):
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[address(stor2[arg3])][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[arg3]) != arg1:
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
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(address(ownerOf[arg3]), 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    address(ownerOf[arg3]) = arg2
    emit Transfer(arg1, arg2, arg3);
    if not ext_code.size(arg2):
    require ext_code.size(arg2)
    call arg2 with:
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
    require not 0, ext_call.return_data[4 len 28]
    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function buyMarket(uint8 arg1, uint8 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not address(ownerOf[stor15[arg1][arg2][arg3].field_0]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    if bool(stor15[arg1][arg2][arg3].field_768) != 1:
        revert with 0, 'market.state'
    if msg.value < stor15[arg1][arg2][arg3].field_256:
        revert with 0, 'market.price'
    if msg.value / 100 and stor16 > -1 / msg.value / 100:
        revert with 0, 17
    if msg.value < msg.value / 100 * stor16:
        revert with 0, 17
    call owner with:
       value msg.value / 100 * stor16 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(ownerOf[stor15[arg1][arg2][arg3].field_0]) with:
       value msg.value - (msg.value / 100 * stor16) wei
         gas 2300 * is_zero(value) wei
    if not address(ownerOf[stor15[arg1][arg2][arg3].field_0]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    if not address(ownerOf[stor15[arg1][arg2][arg3].field_0]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[stor15[arg1][arg2][arg3].field_0]) != address(ownerOf[stor15[arg1][arg2][arg3].field_0]):
        revert with 0, 'ERC721: transfer of token that is not own'
    if not msg.sender:
        revert with 0, 'ERC721: transfer to the zero address'
    if not address(ownerOf[stor15[arg1][arg2][arg3].field_0]):
        stor9[stor15[arg1][arg2][arg3].field_0] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor15[arg1][arg2][arg3].field_0
    else:
        if address(ownerOf[stor15[arg1][arg2][arg3].field_0]) != msg.sender:
            if not address(ownerOf[stor15[arg1][arg2][arg3].field_0]):
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(stor2[stor15[arg1][arg2][arg3].field_0])] < 1:
                revert with 0, 17
            if balanceOf[address(stor2[stor15[arg1][arg2][arg3].field_0])] - 1 != stor7[stor15[arg1][arg2][arg3].field_0]:
                tokenOfOwnerByIndex[address(stor2[stor15[arg1][arg2][arg3].field_0])][stor7[stor15[arg1][arg2][arg3].field_0]] = tokenOfOwnerByIndex[address(stor2[stor15[arg1][arg2][arg3].field_0])][stor3[address(stor2[stor15[arg1][arg2][arg3].field_0])] - 1]
                stor7[stor6[address(stor2[stor15[arg1][arg2][arg3].field_0])][stor3[address(stor2[stor15[arg1][arg2][arg3].field_0])] - 1]] = stor7[stor15[arg1][arg2][arg3].field_0]
            stor7[stor15[arg1][arg2][arg3].field_0] = 0
            tokenOfOwnerByIndex[address(stor2[stor15[arg1][arg2][arg3].field_0])][stor3[address(stor2[stor15[arg1][arg2][arg3].field_0])] - 1] = 0
    if msg.sender:
        if address(ownerOf[stor15[arg1][arg2][arg3].field_0]) != msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor15[arg1][arg2][arg3].field_0
            stor7[stor15[arg1][arg2][arg3].field_0] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor15[arg1][arg2][arg3].field_0] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor15[arg1][arg2][arg3].field_0]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor15[arg1][arg2][arg3].field_0]
        stor9[stor15[arg1][arg2][arg3].field_0] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[stor15[arg1][arg2][arg3].field_0] = 0
    if not address(ownerOf[stor15[arg1][arg2][arg3].field_0]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(address(ownerOf[stor15[arg1][arg2][arg3].field_0]), 0, stor15[arg1][arg2][arg3].field_0);
    if balanceOf[address(stor2[stor15[arg1][arg2][arg3].field_0])] < 1:
        revert with 0, 17
    balanceOf[address(stor2[stor15[arg1][arg2][arg3].field_0])]--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    address(ownerOf[stor15[arg1][arg2][arg3].field_0]) = msg.sender
    emit Transfer(address(ownerOf[stor15[arg1][arg2][arg3].field_0]), msg.sender, stor15[arg1][arg2][arg3].field_0);
    stor15[arg1][arg2][arg3].field_256 = 0
    stor15[arg1][arg2][arg3].field_768 = 0
    emit RemoveMarket(stor15[arg1][arg2][arg3].field_0);
}

function sub_20de57ca(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == uint8(arg1)
    require calldata.size - 36 >= 64
    require arg2 == uint8(arg2)
    mem[96] = arg2
    require arg3 == uint8(arg3)
    mem[128] = arg3
    require calldata.size - 100 >= 64
    mem[64] = 224
    require arg4 == uint8(arg4)
    mem[160] = arg4
    require arg5 == uint8(arg5)
    mem[192] = arg5
    if uint8(arg3) < uint8(arg2):
        revert with 0, 17
    if 1 > !(uint8(arg3) - uint8(arg2)):
        revert with 0, 17
    if uint8(arg5) < uint8(arg4):
        revert with 0, 17
    if 1 > !(uint8(arg5) - uint8(arg4)):
        revert with 0, 17
    if bool(stor12) != 1:
        revert with 0, 'token.status'
    if uint8(arg3) + -uint8(arg2) + 1 and uint8(arg5) + -uint8(arg4) + 1 > -1 / uint8(arg3) + -uint8(arg2) + 1:
        revert with 0, 17
    if stor13.length < 1:
        revert with 0, 17
    if uint8(stor14.field_24) and uint8(stor14.field_32) > -1 / uint8(stor14.field_24):
        revert with 0, 17
    if not uint8(stor14.field_24) * uint8(stor14.field_32):
        revert with 0, 18
    if uint8(stor14.field_16) and uint8(stor14.field_24) * uint8(stor14.field_32) > -1 / uint8(stor14.field_16):
        revert with 0, 17
    if tokenByIndex.length < uint8(stor14.field_16) * uint8(stor14.field_24) * uint8(stor14.field_32):
        if tokenByIndex.length / uint8(stor14.field_24) * uint8(stor14.field_32) >= stor13.length:
            revert with 0, 50
        mem[0] = 13
        if stor13[stor8.length / uint8(stor14.field_24) * uint8(stor14.field_32)] and uint8(arg5) + -uint8(arg4) + uint8(arg3) + (uint8(arg5) * uint8(arg3)) + (-1 * uint8(arg4) * uint8(arg3)) + -uint8(arg2) + (-1 * uint8(arg5) * uint8(arg2)) + (uint8(arg4) * uint8(arg2)) + 1 > -1 / stor13[stor8.length / uint8(stor14.field_24) * uint8(stor14.field_32)]:
            revert with 0, 17
        if stor13[stor8.length / uint8(stor14.field_24) * uint8(stor14.field_32)] + (uint8(arg5) * stor13[stor8.length / uint8(stor14.field_24) * uint8(stor14.field_32)]) - (uint8(arg4) * stor13[stor8.length / uint8(stor14.field_24) * uint8(stor14.field_32)]) + (uint8(arg3) * stor13[stor8.length / uint8(stor14.field_24) * uint8(stor14.field_32)]) + (uint8(arg5) * uint8(arg3) * stor13[stor8.length / uint8(stor14.field_24) * uint8(stor14.field_32)]) - (uint8(arg4) * uint8(arg3) * stor13[stor8.length / uint8(stor14.field_24) * uint8(stor14.field_32)]) - (uint8(arg2) * stor13[stor8.length / uint8(stor14.field_24) * uint8(stor14.field_32)]) - (uint8(arg5) * uint8(arg2) * stor13[stor8.length / uint8(stor14.field_24) * uint8(stor14.field_32)]) + (uint8(arg4) * uint8(arg2) * stor13[stor8.length / uint8(stor14.field_24) * uint8(stor14.field_32)]) > msg.value:
            revert with 0, 'token.price'
        if uint8(stor14.field_16) < uint8(arg1):
            revert with 0, 'token.limit'
        if uint8(stor14.field_24) < uint8(arg3):
            revert with 0, 'token.limit'
        if uint8(stor14.field_32) < uint8(arg5):
            revert with 0, 'token.limit'
        if uint8(arg3) < uint8(arg2):
            revert with 0, 'token.layout'
        if uint8(arg5) < uint8(arg4):
            revert with 0, 'token.layout'
        if uint8(arg3) + -uint8(arg2) + 1 > uint8(stor14.field_0):
            revert with 0, 'token.limit'
        if uint8(arg5) + -uint8(arg4) + 1 > uint8(stor14.field_8):
            revert with 0, 'token.limit'
        idx = mem[96]
        while uint8(idx) <= uint8(arg3):
            _965 = mem[192]
            s = mem[160]
            while uint8(s) <= uint8(_965):
                _967 = mem[64]
                mem[mem[64] + 32] = arg1 << 248
                mem[mem[64] + 33] = idx << 248
                mem[mem[64] + 34] = s << 248
                _969 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 35
                _971 = sha3(mem[_969 + 32 len mem[_969]])
                if tokenByIndex.length > -2:
                    revert with 0, 17
                mem[0] = sha3(mem[_969 + 32 len mem[_969]])
                mem[32] = 15
                if stor15[mem[0]].field_0:
                    revert with 0, 'token.mint'
                mem[64] = _967 + 163
                mem[_967 + 35] = tokenByIndex.length + 1
                mem[_967 + 67] = 0
                mem[_967 + 99] = 0
                mem[_967 + 131] = 0
                stor15[_971].field_0 = tokenByIndex.length + 1
                stor15[_971].field_256 = 0
                stor15[_971].field_512 = 0
                stor15[_971].field_768 = 0
                mem[64] = _967 + 195
                mem[_967 + 163] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if address(ownerOf[stor8.length + 1]):
                    revert with 0, 'ERC721: token already minted'
                stor9[stor8.length + 1] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = tokenByIndex.length + 1
                if msg.sender:
                    if msg.sender:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + 1
                        stor7[stor8.length + 1] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[stor8.length + 1] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor8.length + 1]
                    stor9[stor8.length + 1] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[32] = 2
                address(ownerOf[stor8.length + 1]) = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                if not ext_code.size(msg.sender):
                    if stor13.length < 1:
                        revert with 0, 17
                    if uint8(stor14.field_24) and uint8(stor14.field_32) > -1 / uint8(stor14.field_24):
                        revert with 0, 17
                    if not uint8(stor14.field_24) * uint8(stor14.field_32):
                        revert with 0, 18
                    if uint8(stor14.field_16) and uint8(stor14.field_24) * uint8(stor14.field_32) > -1 / uint8(stor14.field_16):
                        revert with 0, 17
                    if tokenByIndex.length < uint8(stor14.field_16) * uint8(stor14.field_24) * uint8(stor14.field_32):
                        if tokenByIndex.length / uint8(stor14.field_24) * uint8(stor14.field_32) >= stor13.length:
                            revert with 0, 50
                        mem[0] = 13
                        emit GetPrice(stor13[stor8.length / uint8(stor14.field_24) * uint8(stor14.field_32)]);
                    else:
                        if stor13.length - 1 >= stor13.length:
                            revert with 0, 50
                        mem[0] = 13
                        emit GetPrice(stor13[stor13.length]);
                    mem[_967 + 195] = tokenByIndex.length + 1
                    mem[_967 + 227] = uint8(arg1)
                    mem[_967 + 259] = uint8(idx)
                    mem[_967 + 291] = uint8(s)
                    mem[_967 + 323] = msg.sender
                else:
                    mem[_967 + 195] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_967 + 199] = msg.sender
                    mem[_967 + 231] = 0
                    mem[_967 + 263] = tokenByIndex.length + 1
                    mem[_967 + 295] = 128
                    mem[_967 + 327] = 0
                    t = 0
                    while t < 0:
                        mem[t + _967 + 359] = mem[t + _967 + 195]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length + 1, 128, 0
                    mem[_967 + 195] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _967 + ceil32(return_data.size) + 195
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if stor13.length < 1:
                        revert with 0, 17
                    if uint8(stor14.field_24) and uint8(stor14.field_32) > -1 / uint8(stor14.field_24):
                        revert with 0, 17
                    if not uint8(stor14.field_24) * uint8(stor14.field_32):
                        revert with 0, 18
                    if uint8(stor14.field_16) and uint8(stor14.field_24) * uint8(stor14.field_32) > -1 / uint8(stor14.field_16):
                        revert with 0, 17
                    if tokenByIndex.length < uint8(stor14.field_16) * uint8(stor14.field_24) * uint8(stor14.field_32):
                        if tokenByIndex.length / uint8(stor14.field_24) * uint8(stor14.field_32) >= stor13.length:
                            revert with 0, 50
                        mem[0] = 13
                        emit GetPrice(stor13[stor8.length / uint8(stor14.field_24) * uint8(stor14.field_32)]);
                    else:
                        if stor13.length - 1 >= stor13.length:
                            revert with 0, 50
                        mem[0] = 13
                        emit GetPrice(stor13[stor13.length]);
                    mem[_967 + ceil32(return_data.size) + 195] = tokenByIndex.length + 1
                    mem[_967 + ceil32(return_data.size) + 227] = uint8(arg1)
                    mem[_967 + ceil32(return_data.size) + 259] = uint8(idx)
                    mem[_967 + ceil32(return_data.size) + 291] = uint8(s)
                    mem[_967 + ceil32(return_data.size) + 323] = msg.sender
                emit SetToken(tokenByIndex.length + 1, arg1 << 248, idx << 248, s << 248, msg.sender);
                if uint8(s) == 255:
                    revert with 0, 17
                s = uint8(s) + 1
                continue 
            if uint8(idx) == 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            continue 
    else:
        if stor13.length - 1 >= stor13.length:
            revert with 0, 50
        mem[0] = 13
        if stor13[stor13.length] and uint8(arg5) + -uint8(arg4) + uint8(arg3) + (uint8(arg5) * uint8(arg3)) + (-1 * uint8(arg4) * uint8(arg3)) + -uint8(arg2) + (-1 * uint8(arg5) * uint8(arg2)) + (uint8(arg4) * uint8(arg2)) + 1 > -1 / stor13[stor13.length]:
            revert with 0, 17
        if stor13[stor13.length] + (uint8(arg5) * stor13[stor13.length]) - (uint8(arg4) * stor13[stor13.length]) + (uint8(arg3) * stor13[stor13.length]) + (uint8(arg5) * uint8(arg3) * stor13[stor13.length]) - (uint8(arg4) * uint8(arg3) * stor13[stor13.length]) - (uint8(arg2) * stor13[stor13.length]) - (uint8(arg5) * uint8(arg2) * stor13[stor13.length]) + (uint8(arg4) * uint8(arg2) * stor13[stor13.length]) > msg.value:
            revert with 0, 'token.price'
        if uint8(stor14.field_16) < uint8(arg1):
            revert with 0, 'token.limit'
        if uint8(stor14.field_24) < uint8(arg3):
            revert with 0, 'token.limit'
        if uint8(stor14.field_32) < uint8(arg5):
            revert with 0, 'token.limit'
        if uint8(arg3) < uint8(arg2):
            revert with 0, 'token.layout'
        if uint8(arg5) < uint8(arg4):
            revert with 0, 'token.layout'
        if uint8(arg3) + -uint8(arg2) + 1 > uint8(stor14.field_0):
            revert with 0, 'token.limit'
        if uint8(arg5) + -uint8(arg4) + 1 > uint8(stor14.field_8):
            revert with 0, 'token.limit'
        idx = mem[96]
        while uint8(idx) <= uint8(arg3):
            _966 = mem[192]
            s = mem[160]
            while uint8(s) <= uint8(_966):
                _968 = mem[64]
                mem[mem[64] + 32] = arg1 << 248
                mem[mem[64] + 33] = idx << 248
                mem[mem[64] + 34] = s << 248
                _972 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 35
                _974 = sha3(mem[_972 + 32 len mem[_972]])
                if tokenByIndex.length > -2:
                    revert with 0, 17
                mem[0] = sha3(mem[_972 + 32 len mem[_972]])
                mem[32] = 15
                if stor15[mem[0]].field_0:
                    revert with 0, 'token.mint'
                mem[64] = _968 + 163
                mem[_968 + 35] = tokenByIndex.length + 1
                mem[_968 + 67] = 0
                mem[_968 + 99] = 0
                mem[_968 + 131] = 0
                stor15[_974].field_0 = tokenByIndex.length + 1
                stor15[_974].field_256 = 0
                stor15[_974].field_512 = 0
                stor15[_974].field_768 = 0
                mem[64] = _968 + 195
                mem[_968 + 163] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if address(ownerOf[stor8.length + 1]):
                    revert with 0, 'ERC721: token already minted'
                stor9[stor8.length + 1] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = tokenByIndex.length + 1
                if msg.sender:
                    if msg.sender:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + 1
                        stor7[stor8.length + 1] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[stor8.length + 1] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor8.length + 1]
                    stor9[stor8.length + 1] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[32] = 2
                address(ownerOf[stor8.length + 1]) = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                if not ext_code.size(msg.sender):
                    if stor13.length < 1:
                        revert with 0, 17
                    if uint8(stor14.field_24) and uint8(stor14.field_32) > -1 / uint8(stor14.field_24):
                        revert with 0, 17
                    if not uint8(stor14.field_24) * uint8(stor14.field_32):
                        revert with 0, 18
                    if uint8(stor14.field_16) and uint8(stor14.field_24) * uint8(stor14.field_32) > -1 / uint8(stor14.field_16):
                        revert with 0, 17
                    if tokenByIndex.length < uint8(stor14.field_16) * uint8(stor14.field_24) * uint8(stor14.field_32):
                        if tokenByIndex.length / uint8(stor14.field_24) * uint8(stor14.field_32) >= stor13.length:
                            revert with 0, 50
                        mem[0] = 13
                        emit GetPrice(stor13[stor8.length / uint8(stor14.field_24) * uint8(stor14.field_32)]);
                    else:
                        if stor13.length - 1 >= stor13.length:
                            revert with 0, 50
                        mem[0] = 13
                        emit GetPrice(stor13[stor13.length]);
                    mem[_968 + 195] = tokenByIndex.length + 1
                    mem[_968 + 227] = uint8(arg1)
                    mem[_968 + 259] = uint8(idx)
                    mem[_968 + 291] = uint8(s)
                    mem[_968 + 323] = msg.sender
                else:
                    mem[_968 + 195] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_968 + 199] = msg.sender
                    mem[_968 + 231] = 0
                    mem[_968 + 263] = tokenByIndex.length + 1
                    mem[_968 + 295] = 128
                    mem[_968 + 327] = 0
                    t = 0
                    while t < 0:
                        mem[t + _968 + 359] = mem[t + _968 + 195]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length + 1, 128, 0
                    mem[_968 + 195] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _968 + ceil32(return_data.size) + 195
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if stor13.length < 1:
                        revert with 0, 17
                    if uint8(stor14.field_24) and uint8(stor14.field_32) > -1 / uint8(stor14.field_24):
                        revert with 0, 17
                    if not uint8(stor14.field_24) * uint8(stor14.field_32):
                        revert with 0, 18
                    if uint8(stor14.field_16) and uint8(stor14.field_24) * uint8(stor14.field_32) > -1 / uint8(stor14.field_16):
                        revert with 0, 17
                    if tokenByIndex.length < uint8(stor14.field_16) * uint8(stor14.field_24) * uint8(stor14.field_32):
                        if tokenByIndex.length / uint8(stor14.field_24) * uint8(stor14.field_32) >= stor13.length:
                            revert with 0, 50
                        mem[0] = 13
                        emit GetPrice(stor13[stor8.length / uint8(stor14.field_24) * uint8(stor14.field_32)]);
                    else:
                        if stor13.length - 1 >= stor13.length:
                            revert with 0, 50
                        mem[0] = 13
                        emit GetPrice(stor13[stor13.length]);
                    mem[_968 + ceil32(return_data.size) + 195] = tokenByIndex.length + 1
                    mem[_968 + ceil32(return_data.size) + 227] = uint8(arg1)
                    mem[_968 + ceil32(return_data.size) + 259] = uint8(idx)
                    mem[_968 + ceil32(return_data.size) + 291] = uint8(s)
                    mem[_968 + ceil32(return_data.size) + 323] = msg.sender
                emit SetToken(tokenByIndex.length + 1, arg1 << 248, idx << 248, s << 248, msg.sender);
                if uint8(s) == 255:
                    revert with 0, 17
                s = uint8(s) + 1
                continue 
            if uint8(idx) == 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            continue 
}



}
