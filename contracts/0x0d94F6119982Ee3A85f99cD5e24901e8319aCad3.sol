contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
mapping of uint8 stor0;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor3;
mapping of address approved;
mapping of uint8 stor5;
array of uint256 name;
array of uint256 symbol;
array of struct stor8;
array of struct baseURI;
address owner;
uint256 stor11;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableMap: index out of bounds'
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[arg1] - 1 < tokenByIndex.length
    return address(tokenByIndex[stor3[arg1] - 1].field_256)
}

function baseURI() payable {
    return baseURI[0 len baseURI.length].field_0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return tokenOfOwnerByIndex[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[arg2] - 1 < tokenByIndex.length
    if arg1 == address(tokenByIndex[stor3[arg2] - 1].field_256):
        revert with 0, 'ERC721: approval to current owner'
    if address(tokenByIndex[stor3[arg2] - 1].field_256) != msg.sender:
        if not stor5[address(stor2[stor3[arg2] - 1].field_256)][address(msg.sender)]:
            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor3[arg2] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor3[arg2] - 1].field_256), arg1, arg2);
}

function mint(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if stor3[stor11]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(arg1)][1][stor11]:
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor11
        tokenOfOwnerByIndex[address(arg1)][1][stor11] = tokenOfOwnerByIndex[address(arg1)]
    if stor3[stor11]:
        require stor3[stor11] - 1 < tokenByIndex.length
        address(tokenByIndex[stor3[stor11] - 1].field_256) = arg1
        Mask(96, 0, tokenByIndex[stor3[stor11] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = stor11
        address(tokenByIndex[tokenByIndex.length].field_256) = arg1
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor3[stor11] = tokenByIndex.length
    emit Transfer(0, arg1, stor11);
    if not stor3[stor11]:
        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
    stor8[stor11][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor11++
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not stor3[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != msg.sender:
        if not stor3[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[address(stor2[stor3[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor3[arg3] - 1].field_256), 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
        require tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
    if stor3[arg3]:
        require stor3[arg3] - 1 < tokenByIndex.length
        address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor3[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[128] = stor8[arg1].field_0
    idx = 128
    s = 0
    while stor8[arg1].length + 96 > idx:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor8[arg1].length) + 160] = uint256(baseURI.field_0)
    idx = ceil32(stor8[arg1].length) + 160
    s = 0
    while ceil32(stor8[arg1].length) + baseURI.length + 128 > idx:
        mem[idx + 32] = baseURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if 0 == baseURI.length:
        var37001 = ceil32(stor8[arg1].length)
        return Array(len=stor8[arg1].length, data=mem[128 len ceil32(stor8[arg1].length)])
    if stor8[arg1].length:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(baseURI.length)]
        var35001 = ceil32(baseURI.length)
        if ceil32(baseURI.length) > baseURI.length:
            mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192] = 0
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192 len ceil32(stor8[arg1].length)] = mem[128 len ceil32(stor8[arg1].length)]
        var41001 = ceil32(stor8[arg1].length)
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + stor8[arg1].length + 192] = 32
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + stor8[arg1].length + 224] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + stor8[arg1].length + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])]
        if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) <= mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]:
            return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160], data=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + stor8[arg1].length + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])]), 
        mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + stor8[arg1].length + 256] = 0
        return 32, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + stor8[arg1].length + 224 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + 32], 
    if not arg1:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(baseURI.length)]
        var39001 = ceil32(baseURI.length)
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256] = '0'
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257] = 32
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])]
        if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) <= mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]:
            return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224], data=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])]), 
        mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321] = 0
        return 32, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + 32], 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    if s:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len ceil32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(baseURI.length)]
    if ceil32(baseURI.length) > baseURI.length:
        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224] = 0
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224 len ceil32(s)] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(s)]
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + s + 224] = 32
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + s + 256] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + s + 288 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]
    if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) <= mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]:
        return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192], data=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + s + 288 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]), 
    mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + s + 288] = 0
    return 32, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + s + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + 32], 
}

function sub_352ec14e(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
        _132 = mem[64]
        require mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_132] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_132 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_132 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _132
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < cd[36]:
        require idx < mem[96]
        _197 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _199 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC721: mint to the zero address'
        if stor3[stor11]:
            revert with 0, 'ERC721: token already minted'
        if tokenOfOwnerByIndex[address(mem[(32 * idx) + 128])][1][stor11]:
            mem[0] = stor11
            mem[32] = 3
            if stor3[stor11]:
                require stor3[stor11] - 1 < tokenByIndex.length
                address(tokenByIndex[stor3[stor11] - 1].field_256) = mem[(32 * idx) + 140 len 20]
                Mask(96, 0, tokenByIndex[stor3[stor11] - 1].field_416) = 0
                emit Transfer(0, mem[(32 * idx) + 140 len 20], stor11);
                if not stor3[stor11]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[0] = stor11
                mem[32] = 8
                _238 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
                mem[0] = sha3(stor11, 8)
                stor8[stor11].field_0 = (2 * _238) + 1
                s = sha3(sha3(stor11, 8))
                t = mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 32
                while mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + _238 + 32 > t:
                    stor[s] = mem[t]
                    s = s + 1
                    t = t + 32
                    continue 
                s = sha3(sha3(stor11, 8)) + (Mask(251, 0, _238 + 31) >> 5)
                while sha3(sha3(stor11, 8)) + (stor8[stor11].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                _211 = mem[64]
                mem[64] = mem[64] + 64
                mem[_211] = stor11
                mem[_211 + 32] = address(_197)
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = stor11
                address(tokenByIndex[tokenByIndex.length].field_256) = address(_197)
                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                stor3[stor11] = tokenByIndex.length
                emit Transfer(0, address(_197), stor11);
                if not stor3[stor11]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[0] = stor11
                mem[32] = 8
                _232 = mem[_199]
                mem[0] = sha3(stor11, 8)
                stor8[stor11].field_0 = (2 * _232) + 1
                t = sha3(sha3(stor11, 8))
                s = _199 + 32
                while _199 + _232 + 32 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(stor11, 8)) + (Mask(251, 0, _232 + 31) >> 5)
                while sha3(sha3(stor11, 8)) + (stor8[stor11].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        else:
            tokenOfOwnerByIndex[address(mem[(32 * idx) + 128])]++
            tokenOfOwnerByIndex[address(mem[(32 * idx) + 128])][tokenOfOwnerByIndex[address(mem[(32 * idx) + 128])]] = stor11
            tokenOfOwnerByIndex[address(mem[(32 * idx) + 128])][1][stor11] = tokenOfOwnerByIndex[address(mem[(32 * idx) + 128])]
            mem[0] = stor11
            mem[32] = 3
            if stor3[stor11]:
                require stor3[stor11] - 1 < tokenByIndex.length
                address(tokenByIndex[stor3[stor11] - 1].field_256) = mem[(32 * idx) + 140 len 20]
                Mask(96, 0, tokenByIndex[stor3[stor11] - 1].field_416) = 0
                emit Transfer(0, mem[(32 * idx) + 140 len 20], stor11);
                if not stor3[stor11]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[0] = stor11
                mem[32] = 8
                _242 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
                mem[0] = sha3(stor11, 8)
                stor8[stor11].field_0 = (2 * _242) + 1
                s = sha3(sha3(stor11, 8))
                t = mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 32
                while mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + _242 + 32 > t:
                    stor[s] = mem[t]
                    s = s + 1
                    t = t + 32
                    continue 
                s = sha3(sha3(stor11, 8)) + (Mask(251, 0, _242 + 31) >> 5)
                while sha3(sha3(stor11, 8)) + (stor8[stor11].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                _216 = mem[64]
                mem[64] = mem[64] + 64
                mem[_216] = stor11
                mem[_216 + 32] = address(_197)
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = stor11
                address(tokenByIndex[tokenByIndex.length].field_256) = address(_197)
                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                stor3[stor11] = tokenByIndex.length
                emit Transfer(0, address(_197), stor11);
                if not stor3[stor11]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[0] = stor11
                mem[32] = 8
                _235 = mem[_199]
                mem[0] = sha3(stor11, 8)
                stor8[stor11].field_0 = (2 * _235) + 1
                t = sha3(sha3(stor11, 8))
                s = _199 + 32
                while _199 + _235 + 32 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(stor11, 8)) + (Mask(251, 0, _235 + 31) >> 5)
                while sha3(sha3(stor11, 8)) + (stor8[stor11].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        stor11++
        idx = idx + 1
        continue 
}



}
