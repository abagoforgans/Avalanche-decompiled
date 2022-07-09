contract main {




// =====================  Runtime code  =====================


#
#  - sub_43f37b98(?)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const sub_abbc6d3f(?) = 2


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
uint8 stor10; offset 160
address owner;
address stor11;
address stor12;
address farmAddress;
address royaltiesAddress;
array of struct stor15;
uint256 startTime;
mapping of struct sub_0805d884;
uint256 stor18;
uint256 sub_047f3af1;
mapping of uint256 tokenLevel;

function sub_047f3af1(?) payable {
    return sub_047f3af1
}

function sub_0805d884(?) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'token does not exist'
    return sub_0805d884[stor20[arg1]].field_1024
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
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function royaltiesAddress() payable {
    return royaltiesAddress
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() payable {
    return bool(stor10)
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

function startTime() payable {
    return startTime
}

function getLevel(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'token does not exist'
    return tokenLevel[arg1]
}

function owner() payable {
    return owner
}

function tokenLevel(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return tokenLevel[arg1]
}

function farmAddress() payable {
    return farmAddress
}

function _fallback() payable {
    revert
}

function mintingStarted() payable {
    if 0 == startTime:
        return startTime != 0
    return (block.timestamp > startTime)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_110a2ded(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = address(arg1)
}

function sub_945726e1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11 = address(arg1)
}

function setFarmAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    farmAddress = arg1
}

function setRoyaltiesAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    royaltiesAddress = arg1
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not farmAddress:
        return bool(stor5[address(arg1)][address(arg2)])
    if farmAddress != arg2:
        return bool(stor5[address(arg1)][address(arg2)])
    return 1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= block.timestamp:
        revert with 0, 'startTime must be in future'
    if startTime != 0:
        if block.timestamp > startTime:
            revert with 0, 'minting already started'
    startTime = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not farmAddress:
            if not stor5[stor2[arg2]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'ERC721: approve caller is not owner nor approved for all'
        else:
            if farmAddress != msg.sender:
                if not stor5[stor2[arg2]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_3b9f7bff(?) payable {
    require calldata.size - 4 >= 192
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require arg6 + arg6.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > stor18:
        revert with 0, 'invalid level'
    sub_0805d884[arg1].field_0 = 0
    sub_0805d884[arg1].field_256 = arg2
    sub_0805d884[arg1].field_512 = arg3
    sub_0805d884[arg1].field_768 = arg4
    sub_0805d884[arg1].field_1024 = arg5
    if sub_0805d884[arg1].field_1280:
        if sub_0805d884[arg1].field_1280 == uint255(sub_0805d884[arg1].field_1280) * 0.5 < 32:
            revert with 0, 34
        if arg6.length:
            sub_0805d884[arg1][5][].field_0 = Array(len=arg6.length, data=arg6[all])
        else:
            sub_0805d884[arg1].field_1280 = 0
            idx = 0
            while (uint255(sub_0805d884[arg1].field_1280) * 0.5) + 31 / 32 > idx:
                sub_0805d884[arg1][idx + 5].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if sub_0805d884[arg1].field_1280 == sub_0805d884[arg1].field_1281 < 32:
            revert with 0, 34
        if arg6.length:
            sub_0805d884[arg1][5][].field_0 = Array(len=arg6.length, data=arg6[all])
        else:
            sub_0805d884[arg1].field_1280 = 0
            idx = 0
            while sub_0805d884[arg1].field_1281 + 31 / 32 > idx:
                sub_0805d884[arg1][idx + 5].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_f56d7f66(?) payable {
    require calldata.size - 4 >= 160
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor18 == -1:
        revert with 0, 17
    stor18++
    sub_0805d884[stor18].field_0 = 0
    sub_0805d884[stor18].field_256 = arg1
    sub_0805d884[stor18].field_512 = arg2
    sub_0805d884[stor18].field_768 = arg3
    sub_0805d884[stor18].field_1024 = arg4
    if sub_0805d884[stor18].field_1280:
        if sub_0805d884[stor18].field_1280 == uint255(sub_0805d884[stor18].field_1280) * 0.5 < 32:
            revert with 0, 34
        if arg5.length:
            sub_0805d884[stor18][5][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            sub_0805d884[stor18].field_1280 = 0
            idx = 0
            while (uint255(sub_0805d884[stor18].field_1280) * 0.5) + 31 / 32 > idx:
                sub_0805d884[stor18][idx + 5].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if sub_0805d884[stor18].field_1280 == sub_0805d884[stor18].field_1281 < 32:
            revert with 0, 34
        if arg5.length:
            sub_0805d884[stor18][5][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            sub_0805d884[stor18].field_1280 = 0
            idx = 0
            while sub_0805d884[stor18].field_1281 + 31 / 32 > idx:
                sub_0805d884[stor18][idx + 5].field_0 = 0
                idx = idx + 1
                continue 
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if not arg1.length:
            stor15.length = 0
            idx = 0
            while (uint255(stor15.length) * 0.5) + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor15.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor15[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while (uint255(stor15.length) * 0.5) + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if not arg1.length:
            stor15.length = 0
            idx = 0
            while stor15.length.field_1 + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor15.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor15[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while stor15.length.field_1 + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
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
            if not farmAddress:
                if not stor5[stor2[arg3]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
            else:
                if farmAddress != msg.sender:
                    if not stor5[stor2[arg3]][address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
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

function levels(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_0805d884[arg1].field_1280:
        if sub_0805d884[arg1].field_1280 == uint255(sub_0805d884[arg1].field_1280) * 0.5 < 32:
            revert with 0, 34
        if sub_0805d884[arg1].field_1280:
            if sub_0805d884[arg1].field_1280 == uint255(sub_0805d884[arg1].field_1280) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, sub_0805d884[arg1].field_1280):
                if 31 >= uint255(sub_0805d884[arg1].field_1280) * 0.5:
                    mem[128] = 256 * sub_0805d884[arg1].field_1288
                else:
                    mem[128] = sub_0805d884[arg1][5].field_0
                    idx = 128
                    s = 0
                    while (uint255(sub_0805d884[arg1].field_1280) * 0.5) + 96 > idx:
                        mem[idx + 32] = sub_0805d884[arg1][s + 5].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if sub_0805d884[arg1].field_1280 == sub_0805d884[arg1].field_1281 < 32:
                revert with 0, 34
            if sub_0805d884[arg1].field_1281:
                if 31 >= sub_0805d884[arg1].field_1281:
                    mem[128] = 256 * sub_0805d884[arg1].field_1288
                else:
                    mem[128] = sub_0805d884[arg1][5].field_0
                    idx = 128
                    s = 0
                    while sub_0805d884[arg1].field_1281 + 96 > idx:
                        mem[idx + 32] = sub_0805d884[arg1][s + 5].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return sub_0805d884[arg1].field_0, 
               sub_0805d884[arg1].field_256,
               sub_0805d884[arg1].field_512,
               sub_0805d884[arg1].field_768,
               sub_0805d884[arg1].field_1024,
               Array(len=2 * Mask(256, -1, sub_0805d884[arg1].field_1280), data=mem[128 len ceil32(uint255(sub_0805d884[arg1].field_1280) * 0.5)])
    if sub_0805d884[arg1].field_1280 == sub_0805d884[arg1].field_1281 < 32:
        revert with 0, 34
    if sub_0805d884[arg1].field_1280:
        if sub_0805d884[arg1].field_1280 == uint255(sub_0805d884[arg1].field_1280) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, sub_0805d884[arg1].field_1280):
            if 31 >= uint255(sub_0805d884[arg1].field_1280) * 0.5:
                mem[128] = 256 * sub_0805d884[arg1].field_1288
            else:
                mem[128] = sub_0805d884[arg1][5].field_0
                idx = 128
                s = 0
                while (uint255(sub_0805d884[arg1].field_1280) * 0.5) + 96 > idx:
                    mem[idx + 32] = sub_0805d884[arg1][s + 5].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if sub_0805d884[arg1].field_1280 == sub_0805d884[arg1].field_1281 < 32:
            revert with 0, 34
        if sub_0805d884[arg1].field_1281:
            if 31 >= sub_0805d884[arg1].field_1281:
                mem[128] = 256 * sub_0805d884[arg1].field_1288
            else:
                mem[128] = sub_0805d884[arg1][5].field_0
                idx = 128
                s = 0
                while sub_0805d884[arg1].field_1281 + 96 > idx:
                    mem[idx + 32] = sub_0805d884[arg1][s + 5].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return sub_0805d884[arg1].field_0, 
           sub_0805d884[arg1].field_256,
           sub_0805d884[arg1].field_512,
           sub_0805d884[arg1].field_768,
           sub_0805d884[arg1].field_1024,
           Array(len=sub_0805d884[arg1].field_1280, data=mem[128 len ceil32(sub_0805d884[arg1].field_1281)])
}

function name() payable {
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
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
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
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
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

function symbol() payable {
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
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
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
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
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
            if not farmAddress:
                if not stor5[stor2[arg3]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
            else:
                if farmAddress != msg.sender:
                    if not stor5[stor2[arg3]][address(msg.sender)]:
                        revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
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

function BASE_URI() payable {
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if sub_0805d884[stor20[arg1]].field_1280:
        if sub_0805d884[stor20[arg1]].field_1280 == uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5 < 32:
            revert with 0, 34
        if not sub_0805d884[stor20[arg1]].field_1280:
            mem[128] = Mask(248, 8, sub_0805d884[stor20[arg1]].field_1280)
            mem[(uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 128] = 0x2f312e6a736f6e00000000000000000000000000000000000000000000000000
            if floor32((uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 38) <= (uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 7:
                return Array(len=(uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 7, data=mem[128 len (uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 7], Mask(8 * floor32((uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 38) + -(uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) - 7, -(8 * floor32((uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 38) + -(uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) - 7) + 256, 32) << (8 * floor32((uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 38) + -(uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) - 7) - 256), 
            return Array(len=(uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 7, data=Mask(8 * Mask(254, 1, sub_0805d884[stor20[arg1]].field_1280) + -(uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 7, -(8 * Mask(254, 1, sub_0805d884[stor20[arg1]].field_1280) + -(uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 7) + 256, mem[128 len (uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 7], Mask(8 * floor32((uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 38) + -(uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) - 7, -(8 * floor32((uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 38) + -(uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) - 7) + 256, 32) << (8 * floor32((uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 38) + -(uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) - 7) - 256) << (8 * Mask(254, 1, sub_0805d884[stor20[arg1]].field_1280) + -(uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 7) - 256, Mask(8 * floor32((uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 38) + (uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + -Mask(254, 1, sub_0805d884[stor20[arg1]].field_1280) - 7, -(8 * floor32((uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 38) + (uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + -Mask(254, 1, sub_0805d884[stor20[arg1]].field_1280) - 7) + 256, 0) << (8 * floor32((uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 38) + (uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + -Mask(254, 1, sub_0805d884[stor20[arg1]].field_1280) - 7) - 256), 
        if sub_0805d884[stor20[arg1]].field_1280 != 1:
            return memory
              from test266151307(), 0
               len -test266151307(), 0 - 25
        idx = 0
        s = 0
        while idx < uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5:
            mem[idx + 128] = sub_0805d884[stor20[arg1]][s + 5].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[(uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 128] = 0x2f312e6a736f6e00000000000000000000000000000000000000000000000000
        mem[(uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 135] = 32
        mem[(uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 167] = mem[96]
        mem[(uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 199 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[mem[96] + (uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 199] = 0
        return Array(len=mem[96], data=mem[(uint255(sub_0805d884[stor20[arg1]].field_1280) * 0.5) + 199 len ceil32(mem[96])])
    if sub_0805d884[stor20[arg1]].field_1280 == sub_0805d884[stor20[arg1]].field_1281 < 32:
        revert with 0, 34
    if not sub_0805d884[stor20[arg1]].field_1280:
        mem[128] = Mask(248, 8, sub_0805d884[stor20[arg1]].field_1280)
        mem[sub_0805d884[stor20[arg1]].field_1281 + 128] = 0x2f312e6a736f6e00000000000000000000000000000000000000000000000000
        mem[sub_0805d884[stor20[arg1]].field_1281 + 199 len floor32(sub_0805d884[stor20[arg1]].field_1281 + 38)] = mem[128 len sub_0805d884[stor20[arg1]].field_1281 + 7], Mask(8 * floor32(sub_0805d884[stor20[arg1]].field_1281 + 38) + -sub_0805d884[stor20[arg1]].field_1281 - 7, -(8 * floor32(sub_0805d884[stor20[arg1]].field_1281 + 38) + -sub_0805d884[stor20[arg1]].field_1281 - 7) + 256, 32) << (8 * floor32(sub_0805d884[stor20[arg1]].field_1281 + 38) + -sub_0805d884[stor20[arg1]].field_1281 - 7) - 256
        if floor32(sub_0805d884[stor20[arg1]].field_1281 + 38) <= sub_0805d884[stor20[arg1]].field_1281 + 7:
            return Array(len=sub_0805d884[stor20[arg1]].field_1281 + 7, data=mem[128 len sub_0805d884[stor20[arg1]].field_1281 + 7], Mask(8 * floor32(sub_0805d884[stor20[arg1]].field_1281 + 38) + -sub_0805d884[stor20[arg1]].field_1281 - 7, -(8 * floor32(sub_0805d884[stor20[arg1]].field_1281 + 38) + -sub_0805d884[stor20[arg1]].field_1281 - 7) + 256, 32) << (8 * floor32(sub_0805d884[stor20[arg1]].field_1281 + 38) + -sub_0805d884[stor20[arg1]].field_1281 - 7) - 256), 
        mem[(2 * sub_0805d884[stor20[arg1]].field_1281) + 206] = 0
        return Array(len=sub_0805d884[stor20[arg1]].field_1281 + 7, data=Mask(8 * sub_0805d884[stor20[arg1]].field_1281 + 7, -(8 * sub_0805d884[stor20[arg1]].field_1281 + 7) + 256, mem[128 len sub_0805d884[stor20[arg1]].field_1281 + 7], Mask(8 * floor32(sub_0805d884[stor20[arg1]].field_1281 + 38) + -sub_0805d884[stor20[arg1]].field_1281 - 7, -(8 * floor32(sub_0805d884[stor20[arg1]].field_1281 + 38) + -sub_0805d884[stor20[arg1]].field_1281 - 7) + 256, 32) << (8 * floor32(sub_0805d884[stor20[arg1]].field_1281 + 38) + -sub_0805d884[stor20[arg1]].field_1281 - 7) - 256) << (8 * sub_0805d884[stor20[arg1]].field_1281 + 7) - 256, mem[(2 * sub_0805d884[stor20[arg1]].field_1281) + 206 len floor32(sub_0805d884[stor20[arg1]].field_1281 + 38) + -sub_0805d884[stor20[arg1]].field_1281 - 7]), 
    if sub_0805d884[stor20[arg1]].field_1280 != 1:
        return memory
          from test266151307(), 0
           len -test266151307(), 0 - 25
    idx = 0
    s = 0
    while idx < sub_0805d884[stor20[arg1]].field_1281:
        mem[idx + 128] = sub_0805d884[stor20[arg1]][s + 5].field_0
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_0805d884[stor20[arg1]].field_1281 + 128] = 0x2f312e6a736f6e00000000000000000000000000000000000000000000000000
    mem[sub_0805d884[stor20[arg1]].field_1281 + 135] = 32
    mem[sub_0805d884[stor20[arg1]].field_1281 + 167] = mem[96]
    mem[sub_0805d884[stor20[arg1]].field_1281 + 199 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[mem[96] + sub_0805d884[stor20[arg1]].field_1281 + 199] = 0
    return Array(len=mem[96], data=mem[sub_0805d884[stor20[arg1]].field_1281 + 199 len ceil32(mem[96])])
}

function sub_7cc8ef63(?) payable {
    require calldata.size - 4 >= 64
    if stor10:
        revert with 0, 'Pausable: paused'
    if 0 == startTime:
        revert with 0, 'Tools sales are not open'
    if block.timestamp <= startTime:
        revert with 0, 'Tools sales are not open'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'quantity must be between 1 and 10'
    if arg2 > 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'quantity must be between 1 and 10'
    if arg1 > stor18:
        revert with 0, 'invalid level'
    if sub_0805d884[arg1].field_0 > !arg2:
        revert with 0, 17
    if sub_0805d884[arg1].field_0 + arg2 > sub_0805d884[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'you can't mint that many right now'
    if sub_0805d884[arg1].field_512 and arg2 > -1 / sub_0805d884[arg1].field_512:
        revert with 0, 17
    mem[0] = arg1
    mem[32] = 17
    if sub_0805d884[arg1].field_768 and arg2 > -1 / sub_0805d884[arg1].field_768:
        revert with 0, 17
    mem[100] = msg.sender
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_0805d884[arg1].field_512 * arg2:
        revert with 0, 'not have enough CROP'
    mem[ceil32(return_data.size) + 100] = msg.sender
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_0805d884[arg1].field_768 * arg2:
        revert with 0, 'not have enough MILK'
    idx = 0
    while idx < arg2:
        if sub_047f3af1 > -2:
            revert with 0, 17
        sub_047f3af1++
        if sub_0805d884[arg1].field_0 > -2:
            revert with 0, 17
        sub_0805d884[arg1].field_0++
        mem[0] = sub_047f3af1
        tokenLevel[stor19] = arg1
        _181 = mem[64]
        mem[64] = mem[64] + 32
        mem[_181] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor19]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor19] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = sub_047f3af1
        if msg.sender:
            if not msg.sender:
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_047f3af1
                mem[32] = 2
                ownerOf[stor19] = msg.sender
                emit Transfer(0, msg.sender, sub_047f3af1);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_047f3af1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _181 + 32]
                        s = s + 32
                        continue 
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_047f3af1, 128, 0
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
                    _337 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_337] == Mask(32, 224, mem[_337])
                    if Mask(32, 224, mem[_337]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_047f3af1
                stor7[stor19] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_047f3af1
                mem[32] = 2
                ownerOf[stor19] = msg.sender
                emit Transfer(0, msg.sender, sub_047f3af1);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_047f3af1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _181 + 32]
                        s = s + 32
                        continue 
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_047f3af1, 128, 0
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
                    _339 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_339] == Mask(32, 224, mem[_339])
                    if Mask(32, 224, mem[_339]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[stor19] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[stor19]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor19]
            stor9[stor19] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = sub_047f3af1
            mem[32] = 2
            ownerOf[stor19] = msg.sender
            emit Transfer(0, msg.sender, sub_047f3af1);
            if ext_code.size(msg.sender):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = sub_047f3af1
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _181 + 32]
                    s = s + 32
                    continue 
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, sub_047f3af1, 128, 0
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
                _341 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_341] == Mask(32, 224, mem[_341])
                if Mask(32, 224, mem[_341]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        mem[mem[64]] = arg1
        emit 0xbd8dec1c: arg1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if sub_0805d884[arg1].field_512 * arg2 and 98 > -1 / sub_0805d884[arg1].field_512 * arg2:
        revert with 0, 17
    require ext_code.size(stor11)
    call stor11.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, 98 * sub_0805d884[arg1].field_512 * arg2 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_0805d884[arg1].field_768 * arg2 and 98 > -1 / sub_0805d884[arg1].field_768 * arg2:
        revert with 0, 17
    require ext_code.size(stor12)
    call stor12.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, 98 * sub_0805d884[arg1].field_768 * arg2 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_0805d884[arg1].field_512 * arg2 and 2 > -1 / sub_0805d884[arg1].field_512 * arg2:
        revert with 0, 17
    require ext_code.size(stor11)
    call stor11.0xbca6c753 with:
         gas gas_remaining wei
        args msg.sender, 2 * sub_0805d884[arg1].field_512 * arg2 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_0805d884[arg1].field_768 * arg2 and 2 > -1 / sub_0805d884[arg1].field_768 * arg2:
        revert with 0, 17
    require ext_code.size(stor12)
    call stor12.0xbca6c753 with:
         gas gas_remaining wei
        args msg.sender, 2 * sub_0805d884[arg1].field_768 * arg2 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_88d30186(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = address(arg1)
    mem[32] = 3
    if arg2 >= balanceOf[address(arg1)]:
        mem[96] = 0
        mem[64] = 128
        mem[128] = 32
        mem[160] = 0
        idx = 0
        s = 128
        t = 192
        while idx < mem[96]:
            _96 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_96 + 32]
            mem[t + 64] = mem[_96 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len -mem[64] + 192
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = address(arg1)
    mem[32] = 3
    if arg2 > !arg3:
        revert with 0, 17
    if arg2 + arg3 < balanceOf[address(arg1)]:
        if arg3 > test266151307():
            revert with 0, 65
        mem[96] = arg3
        mem[64] = (32 * arg3) + 128
        if not arg3:
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = arg2 + idx
                _133 = mem[64]
                mem[64] = mem[64] + 96
                mem[_133] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[32] = 20
                mem[_133 + 32] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[0] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[32] = 17
                mem[_133 + 64] = sub_0805d884[stor20[stor6[address(arg1)][arg2 + idx]]].field_1024
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _133
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _103 = mem[64]
            mem[mem[64]] = 32
            _105 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _105:
                _175 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_175 + 32]
                mem[t + 64] = mem[_175 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _103 + (96 * _105) + -mem[64] + 64
        mem[64] = (32 * arg3) + 224
        mem[(32 * arg3) + 128] = 0
        mem[(32 * arg3) + 160] = 0
        mem[(32 * arg3) + 192] = 0
        mem[var26002] = var26001
        if not var26003 - 1:
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = arg2 + idx
                _297 = mem[64]
                mem[64] = mem[64] + 96
                mem[_297] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[32] = 20
                mem[_297 + 32] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[0] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[32] = 17
                mem[_297 + 64] = sub_0805d884[stor20[stor6[address(arg1)][arg2 + idx]]].field_1024
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _297
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _263 = mem[64]
            mem[mem[64]] = 32
            _265 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _265:
                _336 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_336 + 32]
                mem[t + 64] = mem[_336 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _263 + (96 * _265) + -mem[64] + 64
        mem[64] = (32 * arg3) + 320
        mem[(32 * arg3) + 224] = 0
        mem[(32 * arg3) + 256] = 0
        mem[(32 * arg3) + 288] = 0
        mem[var30002] = var30001
        if not var30003 - 1:
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = arg2 + idx
                _457 = mem[64]
                mem[64] = mem[64] + 96
                mem[_457] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[32] = 20
                mem[_457 + 32] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[0] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[32] = 17
                mem[_457 + 64] = sub_0805d884[stor20[stor6[address(arg1)][arg2 + idx]]].field_1024
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _457
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _423 = mem[64]
            mem[mem[64]] = 32
            _425 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _425:
                _496 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_496 + 32]
                mem[t + 64] = mem[_496 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _423 + (96 * _425) + -mem[64] + 64
        mem[64] = (32 * arg3) + 416
        mem[(32 * arg3) + 320] = 0
        mem[(32 * arg3) + 352] = 0
        mem[(32 * arg3) + 384] = 0
        mem[var34002] = var34001
        if not var34003 - 1:
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = arg2 + idx
                _617 = mem[64]
                mem[64] = mem[64] + 96
                mem[_617] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[32] = 20
                mem[_617 + 32] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[0] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[32] = 17
                mem[_617 + 64] = sub_0805d884[stor20[stor6[address(arg1)][arg2 + idx]]].field_1024
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _617
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _583 = mem[64]
            mem[mem[64]] = 32
            _585 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _585:
                _656 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_656 + 32]
                mem[t + 64] = mem[_656 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _583 + (96 * _585) + -mem[64] + 64
        mem[64] = (32 * arg3) + 512
        mem[(32 * arg3) + 416] = 0
        mem[(32 * arg3) + 448] = 0
        mem[(32 * arg3) + 480] = 0
        mem[var38002] = var38001
        if not var38003 - 1:
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = arg2 + idx
                _777 = mem[64]
                mem[64] = mem[64] + 96
                mem[_777] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[32] = 20
                mem[_777 + 32] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[0] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[32] = 17
                mem[_777 + 64] = sub_0805d884[stor20[stor6[address(arg1)][arg2 + idx]]].field_1024
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _777
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _743 = mem[64]
            mem[mem[64]] = 32
            _745 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _745:
                _816 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_816 + 32]
                mem[t + 64] = mem[_816 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _743 + (96 * _745) + -mem[64] + 64
        mem[64] = (32 * arg3) + 608
        mem[(32 * arg3) + 512] = 0
        mem[(32 * arg3) + 544] = 0
        mem[(32 * arg3) + 576] = 0
        mem[var42002] = var42001
        if not var42003 - 1:
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = arg2 + idx
                _937 = mem[64]
                mem[64] = mem[64] + 96
                mem[_937] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[32] = 20
                mem[_937 + 32] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[0] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[32] = 17
                mem[_937 + 64] = sub_0805d884[stor20[stor6[address(arg1)][arg2 + idx]]].field_1024
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _937
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _903 = mem[64]
            mem[mem[64]] = 32
            _905 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _905:
                _976 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_976 + 32]
                mem[t + 64] = mem[_976 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _903 + (96 * _905) + -mem[64] + 64
        mem[64] = (32 * arg3) + 704
        mem[(32 * arg3) + 608] = 0
        mem[(32 * arg3) + 640] = 0
        mem[(32 * arg3) + 672] = 0
        mem[var46002] = var46001
        if not var46003 - 1:
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = arg2 + idx
                _1097 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1097] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[32] = 20
                mem[_1097 + 32] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[0] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[32] = 17
                mem[_1097 + 64] = sub_0805d884[stor20[stor6[address(arg1)][arg2 + idx]]].field_1024
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1097
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1063 = mem[64]
            mem[mem[64]] = 32
            _1065 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _1065:
                _1136 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1136 + 32]
                mem[t + 64] = mem[_1136 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _1063 + (96 * _1065) + -mem[64] + 64
        mem[64] = (32 * arg3) + 800
        mem[(32 * arg3) + 704] = 0
        mem[(32 * arg3) + 736] = 0
        mem[(32 * arg3) + 768] = 0
        mem[var50002] = var50001
        if not var50003 - 1:
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = arg2 + idx
                _1257 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1257] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[32] = 20
                mem[_1257 + 32] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[0] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[32] = 17
                mem[_1257 + 64] = sub_0805d884[stor20[stor6[address(arg1)][arg2 + idx]]].field_1024
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1257
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1223 = mem[64]
            mem[mem[64]] = 32
            _1225 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _1225:
                _1296 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1296 + 32]
                mem[t + 64] = mem[_1296 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _1223 + (96 * _1225) + -mem[64] + 64
        mem[64] = (32 * arg3) + 896
        mem[(32 * arg3) + 800] = 0
        mem[(32 * arg3) + 832] = 0
        mem[(32 * arg3) + 864] = 0
        mem[var54002] = var54001
        if var54003 - 1:
            mem[64] = (32 * arg3) + 992
            mem[var58002] = var58001
            if not var58003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > !idx:
                        revert with 0, 17
                    if not address(arg1):
                        revert with 0, 'ERC721: balance query for the zero address'
                    if arg2 + idx >= balanceOf[address(arg1)]:
                        revert with 0, 'ERC721Enumerable: owner index out of bounds'
                    mem[0] = arg2 + idx
                    _1577 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1577] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                    mem[32] = 20
                    mem[_1577 + 32] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                    mem[0] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                    mem[32] = 17
                    mem[_1577 + 64] = sub_0805d884[stor20[stor6[address(arg1)][arg2 + idx]]].field_1024
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1577
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            # nil
        else:
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = arg2 + idx
                _1417 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1417] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[32] = 20
                mem[_1417 + 32] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[0] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[32] = 17
                mem[_1417 + 64] = sub_0805d884[stor20[stor6[address(arg1)][arg2 + idx]]].field_1024
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1417
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1383 = mem[64]
            mem[mem[64]] = 32
            _1385 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _1385:
                _1456 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1456 + 32]
                mem[t + 64] = mem[_1456 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _1383 + (96 * _1385) + -mem[64] + 64
    else:
        if not address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        mem[0] = address(arg1)
        mem[32] = 3
        if balanceOf[address(arg1)] < arg2:
            revert with 0, 17
        if balanceOf[address(arg1)] - arg2 > test266151307():
            revert with 0, 65
        mem[96] = balanceOf[address(arg1)] - arg2
        mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 128
        if not balanceOf[address(arg1)] - arg2:
            idx = 0
            while idx < balanceOf[address(arg1)] - arg2:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = arg2 + idx
                _142 = mem[64]
                mem[64] = mem[64] + 96
                mem[_142] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[32] = 20
                mem[_142 + 32] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[0] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[32] = 17
                mem[_142 + 64] = sub_0805d884[stor20[stor6[address(arg1)][arg2 + idx]]].field_1024
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _142
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _104 = mem[64]
            mem[mem[64]] = 32
            _106 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _106:
                _180 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_180 + 32]
                mem[t + 64] = mem[_180 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _104 + (96 * _106) + -mem[64] + 64
        mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 224
        mem[(32 * balanceOf[address(arg1)] - arg2) + 128] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 160] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 192] = 0
        mem[var33002] = var33001
        if not var33003 - 1:
            idx = 0
            while idx < balanceOf[address(arg1)] - arg2:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = arg2 + idx
                _306 = mem[64]
                mem[64] = mem[64] + 96
                mem[_306] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[32] = 20
                mem[_306 + 32] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[0] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[32] = 17
                mem[_306 + 64] = sub_0805d884[stor20[stor6[address(arg1)][arg2 + idx]]].field_1024
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _306
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _264 = mem[64]
            mem[mem[64]] = 32
            _266 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _266:
                _341 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_341 + 32]
                mem[t + 64] = mem[_341 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _264 + (96 * _266) + -mem[64] + 64
        mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 320
        mem[(32 * balanceOf[address(arg1)] - arg2) + 224] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 256] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 288] = 0
        mem[var37002] = var37001
        if not var37003 - 1:
            idx = 0
            while idx < balanceOf[address(arg1)] - arg2:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = arg2 + idx
                _466 = mem[64]
                mem[64] = mem[64] + 96
                mem[_466] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[32] = 20
                mem[_466 + 32] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[0] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[32] = 17
                mem[_466 + 64] = sub_0805d884[stor20[stor6[address(arg1)][arg2 + idx]]].field_1024
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _466
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _424 = mem[64]
            mem[mem[64]] = 32
            _426 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _426:
                _501 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_501 + 32]
                mem[t + 64] = mem[_501 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _424 + (96 * _426) + -mem[64] + 64
        mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 416
        mem[(32 * balanceOf[address(arg1)] - arg2) + 320] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 352] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 384] = 0
        mem[var41002] = var41001
        if not var41003 - 1:
            idx = 0
            while idx < balanceOf[address(arg1)] - arg2:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = arg2 + idx
                _626 = mem[64]
                mem[64] = mem[64] + 96
                mem[_626] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[32] = 20
                mem[_626 + 32] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[0] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[32] = 17
                mem[_626 + 64] = sub_0805d884[stor20[stor6[address(arg1)][arg2 + idx]]].field_1024
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _626
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _584 = mem[64]
            mem[mem[64]] = 32
            _586 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _586:
                _661 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_661 + 32]
                mem[t + 64] = mem[_661 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _584 + (96 * _586) + -mem[64] + 64
        mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 512
        mem[(32 * balanceOf[address(arg1)] - arg2) + 416] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 448] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 480] = 0
        mem[var45002] = var45001
        if not var45003 - 1:
            idx = 0
            while idx < balanceOf[address(arg1)] - arg2:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = arg2 + idx
                _786 = mem[64]
                mem[64] = mem[64] + 96
                mem[_786] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[32] = 20
                mem[_786 + 32] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[0] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[32] = 17
                mem[_786 + 64] = sub_0805d884[stor20[stor6[address(arg1)][arg2 + idx]]].field_1024
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _786
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _744 = mem[64]
            mem[mem[64]] = 32
            _746 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _746:
                _821 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_821 + 32]
                mem[t + 64] = mem[_821 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _744 + (96 * _746) + -mem[64] + 64
        mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 608
        mem[(32 * balanceOf[address(arg1)] - arg2) + 512] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 544] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 576] = 0
        mem[var49002] = var49001
        if not var49003 - 1:
            idx = 0
            while idx < balanceOf[address(arg1)] - arg2:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = arg2 + idx
                _946 = mem[64]
                mem[64] = mem[64] + 96
                mem[_946] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[32] = 20
                mem[_946 + 32] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[0] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[32] = 17
                mem[_946 + 64] = sub_0805d884[stor20[stor6[address(arg1)][arg2 + idx]]].field_1024
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _946
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _904 = mem[64]
            mem[mem[64]] = 32
            _906 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _906:
                _981 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_981 + 32]
                mem[t + 64] = mem[_981 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _904 + (96 * _906) + -mem[64] + 64
        mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 704
        mem[(32 * balanceOf[address(arg1)] - arg2) + 608] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 640] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 672] = 0
        mem[var53002] = var53001
        if not var53003 - 1:
            idx = 0
            while idx < balanceOf[address(arg1)] - arg2:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = arg2 + idx
                _1106 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1106] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[32] = 20
                mem[_1106 + 32] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[0] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[32] = 17
                mem[_1106 + 64] = sub_0805d884[stor20[stor6[address(arg1)][arg2 + idx]]].field_1024
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1106
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1064 = mem[64]
            mem[mem[64]] = 32
            _1066 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _1066:
                _1141 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1141 + 32]
                mem[t + 64] = mem[_1141 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _1064 + (96 * _1066) + -mem[64] + 64
        mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 800
        mem[(32 * balanceOf[address(arg1)] - arg2) + 704] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 736] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 768] = 0
        mem[var57002] = var57001
        if not var57003 - 1:
            idx = 0
            while idx < balanceOf[address(arg1)] - arg2:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = arg2 + idx
                _1266 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1266] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[32] = 20
                mem[_1266 + 32] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[0] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[32] = 17
                mem[_1266 + 64] = sub_0805d884[stor20[stor6[address(arg1)][arg2 + idx]]].field_1024
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1266
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1224 = mem[64]
            mem[mem[64]] = 32
            _1226 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _1226:
                _1301 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1301 + 32]
                mem[t + 64] = mem[_1301 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _1224 + (96 * _1226) + -mem[64] + 64
        mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 896
        mem[(32 * balanceOf[address(arg1)] - arg2) + 800] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 832] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 864] = 0
        mem[var61002] = var61001
        if var61003 - 1:
            mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 992
            mem[var65002] = var65001
            if not var65003 - 1:
                idx = 0
                while idx < balanceOf[address(arg1)] - arg2:
                    if arg2 > !idx:
                        revert with 0, 17
                    if not address(arg1):
                        revert with 0, 'ERC721: balance query for the zero address'
                    if arg2 + idx >= balanceOf[address(arg1)]:
                        revert with 0, 'ERC721Enumerable: owner index out of bounds'
                    mem[0] = arg2 + idx
                    _1586 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1586] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                    mem[32] = 20
                    mem[_1586 + 32] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                    mem[0] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                    mem[32] = 17
                    mem[_1586 + 64] = sub_0805d884[stor20[stor6[address(arg1)][arg2 + idx]]].field_1024
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1586
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            # nil
        else:
            idx = 0
            while idx < balanceOf[address(arg1)] - arg2:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = arg2 + idx
                _1426 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1426] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[32] = 20
                mem[_1426 + 32] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[0] = tokenLevel[stor6[address(arg1)][arg2 + idx]]
                mem[32] = 17
                mem[_1426 + 64] = sub_0805d884[stor20[stor6[address(arg1)][arg2 + idx]]].field_1024
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1426
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1384 = mem[64]
            mem[mem[64]] = 32
            _1386 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _1386:
                _1461 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1461 + 32]
                mem[t + 64] = mem[_1461 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _1384 + (96 * _1386) + -mem[64] + 64
}



}
