contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
mapping of uint8 stor0;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor3;
mapping of address approved;
mapping of uint8 stor5;
array of struct stor6;
array of struct stor7;
mapping of struct stor8;
array of struct stor9;
address owner;
address sub_9115c8c6Address;
mapping of uint8 stor12;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    require arg2 == arg2
    if tokenOfOwnerByIndex[address(arg1)] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 'NH{q', 50
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenByIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableMap: index out of bounds'
    if arg1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor3[arg1] < 1:
        revert with 'NH{q', 17
    if stor3[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    return tokenByIndex[stor3[arg1] - 1].field_256
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return tokenOfOwnerByIndex[address(arg1)]
}

function sub_86b6e41d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
}

function owner() payable {
    return owner
}

function sub_9115c8c6(?) payable {
    return sub_9115c8c6Address
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

function changeSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9115c8c6Address = arg1
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

function tokensOfOwner(address arg1) payable {
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
        mem[32] = 1
        if tokenOfOwnerByIndex[address(arg1)] <= idx:
            revert with 0, 'EnumerableSet: index out of bounds'
        if idx >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 1)
        if idx >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=tokenOfOwnerByIndex[address(arg1)], data=mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)]])
}

function setBaseURI(string arg1) payable {
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
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9.length = 0
            idx = 0
            while stor9.length.field_1 + 31 / 32 > idx:
                stor9[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9.length = 0
            idx = 0
            while stor9.length.field_1 + 31 / 32 > idx:
                stor9[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor3[arg2] < 1:
        revert with 'NH{q', 17
    if stor3[arg2] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if arg1 == tokenByIndex[stor3[arg2] - 1].field_256:
        revert with 0, 'ERC721: approval to current owner'
    if tokenByIndex[stor3[arg2] - 1].field_256 != msg.sender:
        if not stor5[stor2[stor3[arg2] - 1].field_256][address(msg.sender)]:
            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    if stor3[arg2] < 1:
        revert with 'NH{q', 17
    if stor3[arg2] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(tokenByIndex[stor3[arg2] - 1].field_256, arg1, arg2);
}

function name() payable {
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor6.length):
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
        if ceil32(stor6.length.field_1) > stor6.length.field_1:
            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function symbol() payable {
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
        if ceil32(stor7.length.field_1) > stor7.length.field_1:
            mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function baseURI() payable {
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor3[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor3[arg3] < 1:
        revert with 'NH{q', 17
    if stor3[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if tokenByIndex[stor3[arg3] - 1].field_256 != msg.sender:
        if not stor3[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    if stor3[arg3] < 1:
        revert with 'NH{q', 17
    if stor3[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                    0
    if stor3[arg3] < 1:
        revert with 'NH{q', 17
    if stor3[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(tokenByIndex[stor3[arg3] - 1].field_256, 0, arg3);
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
    if stor3[arg3]:
        if stor3[arg3] < 1:
            revert with 'NH{q', 17
        if stor3[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
        tokenByIndex[stor3[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor3[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[201 len 23] >> 72,
                    0
    if stor3[arg3] < 1:
        revert with 'NH{q', 17
    if stor3[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if tokenByIndex[stor3[arg3] - 1].field_256 != msg.sender:
        if not stor3[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[297 len 23] >> 72,
                    0
    if stor3[arg3] < 1:
        revert with 'NH{q', 17
    if stor3[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[393 len 23] >> 72,
                    0
    if stor3[arg3] < 1:
        revert with 'NH{q', 17
    if stor3[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(tokenByIndex[stor3[arg3] - 1].field_256, 0, arg3);
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
    if stor3[arg3]:
        if stor3[arg3] < 1:
            revert with 'NH{q', 17
        if stor3[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
        tokenByIndex[stor3[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg3] = tokenByIndex.length
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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
    if not stor3[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(ceil32(arg4.length)) + 170 len 23] >> 72,
                    0
    if stor3[arg3] < 1:
        revert with 'NH{q', 17
    if stor3[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if tokenByIndex[stor3[arg3] - 1].field_256 != msg.sender:
        if not stor3[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(ceil32(arg4.length)) + 266 len 23] >> 72,
                    0
    if stor3[arg3] < 1:
        revert with 'NH{q', 17
    if stor3[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(ceil32(arg4.length)) + 362 len 23] >> 72,
                    0
    if stor3[arg3] < 1:
        revert with 'NH{q', 17
    if stor3[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(tokenByIndex[stor3[arg3] - 1].field_256, 0, arg3);
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
    if stor3[arg3]:
        if stor3[arg3] < 1:
            revert with 'NH{q', 17
        if stor3[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
        tokenByIndex[stor3[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg3] = tokenByIndex.length
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

function sub_b267412c(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307() or ceil32(ceil32(arg3.length)) + 98 < 97:
        revert with 'NH{q', 65
    mem[ceil32(ceil32(arg1.length)) + 97] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg1.length)) + 129 len arg3.length] = arg3[all]
    mem[ceil32(ceil32(arg1.length)) + arg3.length + 129] = 0
    require arg4 < 7
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + 99 > test266151307() or ceil32(ceil32(arg5.length)) + 99 < 98:
        revert with 'NH{q', 65
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg3.length)) + 98] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg3.length)) + 130 len arg5.length] = arg5[all]
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg3.length)) + arg5.length + 130] = 0
    if bool(stor12[arg2]) == 1:
        revert with 0, 'SIGNATURE IS ALREADY USED'
    require arg1.length == 65
    _7 = mem[128]
    _8 = mem[160]
    signer = erecover(arg2, 0, _7, _8) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_9115c8c6Address != address(signer):
        revert with 0, 'HASH IS NOT SIGNED'
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if stor3[stor2.length]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length]:
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
        tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length] = tokenOfOwnerByIndex[address(msg.sender)]
    if stor3[stor2.length]:
        if stor3[stor2.length] < 1:
            revert with 'NH{q', 17
        if stor3[stor2.length] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor3[tokenByIndex.length] - 1].field_256 = msg.sender
        tokenByIndex[stor3[tokenByIndex.length] - 1].field_416 = 0
        emit Transfer(0, msg.sender, tokenByIndex.length);
        if not stor3[stor2.length]:
            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
        if stor8[stor2.length].field_0:
            if stor8[stor2.length].field_0 == stor8[stor2.length].field_1 < 32:
                revert with 'NH{q', 34
            if arg3.length:
                stor8[stor2.length][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor8[stor2.length].field_0 = 0
                idx = 0
                while stor8[stor2.length].field_1 + 31 / 32 > idx:
                    stor8[stor2.length][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor8[stor2.length].field_0 == stor8[stor2.length].field_1 < 32:
                revert with 'NH{q', 34
            if arg3.length:
                stor8[stor2.length][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor8[stor2.length].field_0 = 0
                idx = 0
                while stor8[stor2.length].field_1 + 31 / 32 > idx:
                    stor8[stor2.length][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        stor12[arg2] = 1
        if arg4 > 6:
            revert with 'NH{q', 33
        if ceil32(arg3.length) <= arg3.length:
            emit 0xafdb1eb2: Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg5.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, signer) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), ceil32(arg3.length) + 96, tokenByIndex.length, msg.sender, arg4
        else:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(arg3.length) + 227] = arg5.length
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(arg3.length) + 259 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, signer) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
            if ceil32(arg5.length) > arg5.length:
                mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(arg3.length) + arg5.length + 259] = 0
            emit 0xafdb1eb2: Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg5.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + arg3.length + 259 len ceil32(arg5.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 96, tokenByIndex.length, msg.sender, arg4
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[stor2.length] = tokenByIndex.length
        emit Transfer(0, msg.sender, tokenByIndex.length);
        if not stor3[stor2.length]:
            revert with 0, 'ERC721Metadata: URI set of nonexistent token'
        if stor8[stor2.length].field_0:
            if stor8[stor2.length].field_0 == stor8[stor2.length].field_1 < 32:
                revert with 'NH{q', 34
            if arg3.length:
                stor8[stor2.length][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor8[stor2.length].field_0 = 0
                idx = 0
                while stor8[stor2.length].field_1 + 31 / 32 > idx:
                    stor8[stor2.length][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor8[stor2.length].field_0 == stor8[stor2.length].field_1 < 32:
                revert with 'NH{q', 34
            if arg3.length:
                stor8[stor2.length][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor8[stor2.length].field_0 = 0
                idx = 0
                while stor8[stor2.length].field_1 + 31 / 32 > idx:
                    stor8[stor2.length][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        stor12[arg2] = 1
        if arg4 > 6:
            revert with 'NH{q', 33
        if ceil32(arg3.length) <= arg3.length:
            emit 0xafdb1eb2: Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg5.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, signer) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), ceil32(arg3.length) + 96, tokenByIndex.length, msg.sender, arg4
        else:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(arg3.length) + 291] = arg5.length
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(arg3.length) + 323 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, signer) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
            if ceil32(arg5.length) > arg5.length:
                mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(arg3.length) + arg5.length + 323] = 0
            emit 0xafdb1eb2: Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg5.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + arg3.length + 323 len ceil32(arg5.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 96, tokenByIndex.length, msg.sender, arg4
}



}
