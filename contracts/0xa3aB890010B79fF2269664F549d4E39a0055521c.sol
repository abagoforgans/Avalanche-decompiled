contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - tokenURI(uint256 arg1)
#
address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of struct stor3;
array of struct stor4;
mapping of struct stor5;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor9;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor11;
array of uint256 tokenByIndex;
mapping of uint256 stor13;
array of struct stor14;
array of struct stor15;
array of struct fees;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor2[Mask(32, 224, arg1)])
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, 50
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function fees(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < fees[arg1].field_0
    return fees[arg1][arg2].field_0, fees[arg1][arg2].field_256
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function isSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor1[address(arg1)])
}

function owner() payable {
    return owner
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor9[address(arg1)][address(arg2)])
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
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor9[msg.sender][address(arg1)] = uint8(arg2)
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

function renounceSigner() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor1[address(msg.sender)] = 0
    emit SignerRemoved(msg.sender);
}

function addSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor1[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(arg1)] = 1
    emit SignerAdded(arg1);
}

function removeSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor1[address(arg1)] = 0
    emit SignerRemoved(arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor9[stor6[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function setContractURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor3[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor3.length = 0
            idx = 0
            while (uint255(stor3.length) * 0.5) + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor3[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor3.length = 0
            idx = 0
            while stor3.length.field_1 + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setTokenURIPrefix(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor4[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4.length = 0
            idx = 0
            while (uint255(stor4.length) * 0.5) + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor4[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4.length = 0
            idx = 0
            while stor4.length.field_1 + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function getFeeBps(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 16
    mem[64] = (32 * fees[arg1].field_0) + 128
    mem[96] = fees[arg1].field_0
    s = 128
    idx = 0
    while idx < fees[arg1].field_0:
        mem[0] = sha3(arg1, 16)
        _27 = mem[64]
        mem[64] = mem[64] + 64
        mem[_27] = fees[arg1][idx].field_0
        mem[_27 + 32] = fees[arg1][idx].field_256
        mem[s] = _27
        s = s + 32
        idx = idx + 1
        continue 
    _25 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _28 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _25) + 32
    if not _25:
        _47 = mem[96]
        idx = 0
        while idx < _47:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_28]:
                revert with 0, 50
            mem[(32 * idx) + _28 + 32] = mem[mem[(32 * idx) + 128] + 32]
            if idx == -1:
                revert with 0, 17
            _47 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _59 = mem[_28]
        mem[mem[64] + 32] = mem[_28]
        mem[mem[64] + 64 len 32 * _59] = mem[_28 + 32 len 32 * _59]
        var19001 = _59
        return 32, mem[mem[64] + 32 len (32 * _59) + 32]
    mem[_28 + 32 len 32 * _25] = call.data[calldata.size len 32 * _25]
    _48 = mem[96]
    idx = 0
    while idx < _48:
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[_28]:
            revert with 0, 50
        mem[(32 * idx) + _28 + 32] = mem[mem[(32 * idx) + 128] + 32]
        if idx == -1:
            revert with 0, 17
        _48 = mem[96]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _60 = mem[_28]
    mem[mem[64] + 32] = mem[_28]
    mem[mem[64] + 64 len 32 * _60] = mem[_28 + 32 len 32 * _60]
    return 32, mem[mem[64] + 32 len (32 * _60) + 32]
}

function getFeeRecipients(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 16
    mem[64] = (32 * fees[arg1].field_0) + 128
    mem[96] = fees[arg1].field_0
    s = 128
    idx = 0
    while idx < fees[arg1].field_0:
        mem[0] = sha3(arg1, 16)
        _27 = mem[64]
        mem[64] = mem[64] + 64
        mem[_27] = fees[arg1][idx].field_0
        mem[_27 + 32] = fees[arg1][idx].field_256
        mem[s] = _27
        s = s + 32
        idx = idx + 1
        continue 
    _25 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _28 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _25) + 32
    if not _25:
        _47 = mem[96]
        idx = 0
        while idx < _47:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_28]:
                revert with 0, 50
            mem[(32 * idx) + _28 + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
            if idx == -1:
                revert with 0, 17
            _47 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _59 = mem[_28]
        mem[mem[64] + 32] = mem[_28]
        s = 0
        s = mem[64] + 64
        t = _28 + 32
        while _47 < _59:
            mem[s] = mem[t + 12 len 20]
            s = _47 + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[_28 + 32 len 32 * _25] = call.data[calldata.size len 32 * _25]
        _48 = mem[96]
        idx = 0
        while idx < _48:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_28]:
                revert with 0, 50
            mem[(32 * idx) + _28 + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
            if idx == -1:
                revert with 0, 17
            _48 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _60 = mem[_28]
        mem[mem[64] + 32] = mem[_28]
        s = 0
        s = mem[64] + 64
        t = _28 + 32
        while _48 < _60:
            mem[s] = mem[t + 12 len 20]
            s = _48 + 1
            s = s + 32
            t = t + 32
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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
            if not stor9[stor6[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if approved[arg3]:
        approved[arg3] = 0
    if 1 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if 1 > tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if tokenOfOwnerByIndex[address(arg1)] < 1:
        revert with 0, 17
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor11[arg3]:
        if tokenOfOwnerByIndex[address(arg1)] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 0, 50
        if stor11[arg3] >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 0, 50
        tokenOfOwnerByIndex[address(arg1)][stor11[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor11[stor10[address(arg1)][stor10[address(arg1)]]] = stor11[arg3]
    if not tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, 49
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    stor11[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
}

function contractURI() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function tokenURIPrefix() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function name() payable {
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
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length), data=mem[128 len ceil32(uint255(stor14.length) * 0.5)])
                mem[128] = 256 * stor14.length.field_8
        else:
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 0, 34
            if stor14.length.field_1:
                if 31 < stor14.length.field_1:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length), data=mem[128 len ceil32(uint255(stor14.length) * 0.5)])
                mem[128] = 256 * stor14.length.field_8
        mem[ceil32(uint255(stor14.length) * 0.5) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
        if ceil32(uint255(stor14.length) * 0.5) > uint255(stor14.length) * 0.5:
            mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor14.length), data=mem[128 len ceil32(uint255(stor14.length) * 0.5)], mem[(2 * ceil32(uint255(stor14.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor14.length) * 0.5)]), 
    if bool(stor14.length) == stor14.length.field_1 < 32:
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
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
        if stor14.length.field_1:
            if 31 < stor14.length.field_1:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
    if ceil32(stor14.length.field_1) > stor14.length.field_1:
        mem[stor14.length.field_1 + ceil32(stor14.length.field_1) + 192] = 0
    return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
}

function symbol() payable {
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor15.length):
                if 31 < uint255(stor15.length) * 0.5:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor15.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * stor15.length.field_8
        else:
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 0, 34
            if stor15.length.field_1:
                if 31 < stor15.length.field_1:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * stor15.length.field_8
        mem[ceil32(uint255(stor15.length) * 0.5) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
        if ceil32(uint255(stor15.length) * 0.5) > uint255(stor15.length) * 0.5:
            mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)], mem[(2 * ceil32(uint255(stor15.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor15.length) * 0.5)]), 
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 0, 34
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor15.length):
            if 31 < uint255(stor15.length) * 0.5:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while (uint255(stor15.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if stor15.length.field_1:
            if 31 < stor15.length.field_1:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
    if ceil32(stor15.length.field_1) > stor15.length.field_1:
        mem[stor15.length.field_1 + ceil32(stor15.length.field_1) + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor9[stor6[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: burn of token that is not own'
    if approved[arg1]:
        approved[arg1] = 0
    if 1 > balanceOf[stor6[arg1]]:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor6[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor6[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if 1 > tokenOfOwnerByIndex[stor6[arg1]]:
        revert with 0, 'SafeMath: subtraction overflow'
    if tokenOfOwnerByIndex[stor6[arg1]] < 1:
        revert with 0, 17
    if tokenOfOwnerByIndex[stor6[arg1]] - 1 != stor11[arg1]:
        if tokenOfOwnerByIndex[stor6[arg1]] - 1 >= tokenOfOwnerByIndex[stor6[arg1]]:
            revert with 0, 50
        if stor11[arg1] >= tokenOfOwnerByIndex[stor6[arg1]]:
            revert with 0, 50
        tokenOfOwnerByIndex[stor6[arg1]][stor11[arg1]] = tokenOfOwnerByIndex[stor6[arg1]][tokenOfOwnerByIndex[stor6[arg1]]]
        stor11[stor10[stor6[arg1]][stor10[stor6[arg1]]]] = stor11[arg1]
    if not tokenOfOwnerByIndex[stor6[arg1]]:
        revert with 0, 49
    tokenOfOwnerByIndex[stor6[arg1]][tokenOfOwnerByIndex[stor6[arg1]]] = 0
    tokenOfOwnerByIndex[stor6[arg1]]--
    stor11[arg1] = 0
    if 1 > tokenByIndex.length:
        revert with 0, 'SafeMath: subtraction overflow'
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor13[arg1] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor13[arg1]] = tokenByIndex[tokenByIndex.length]
    stor13[stor12[stor12.length]] = stor13[arg1]
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    stor13[arg1] = 0
    if stor5[arg1].field_0:
        if stor5[arg1].field_0 == uint255(stor5[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5[arg1].field_0):
            if stor5[arg1].field_0:
                if stor5[arg1].field_0 == uint255(stor5[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor5[arg1].field_0 = 0
                if 31 < uint255(stor5[arg1].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor5[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor5[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                    revert with 0, 34
                stor5[arg1].field_0 = 0
                if 31 < stor5[arg1].field_1:
                    idx = 0
                    while stor5[arg1].field_1 + 31 / 32 > idx:
                        stor5[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
            revert with 0, 34
        if stor5[arg1].field_1:
            if stor5[arg1].field_0:
                if stor5[arg1].field_0 == uint255(stor5[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor5[arg1].field_0 = 0
                if 31 < uint255(stor5[arg1].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor5[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor5[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                    revert with 0, 34
                stor5[arg1].field_0 = 0
                if 31 < stor5[arg1].field_1:
                    idx = 0
                    while stor5[arg1].field_1 + 31 / 32 > idx:
                        stor5[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor9[stor6[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if approved[arg3]:
        approved[arg3] = 0
    if 1 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if 1 > tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if tokenOfOwnerByIndex[address(arg1)] < 1:
        revert with 0, 17
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor11[arg3]:
        if tokenOfOwnerByIndex[address(arg1)] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 0, 50
        if stor11[arg3] >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 0, 50
        tokenOfOwnerByIndex[address(arg1)][stor11[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor11[stor10[address(arg1)][stor10[address(arg1)]]] = stor11[arg3]
    if not tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, 49
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    stor11[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    if ext_code.size(arg2):
        mem[ceil32(ceil32(arg4.length)) + 293 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if ceil32(arg4.length) <= arg4.length:
            mem[ceil32(ceil32(arg4.length)) + 97] = ceil32(arg4.length) + 164
            mem[ceil32(ceil32(arg4.length)) + 133 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(ceil32(arg4.length)) + 129 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
            mem[ceil32(arg4.length) + ceil32(ceil32(arg4.length)) + 293 len floor32(ceil32(arg4.length) + 195)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(ceil32(arg4.length)) + 293 len floor32(ceil32(arg4.length) + 195) - 164]
            if floor32(ceil32(arg4.length) + 195) > ceil32(arg4.length) + 164:
                mem[(2 * ceil32(arg4.length)) + ceil32(ceil32(arg4.length)) + 457] = 0
            call arg2.mem[ceil32(arg4.length) + ceil32(ceil32(arg4.length)) + 293 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(arg4.length) + ceil32(ceil32(arg4.length)) + 297 len (2 * ceil32(arg4.length)) + 160]
        else:
            mem[arg4.length + ceil32(ceil32(arg4.length)) + 293] = 0
            mem[ceil32(ceil32(arg4.length)) + 97] = ceil32(arg4.length) + 164
            mem[ceil32(ceil32(arg4.length)) + 133 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(ceil32(arg4.length)) + 129 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
            mem[ceil32(arg4.length) + ceil32(ceil32(arg4.length)) + 293 len floor32(ceil32(arg4.length) + 195)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(ceil32(arg4.length)) + 293 len floor32(ceil32(arg4.length) + 195) - 164]
            if floor32(ceil32(arg4.length) + 195) > ceil32(arg4.length) + 164:
                mem[(2 * ceil32(arg4.length)) + ceil32(ceil32(arg4.length)) + 457] = 0
            call arg2 with:
               funct Mask(32, -(8 * ceil32(arg4.length) + -arg4.length + 4) + 256, 0) >> -(8 * ceil32(arg4.length) + -arg4.length + 4) + 256
                 gas gas_remaining wei
                args Mask(8 * -ceil32(arg4.length) + arg4.length + 28, 0, 0), mem[ceil32(ceil32(arg4.length)) + arg4.length + 325 len (4 * ceil32(arg4.length)) + -arg4.length + 132]
        if not return_data.size:
            if not ext_call.success:
                if arg4.length:
                    revert with arg4[all]
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            require arg4.length >= 32
            require mem[128] == Mask(32, 224, mem[128])
            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            mem[ceil32(arg4.length) + ceil32(ceil32(arg4.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            require return_data.size >= 32
            require mem[ceil32(arg4.length) + ceil32(ceil32(arg4.length)) + 325] == Mask(32, 224, mem[ceil32(arg4.length) + ceil32(ceil32(arg4.length)) + 325])
            if Mask(32, 224, mem[ceil32(arg4.length) + ceil32(ceil32(arg4.length)) + 325]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function mint(uint256 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4, address arg5, uint256[] arg6, string arg7) payable {
    require calldata.size - 4 >= 192
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg5.length) + 97 < 96 or ceil32(32 * arg5.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg5.length) + 97
    mem[96] = arg5.length
    require arg5 + (64 * arg5.length) + 36 <= calldata.size
    s = arg5 + 36
    t = 128
    idx = 0
    while idx < arg5.length:
        require calldata.size - s >= 64
        _253 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_253] = cd[s]
        mem[_253 + 32] = cd[(s + 32)]
        mem[t] = _253
        s = s + 64
        t = t + 32
        idx = idx + 1
        continue 
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 0, 65
    _254 = mem[64]
    if mem[64] + ceil32(ceil32(arg6.length)) + 1 < mem[64] or mem[64] + ceil32(ceil32(arg6.length)) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(arg6.length)) + 1
    mem[_254] = arg6.length
    require arg6 + arg6.length + 36 <= calldata.size
    mem[_254 + 32 len arg6.length] = arg6[all]
    mem[_254 + arg6.length + 32] = 0
    _255 = mem[64]
    mem[mem[64] + 32] = address(this.address)
    mem[mem[64] + 52] = arg1
    _256 = mem[64]
    mem[mem[64]] = 52
    mem[64] = mem[64] + 84
    _258 = sha3(mem[_256 + 32 len mem[_256]])
    mem[_255 + 116] = '\x19Ethereum Signed Message:\n32'
    mem[_255 + 144] = _258
    mem[_255 + 84] = 60
    mem[_255 + 208] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _258)
    mem[_255 + 240] = arg2
    mem[_255 + 272] = arg3
    mem[_255 + 304] = arg4
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _258), arg2 << 248, arg3, arg4) 
    mem[_255 + 176] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Roles: account is the zero address'
    if not stor1[address(signer)]:
        revert with 0, 'owner should sign tokenId'
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg1]:
        revert with 0, 'ERC721: token already minted'
    ownerOf[arg1] = msg.sender
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    emit Transfer(0, msg.sender, arg1);
    stor11[arg1] = tokenOfOwnerByIndex[address(msg.sender)]
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
    mem[32] = 13
    stor13[arg1] = tokenByIndex.length
    tokenByIndex.length++
    mem[0] = 12
    tokenByIndex[tokenByIndex.length] = arg1
    _282 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    mem[_255 + 208] = mem[96]
    if mem[96]:
        mem[_255 + 240 len 32 * mem[96]] = call.data[calldata.size len 32 * mem[96]]
        if mem[96] > test266151307():
            revert with 0, 65
        mem[_255 + (32 * mem[96]) + 240] = mem[96]
        mem[64] = _255 + (64 * mem[96]) + 272
        if not mem[96]:
            idx = 0
            while idx < mem[96]:
                if idx >= mem[96]:
                    revert with 0, 50
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient  be present'
                if idx >= mem[96]:
                    revert with 0, 50
                if 0 == mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value  be positive'
                mem[32] = 16
                if idx >= mem[96]:
                    revert with 0, 50
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 16)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_255 + 208]:
                    revert with 0, 50
                mem[(32 * idx) + _255 + 240] = mem[mem[(32 * idx) + 128] + 12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_255 + (32 * mem[96]) + 240]:
                    revert with 0, 50
                mem[(32 * idx) + _255 + (32 * mem[96]) + 272] = mem[mem[(32 * idx) + 128] + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not mem[96]:
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[0] = arg1
                mem[32] = 5
                _597 = mem[_254]
                if stor5[arg1].field_0:
                    if stor5[arg1].field_0 == uint255(stor5[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if _597:
                        stor5[arg1][].field_0 = Array(len=_597, data=mem[_254 + 32 len _597])
                    else:
                        stor5[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor5[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor5[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                        revert with 0, 34
                    if _597:
                        stor5[arg1][].field_0 = Array(len=_597, data=mem[_254 + 32 len _597])
                    else:
                        stor5[arg1].field_0 = 0
                        idx = 0
                        while stor5[arg1].field_1 + 31 / 32 > idx:
                            stor5[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                _522 = _255 + (64 * mem[96]) + 272
                mem[_255 + (64 * mem[96]) + 272] = arg1
                mem[_255 + (64 * mem[96]) + 304] = 96
                _534 = mem[_255 + 208]
                mem[_255 + (64 * mem[96]) + 368] = mem[_255 + 208]
                idx = 0
                s = mem[64] + 128
                t = _255 + 240
                while idx < _534:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = (32 * _534) + 128
                _734 = mem[_255 + (32 * _282) + 240]
                mem[_522 + (32 * _534) + 128] = mem[_255 + (32 * _282) + 240]
                mem[_522 + (32 * _534) + 160 len 32 * _734] = mem[_255 + (32 * _282) + 272 len 32 * _734]
                emit SecondarySaleFees(uint256 rg1, address[] rg2, uint256[] rg3):
                                       mem[mem[64] len _522 + (32 * _534) + (32 * _734) + -mem[64] + 160],
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[0] = arg1
                mem[32] = 5
                _811 = mem[_254]
                if stor5[arg1].field_0:
                    if stor5[arg1].field_0 == uint255(stor5[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if _811:
                        stor5[arg1][].field_0 = Array(len=_811, data=mem[_254 + 32 len _811])
                    else:
                        stor5[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor5[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor5[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                        revert with 0, 34
                    if _811:
                        stor5[arg1][].field_0 = Array(len=_811, data=mem[_254 + 32 len _811])
                    else:
                        stor5[arg1].field_0 = 0
                        idx = 0
                        while stor5[arg1].field_1 + 31 / 32 > idx:
                            stor5[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
        else:
            mem[_255 + (32 * mem[96]) + 272 len 32 * mem[96]] = call.data[calldata.size len 32 * mem[96]]
            idx = 0
            while idx < mem[96]:
                if idx >= mem[96]:
                    revert with 0, 50
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient  be present'
                if idx >= mem[96]:
                    revert with 0, 50
                if 0 == mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value  be positive'
                mem[32] = 16
                if idx >= mem[96]:
                    revert with 0, 50
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 16)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_255 + 208]:
                    revert with 0, 50
                mem[(32 * idx) + _255 + 240] = mem[mem[(32 * idx) + 128] + 12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_255 + (32 * mem[96]) + 240]:
                    revert with 0, 50
                mem[(32 * idx) + _255 + (32 * mem[96]) + 272] = mem[mem[(32 * idx) + 128] + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not mem[96]:
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[0] = arg1
                mem[32] = 5
                _607 = mem[_254]
                if stor5[arg1].field_0:
                    if stor5[arg1].field_0 == uint255(stor5[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if _607:
                        stor5[arg1][].field_0 = Array(len=_607, data=mem[_254 + 32 len _607])
                    else:
                        stor5[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor5[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor5[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                        revert with 0, 34
                    if _607:
                        stor5[arg1][].field_0 = Array(len=_607, data=mem[_254 + 32 len _607])
                    else:
                        stor5[arg1].field_0 = 0
                        idx = 0
                        while stor5[arg1].field_1 + 31 / 32 > idx:
                            stor5[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                _525 = _255 + (64 * mem[96]) + 272
                mem[_255 + (64 * mem[96]) + 272] = arg1
                mem[_255 + (64 * mem[96]) + 304] = 96
                _537 = mem[_255 + 208]
                mem[_255 + (64 * mem[96]) + 368] = mem[_255 + 208]
                idx = 0
                s = mem[64] + 128
                t = _255 + 240
                while idx < _537:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_525 + 64] = (32 * _537) + 128
                _735 = mem[_255 + (32 * _282) + 240]
                mem[_525 + (32 * _537) + 128] = mem[_255 + (32 * _282) + 240]
                mem[_525 + (32 * _537) + 160 len 32 * _735] = mem[_255 + (32 * _282) + 272 len 32 * _735]
                emit SecondarySaleFees(uint256 rg1, address[] rg2, uint256[] rg3):
                                       mem[mem[64] len _525 + (32 * _537) + (32 * _735) + -mem[64] + 160],
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[0] = arg1
                mem[32] = 5
                _814 = mem[_254]
                if stor5[arg1].field_0:
                    if stor5[arg1].field_0 == uint255(stor5[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if _814:
                        stor5[arg1][].field_0 = Array(len=_814, data=mem[_254 + 32 len _814])
                    else:
                        stor5[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor5[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor5[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                        revert with 0, 34
                    if _814:
                        stor5[arg1][].field_0 = Array(len=_814, data=mem[_254 + 32 len _814])
                    else:
                        stor5[arg1].field_0 = 0
                        idx = 0
                        while stor5[arg1].field_1 + 31 / 32 > idx:
                            stor5[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if mem[96] > test266151307():
            revert with 0, 65
        _285 = _255 + (32 * mem[96]) + 240
        mem[_255 + (32 * mem[96]) + 240] = mem[96]
        mem[64] = _255 + (64 * mem[96]) + 272
        if not mem[96]:
            _504 = mem[96]
            idx = 0
            while idx < _504:
                if idx >= mem[96]:
                    revert with 0, 50
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient  be present'
                if idx >= mem[96]:
                    revert with 0, 50
                if 0 == mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value  be positive'
                mem[32] = 16
                if idx >= mem[96]:
                    revert with 0, 50
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 16)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_255 + 208]:
                    revert with 0, 50
                mem[(32 * idx) + _255 + 240] = mem[mem[(32 * idx) + 128] + 12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_285]:
                    revert with 0, 50
                mem[(32 * idx) + _285 + 32] = mem[mem[(32 * idx) + 128] + 32]
                if idx == -1:
                    revert with 0, 17
                _504 = mem[96]
                idx = idx + 1
                continue 
            if not mem[96]:
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[0] = arg1
                mem[32] = 5
                _577 = mem[_254]
                if stor5[arg1].field_0:
                    if stor5[arg1].field_0 == uint255(stor5[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if _577:
                        stor5[arg1][].field_0 = Array(len=_577, data=mem[_254 + 32 len _577])
                    else:
                        stor5[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor5[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor5[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                        revert with 0, 34
                    if _577:
                        stor5[arg1][].field_0 = Array(len=_577, data=mem[_254 + 32 len _577])
                    else:
                        stor5[arg1].field_0 = 0
                        idx = 0
                        while stor5[arg1].field_1 + 31 / 32 > idx:
                            stor5[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                _516 = mem[64]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = 96
                _528 = mem[_255 + 208]
                mem[mem[64] + 96] = mem[_255 + 208]
                idx = 0
                s = mem[64] + 128
                t = _255 + 240
                while idx < _528:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_516 + 64] = (32 * _528) + 128
                _732 = mem[_285]
                mem[_516 + (32 * _528) + 128] = mem[_285]
                mem[_516 + (32 * _528) + 160 len 32 * _732] = mem[_285 + 32 len 32 * _732]
                emit SecondarySaleFees(uint256 rg1, address[] rg2, uint256[] rg3):
                                       mem[mem[64] len _516 + (32 * _528) + (32 * _732) + -mem[64] + 160],
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[0] = arg1
                mem[32] = 5
                _805 = mem[_254]
                if stor5[arg1].field_0:
                    if stor5[arg1].field_0 == uint255(stor5[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if _805:
                        stor5[arg1][].field_0 = Array(len=_805, data=mem[_254 + 32 len _805])
                    else:
                        stor5[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor5[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor5[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                        revert with 0, 34
                    if _805:
                        stor5[arg1][].field_0 = Array(len=_805, data=mem[_254 + 32 len _805])
                    else:
                        stor5[arg1].field_0 = 0
                        idx = 0
                        while stor5[arg1].field_1 + 31 / 32 > idx:
                            stor5[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
        else:
            mem[_255 + (32 * mem[96]) + 272 len 32 * mem[96]] = call.data[calldata.size len 32 * mem[96]]
            _505 = mem[96]
            idx = 0
            while idx < _505:
                if idx >= mem[96]:
                    revert with 0, 50
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient  be present'
                if idx >= mem[96]:
                    revert with 0, 50
                if 0 == mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value  be positive'
                mem[32] = 16
                if idx >= mem[96]:
                    revert with 0, 50
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 16)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_255 + 208]:
                    revert with 0, 50
                mem[(32 * idx) + _255 + 240] = mem[mem[(32 * idx) + 128] + 12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_285]:
                    revert with 0, 50
                mem[(32 * idx) + _285 + 32] = mem[mem[(32 * idx) + 128] + 32]
                if idx == -1:
                    revert with 0, 17
                _505 = mem[96]
                idx = idx + 1
                continue 
            if not mem[96]:
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[0] = arg1
                mem[32] = 5
                _587 = mem[_254]
                if stor5[arg1].field_0:
                    if stor5[arg1].field_0 == uint255(stor5[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if _587:
                        stor5[arg1][].field_0 = Array(len=_587, data=mem[_254 + 32 len _587])
                    else:
                        stor5[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor5[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor5[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                        revert with 0, 34
                    if _587:
                        stor5[arg1][].field_0 = Array(len=_587, data=mem[_254 + 32 len _587])
                    else:
                        stor5[arg1].field_0 = 0
                        idx = 0
                        while stor5[arg1].field_1 + 31 / 32 > idx:
                            stor5[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                _519 = mem[64]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = 96
                _531 = mem[_255 + 208]
                mem[mem[64] + 96] = mem[_255 + 208]
                idx = 0
                s = mem[64] + 128
                t = _255 + 240
                while idx < _531:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_519 + 64] = (32 * _531) + 128
                _733 = mem[_285]
                mem[_519 + (32 * _531) + 128] = mem[_285]
                mem[_519 + (32 * _531) + 160 len 32 * _733] = mem[_285 + 32 len 32 * _733]
                emit SecondarySaleFees(uint256 rg1, address[] rg2, uint256[] rg3):
                                       mem[mem[64] len _519 + (32 * _531) + (32 * _733) + -mem[64] + 160],
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[0] = arg1
                mem[32] = 5
                _808 = mem[_254]
                if stor5[arg1].field_0:
                    if stor5[arg1].field_0 == uint255(stor5[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if _808:
                        stor5[arg1][].field_0 = Array(len=_808, data=mem[_254 + 32 len _808])
                    else:
                        stor5[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor5[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor5[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                        revert with 0, 34
                    if _808:
                        stor5[arg1][].field_0 = Array(len=_808, data=mem[_254 + 32 len _808])
                    else:
                        stor5[arg1].field_0 = 0
                        idx = 0
                        while stor5[arg1].field_1 + 31 / 32 > idx:
                            stor5[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
}



}
