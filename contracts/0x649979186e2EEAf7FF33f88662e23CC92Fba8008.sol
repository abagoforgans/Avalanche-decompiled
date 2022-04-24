contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - claim(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of uint256 tokenOfOwnerByIndex;
array of uint256 tokenByIndex;
array of struct stor12;
uint32 stor19; offset 32
address storC8FC;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
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

function _fallback() payable {
    revert
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != this.address:
        return bool(stor5[address(arg1)][address(arg2)])
    if stor19 != 1:
        return bool(stor5[address(arg1)][address(arg2)])
    return 1
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

function withdraw() {
    if storC8FC != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if storC8FC != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    if 0x1f931c1c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x48e2b09300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7f5828d000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x2a55205a00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function tokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
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
            revert with 0, 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if this.address != msg.sender:
            if not stor5[stor2[arg2]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'ERC721: approve caller is not owner nor approved for all'
        else:
            if stor19 != 1:
                if not stor5[stor2[arg2]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function setBaseUri(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if storC8FC != msg.sender:
        revert with 0, 'LibDiamond: Must be contract owner'
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
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
            revert with 0, 34
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if not bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 0, 34
            if not stor12.length.field_1:
                if stor12.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor12.length.field_1) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                    mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 257] = mem[ceil32(stor12.length.field_1) + 192]
                    mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])] = mem[ceil32(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor12.length.field_1) + 192]) <= mem[ceil32(stor12.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor12.length.field_1) + 192], data=mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]), 
                    mem[mem[ceil32(stor12.length.field_1) + 192] + ceil32(stor12.length.field_1) + stor12.length.field_1 + 289] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor12.length.field_1) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                mem[ceil32(stor12.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(stor12.length.field_1) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(stor12.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
                        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
                        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor12.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(stor12.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) + 32], 
                    mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + ceil32(s) + 192] = 0
                    mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + 128]) > mem[ceil32(stor12.length.field_1) + 128]:
                        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor12.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(stor12.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) + 32], 
                    _3736 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor12.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(stor12.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3736) + 32], 
                mem[ceil32(stor12.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor12.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor12.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
                        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor12.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(stor12.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) + 32], 
                    _3739 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor12.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(stor12.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3739) + 32], 
                mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + ceil32(s) + 192] = 0
            else:
                if 31 >= stor12.length.field_1:
                    mem[128] = 256 * stor12.length.field_8
                    if stor12.length.field_1 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(stor12.length.field_1) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 257] = mem[ceil32(stor12.length.field_1) + 192]
                        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])] = mem[ceil32(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor12.length.field_1) + 192]) <= mem[ceil32(stor12.length.field_1) + 192]:
                            return Array(len=mem[ceil32(stor12.length.field_1) + 192], data=mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]), 
                        mem[mem[ceil32(stor12.length.field_1) + 192] + ceil32(stor12.length.field_1) + stor12.length.field_1 + 289] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor12.length.field_1) + 192]) + 32], 
                    s = 0
                    idx = arg1
                    while idx:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 0, 65
                    mem[ceil32(stor12.length.field_1) + 128] = s
                    if not s:
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 0, 17
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if t - 1 >= mem[ceil32(stor12.length.field_1) + 128]:
                                revert with 0, 50
                            mem[t + ceil32(stor12.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                            mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
                            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
                            if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
                                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor12.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]), 
                                mem[mem[ceil32(stor12.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                                return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) + 32], 
                            _3751 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor12.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]), 
                            mem[mem[ceil32(stor12.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                            return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3751) + 32], 
                        mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + ceil32(s) + 192] = 0
                    else:
                        mem[ceil32(stor12.length.field_1) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 0, 17
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if t - 1 >= mem[ceil32(stor12.length.field_1) + 128]:
                                revert with 0, 50
                            mem[t + ceil32(stor12.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                        if ceil32(stor12.length.field_1) > stor12.length.field_1:
                            mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + ceil32(s) + 192] = 0
                else:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor12.length.field_1 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(stor12.length.field_1) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 257] = mem[ceil32(stor12.length.field_1) + 192]
                        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])] = mem[ceil32(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor12.length.field_1) + 192]) <= mem[ceil32(stor12.length.field_1) + 192]:
                            return Array(len=mem[ceil32(stor12.length.field_1) + 192], data=mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]), 
                        mem[mem[ceil32(stor12.length.field_1) + 192] + ceil32(stor12.length.field_1) + stor12.length.field_1 + 289] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor12.length.field_1) + 192]) + 32], 
                    s = 0
                    idx = arg1
                    while idx:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 0, 65
                    mem[ceil32(stor12.length.field_1) + 128] = s
                    if not s:
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 0, 17
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if t - 1 >= mem[ceil32(stor12.length.field_1) + 128]:
                                revert with 0, 50
                            mem[t + ceil32(stor12.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                        if ceil32(stor12.length.field_1) > stor12.length.field_1:
                            mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + ceil32(s) + 192] = 0
                    else:
                        mem[ceil32(stor12.length.field_1) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 0, 17
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if t - 1 >= mem[ceil32(stor12.length.field_1) + 128]:
                                revert with 0, 50
                            mem[t + ceil32(stor12.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                            mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
                            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
                            if ceil32(mem[ceil32(stor12.length.field_1) + 128]) > mem[ceil32(stor12.length.field_1) + 128]:
                                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor12.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]), 
                                mem[mem[ceil32(stor12.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                                return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) + 32], 
                            _4426 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor12.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]), 
                            mem[mem[ceil32(stor12.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                            return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_4426) + 32], 
                        mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + ceil32(s) + 192] = 0
        else:
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 0, 34
            if not stor12.length.field_1:
                if stor12.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor12.length.field_1) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                    mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 257] = mem[ceil32(stor12.length.field_1) + 192]
                    mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])] = mem[ceil32(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor12.length.field_1) + 192]) <= mem[ceil32(stor12.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor12.length.field_1) + 192], data=mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]), 
                    mem[mem[ceil32(stor12.length.field_1) + 192] + ceil32(stor12.length.field_1) + stor12.length.field_1 + 289] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor12.length.field_1) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                mem[ceil32(stor12.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor12.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor12.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor12.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                if ceil32(stor12.length.field_1) > stor12.length.field_1:
                    mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]:
                    mem[mem[ceil32(stor12.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                return Array(len=mem[ceil32(stor12.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]), 
            if 31 >= stor12.length.field_1:
                mem[128] = 256 * stor12.length.field_8
                if stor12.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor12.length.field_1) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                    mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 257] = mem[ceil32(stor12.length.field_1) + 192]
                    mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])] = mem[ceil32(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor12.length.field_1) + 192]) <= mem[ceil32(stor12.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor12.length.field_1) + 192], data=mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]), 
                    mem[mem[ceil32(stor12.length.field_1) + 192] + ceil32(stor12.length.field_1) + stor12.length.field_1 + 289] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor12.length.field_1) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                mem[ceil32(stor12.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(stor12.length.field_1) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(stor12.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
                        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
                        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor12.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(stor12.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) + 32], 
                    mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + ceil32(s) + 192] = 0
                    mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
                        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor12.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(stor12.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) + 32], 
                    _3777 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor12.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(stor12.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3777) + 32], 
                mem[ceil32(stor12.length.field_1) + 160 len s] = call.data[calldata.size len s]
            else:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor12.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor12.length.field_1) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                    mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 257] = mem[ceil32(stor12.length.field_1) + 192]
                    mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])] = mem[ceil32(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor12.length.field_1) + 192]) <= mem[ceil32(stor12.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor12.length.field_1) + 192], data=mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]), 
                    mem[mem[ceil32(stor12.length.field_1) + 192] + ceil32(stor12.length.field_1) + stor12.length.field_1 + 289] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor12.length.field_1) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                mem[ceil32(stor12.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor12.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor12.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor12.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            if ceil32(stor12.length.field_1) > stor12.length.field_1:
                mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(stor12.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160])]), 
        mem[mem[ceil32(stor12.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]) + 32], 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 0, 34
    mem[96] = stor12.length.field_1
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        if not stor12.length.field_1:
            if stor12.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor12.length.field_1) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 225] = 32
                mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 257] = mem[ceil32(stor12.length.field_1) + 192]
                mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])] = mem[ceil32(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor12.length.field_1) + 192]) > mem[ceil32(stor12.length.field_1) + 192]:
                    mem[mem[ceil32(stor12.length.field_1) + 192] + ceil32(stor12.length.field_1) + stor12.length.field_1 + 289] = 0
                return Array(len=mem[ceil32(stor12.length.field_1) + 192], data=mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor12.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor12.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor12.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
                        _3686 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3686)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3686)]
                        if ceil32(_3686) > _3686:
                            mem[_3686 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3686) + 32], 
                    _3687 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3687)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3687)]
                    if ceil32(_3687) > _3687:
                        mem[_3687 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3687) + 32], 
                mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
                    _3688 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3688)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3688)]
                    if ceil32(_3688) > _3688:
                        mem[_3688 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3688) + 32], 
                _3689 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3689)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3689)]
                if ceil32(_3689) > _3689:
                    mem[_3689 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3689) + 32], 
            mem[ceil32(stor12.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor12.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor12.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
                    _3690 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3690)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3690)]
                    if ceil32(_3690) > _3690:
                        mem[_3690 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3690) + 32], 
                _3691 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3691)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3691)]
                if ceil32(_3691) > _3691:
                    mem[_3691 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3691) + 32], 
            mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
                _3692 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3692)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3692)]
                if ceil32(_3692) > _3692:
                    mem[_3692 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3692) + 32], 
            _3693 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3693)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3693)]
            if ceil32(_3693) > _3693:
                mem[_3693 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3693) + 32], 
        if 31 >= stor12.length.field_1:
            mem[128] = 256 * stor12.length.field_8
            if stor12.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor12.length.field_1) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 225] = 32
                mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 257] = mem[ceil32(stor12.length.field_1) + 192]
                mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])] = mem[ceil32(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor12.length.field_1) + 192]) > mem[ceil32(stor12.length.field_1) + 192]:
                    mem[mem[ceil32(stor12.length.field_1) + 192] + ceil32(stor12.length.field_1) + stor12.length.field_1 + 289] = 0
                return Array(len=mem[ceil32(stor12.length.field_1) + 192], data=mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor12.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor12.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor12.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
                        _3702 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3702)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3702)]
                        if ceil32(_3702) > _3702:
                            mem[_3702 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3702) + 32], 
                    _3703 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3703)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3703)]
                    if ceil32(_3703) > _3703:
                        mem[_3703 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3703) + 32], 
                mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
                    _3704 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3704)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3704)]
                    if ceil32(_3704) > _3704:
                        mem[_3704 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3704) + 32], 
                _3705 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3705)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3705)]
                if ceil32(_3705) > _3705:
                    mem[_3705 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3705) + 32], 
            mem[ceil32(stor12.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor12.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor12.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
                    _3706 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3706)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3706)]
                    if ceil32(_3706) > _3706:
                        mem[_3706 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3706) + 32], 
                _3707 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3707)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3707)]
                if ceil32(_3707) > _3707:
                    mem[_3707 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3707) + 32], 
            mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
                _3708 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3708)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3708)]
                if ceil32(_3708) > _3708:
                    mem[_3708 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3708) + 32], 
            _3709 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3709)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3709)]
            if ceil32(_3709) > _3709:
                mem[_3709 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3709) + 32], 
        mem[0] = 12
        mem[128] = uint256(stor12.field_0)
        idx = 128
        s = 0
        while stor12.length.field_1 + 96 > idx:
            mem[idx + 32] = stor12[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor12.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor12.length.field_1) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 225] = 32
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 257] = mem[ceil32(stor12.length.field_1) + 192]
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])] = mem[ceil32(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor12.length.field_1) + 192]) > mem[ceil32(stor12.length.field_1) + 192]:
                mem[mem[ceil32(stor12.length.field_1) + 192] + ceil32(stor12.length.field_1) + stor12.length.field_1 + 289] = 0
            return Array(len=mem[ceil32(stor12.length.field_1) + 192], data=mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor12.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor12.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor12.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
                    _4406 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_4406)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_4406)]
                    if ceil32(_4406) > _4406:
                        mem[_4406 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_4406) + 32], 
                _4407 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_4407)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_4407)]
                if ceil32(_4407) > _4407:
                    mem[_4407 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_4407) + 32], 
            mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
                _4408 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_4408)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_4408)]
                if ceil32(_4408) > _4408:
                    mem[_4408 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_4408) + 32], 
            _4409 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_4409)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_4409)]
            if ceil32(_4409) > _4409:
                mem[_4409 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_4409) + 32], 
        mem[ceil32(stor12.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor12.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor12.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
                _4410 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_4410)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_4410)]
                if ceil32(_4410) > _4410:
                    mem[_4410 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_4410) + 32], 
            _4411 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_4411)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_4411)]
            if ceil32(_4411) > _4411:
                mem[_4411 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_4411) + 32], 
        mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
            _4412 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_4412)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_4412)]
            if ceil32(_4412) > _4412:
                mem[_4412 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_4412) + 32], 
        _4413 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_4413)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_4413)]
        if ceil32(_4413) > _4413:
            mem[_4413 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_4413) + 32], 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 0, 34
    if not stor12.length.field_1:
        if stor12.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor12.length.field_1) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 225] = 32
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 257] = mem[ceil32(stor12.length.field_1) + 192]
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])] = mem[ceil32(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor12.length.field_1) + 192]) > mem[ceil32(stor12.length.field_1) + 192]:
                mem[mem[ceil32(stor12.length.field_1) + 192] + ceil32(stor12.length.field_1) + stor12.length.field_1 + 289] = 0
            return Array(len=mem[ceil32(stor12.length.field_1) + 192], data=mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor12.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor12.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor12.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
                    _3710 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3710)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3710)]
                    if ceil32(_3710) > _3710:
                        mem[_3710 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3710) + 32], 
                _3711 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3711)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3711)]
                if ceil32(_3711) > _3711:
                    mem[_3711 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3711) + 32], 
            mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
                _3712 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3712)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3712)]
                if ceil32(_3712) > _3712:
                    mem[_3712 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3712) + 32], 
            _3713 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3713)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3713)]
            if ceil32(_3713) > _3713:
                mem[_3713 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3713) + 32], 
        mem[ceil32(stor12.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor12.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor12.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
                _3714 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3714)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3714)]
                if ceil32(_3714) > _3714:
                    mem[_3714 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3714) + 32], 
            _3715 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3715)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3715)]
            if ceil32(_3715) > _3715:
                mem[_3715 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3715) + 32], 
        mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
            _3716 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3716)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3716)]
            if ceil32(_3716) > _3716:
                mem[_3716 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3716) + 32], 
        _3717 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3717)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3717)]
        if ceil32(_3717) > _3717:
            mem[_3717 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3717) + 32], 
    if 31 >= stor12.length.field_1:
        mem[128] = 256 * stor12.length.field_8
        if stor12.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor12.length.field_1) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 225] = 32
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 257] = mem[ceil32(stor12.length.field_1) + 192]
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])] = mem[ceil32(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor12.length.field_1) + 192]) > mem[ceil32(stor12.length.field_1) + 192]:
                mem[mem[ceil32(stor12.length.field_1) + 192] + ceil32(stor12.length.field_1) + stor12.length.field_1 + 289] = 0
            return Array(len=mem[ceil32(stor12.length.field_1) + 192], data=mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor12.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor12.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor12.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
                    _3726 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3726)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3726)]
                    if ceil32(_3726) > _3726:
                        mem[_3726 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3726) + 32], 
                _3727 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3727)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3727)]
                if ceil32(_3727) > _3727:
                    mem[_3727 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3727) + 32], 
            mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
                _3728 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3728)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3728)]
                if ceil32(_3728) > _3728:
                    mem[_3728 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3728) + 32], 
            _3729 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3729)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3729)]
            if ceil32(_3729) > _3729:
                mem[_3729 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3729) + 32], 
        mem[ceil32(stor12.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor12.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor12.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
                _3730 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3730)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3730)]
                if ceil32(_3730) > _3730:
                    mem[_3730 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3730) + 32], 
            _3731 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3731)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3731)]
            if ceil32(_3731) > _3731:
                mem[_3731 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3731) + 32], 
        mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
            _3732 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3732)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3732)]
            if ceil32(_3732) > _3732:
                mem[_3732 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3732) + 32], 
        _3733 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_3733)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_3733)]
        if ceil32(_3733) > _3733:
            mem[_3733 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_3733) + 32], 
    mem[0] = 12
    mem[128] = uint256(stor12.field_0)
    idx = 128
    s = 0
    while stor12.length.field_1 + 96 > idx:
        mem[idx + 32] = stor12[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor12.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor12.length.field_1) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 225] = 32
        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 257] = mem[ceil32(stor12.length.field_1) + 192]
        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])] = mem[ceil32(stor12.length.field_1) + 224 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor12.length.field_1) + 192]) > mem[ceil32(stor12.length.field_1) + 192]:
            mem[mem[ceil32(stor12.length.field_1) + 192] + ceil32(stor12.length.field_1) + stor12.length.field_1 + 289] = 0
        return Array(len=mem[ceil32(stor12.length.field_1) + 192], data=mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor12.length.field_1) + 192])]), 
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[ceil32(stor12.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor12.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor12.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
                _4414 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_4414)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_4414)]
                if ceil32(_4414) > _4414:
                    mem[_4414 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_4414) + 32], 
            _4415 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_4415)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_4415)]
            if ceil32(_4415) > _4415:
                mem[_4415 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_4415) + 32], 
        mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
            _4416 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_4416)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_4416)]
            if ceil32(_4416) > _4416:
                mem[_4416 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_4416) + 32], 
        _4417 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_4417)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_4417)]
        if ceil32(_4417) > _4417:
            mem[_4417 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_4417) + 32], 
    mem[ceil32(stor12.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(stor12.length.field_1) + 128]:
            revert with 0, 50
        mem[t + ceil32(stor12.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
        mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
            _4418 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_4418)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_4418)]
            if ceil32(_4418) > _4418:
                mem[_4418 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_4418) + 32], 
        _4419 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_4419)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_4419)]
        if ceil32(_4419) > _4419:
            mem[_4419 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_4419) + 32], 
    mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + ceil32(s) + 192] = 0
    mem[ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192 len ceil32(mem[ceil32(stor12.length.field_1) + 128])] = mem[ceil32(stor12.length.field_1) + 160 len ceil32(mem[ceil32(stor12.length.field_1) + 128])]
    mem[64] = mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192
    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 192] = 32
    if ceil32(mem[ceil32(stor12.length.field_1) + 128]) <= mem[ceil32(stor12.length.field_1) + 128]:
        _4420 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_4420)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_4420)]
        if ceil32(_4420) > _4420:
            mem[_4420 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_4420) + 32], 
    _4421 = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 160]
    mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256 len ceil32(_4421)] = mem[ceil32(stor12.length.field_1) + ceil32(s) + 192 len ceil32(_4421)]
    if ceil32(_4421) > _4421:
        mem[_4421 + mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 256] = 0
    return 32, mem[mem[ceil32(stor12.length.field_1) + 128] + ceil32(stor12.length.field_1) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(_4421) + 32], 
}



}
