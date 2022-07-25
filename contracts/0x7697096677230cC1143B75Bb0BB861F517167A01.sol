contract main {




// =====================  Runtime code  =====================


#
#  - sub_c2705c75(?)
#
address owner;
array of uint8 stor1;
mapping of uint256 balanceOf;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor4;
mapping of address ownerOf;
mapping of struct sub_4607fc0b;
mapping of address approved;
mapping of uint8 stor8;
mapping of uint8 stor9;
array of uint256 tokenByIndex;
mapping of uint256 stor11;
array of struct stor12;
array of struct stor13;
array of struct stor14;
uint8 mintingEnabled;
uint8 transferEnabled; offset 8

function tiers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < tiers.length
    return tiers[arg1].field_0
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    require arg2 == arg2
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_4607fc0b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_4607fc0b[arg1].field_0, sub_4607fc0b[arg1].field_256
}

function transferEnabled() payable {
    return bool(transferEnabled)
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function sub_64075e44(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_64075e44.length
    return sub_64075e44[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function mintingEnabled() payable {
    return bool(mintingEnabled)
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor8[address(arg1)][address(arg2)])
}

function managers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor1[address(arg1)]))
}

function isBlacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_f94da548(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mintingEnabled = uint8(bool(arg1))
}

function removeManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor1[address(arg1)]) = 0
    emit ManagerRemoved(arg1);
}

function addManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Manageable: new owner is the zero address'
    uint8(stor1[address(arg1)]) = 1
    emit ManagerAdded(arg1);
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

function updateValue(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor1[address(msg.sender)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Manageable: caller is not the owner'
    if sub_4607fc0b[arg1].field_0 > -arg2 - 1:
        revert with 'NH{q', 17
    sub_4607fc0b[arg1].field_0 += arg2
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    if stor9[address(msg.sender)]:
        revert with 0, 'ERC721: blacklisted'
    if stor9[address(arg1)]:
        revert with 0, 'ERC721: blacklisted'
    stor8[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if stor9[stor5[arg2]]:
        revert with 0, 'ERC721: blacklisted'
    if stor9[address(arg1)]:
        revert with 0, 'ERC721: blacklisted'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor8[stor5[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function getTokenTierIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if tiers.length:
        mem[128] = uint256(tiers.field_0)
        idx = 128
        s = 0
        while (32 * tiers.length) + 96 > idx:
            mem[idx + 32] = tiers[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < tiers.length:
        if idx >= tiers.length:
            revert with 'NH{q', 50
        if mem[(32 * idx) + 128] and 10^18 > -1 / mem[(32 * idx) + 128]:
            revert with 'NH{q', 17
        if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + 128]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if tiers.length < idx:
            revert with 'NH{q', 17
        if tiers.length - idx > -2:
            revert with 'NH{q', 17
        return (tiers.length + -idx + 1)
    return 1
}

function sub_c3da5961(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ('cd', 4).length == tiers.length
    tiers.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while tiers.length > idx:
            tiers[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            tiers[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while tiers.length > idx:
            tiers[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function updateBaseUri(string arg1) payable {
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

function sub_b8c4876b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ('cd', 4).length == sub_64075e44.length
    sub_64075e44.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_64075e44.length > idx:
            sub_64075e44[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            sub_64075e44[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_64075e44.length > idx:
            sub_64075e44[idx] = 0
            idx = idx + 1
            continue 
}

function sub_36fe1efe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if tiers.length:
        mem[128] = uint256(tiers.field_0)
        idx = 128
        s = 0
        while (32 * tiers.length) + 96 > idx:
            mem[idx + 32] = tiers[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < tiers.length:
        if idx >= tiers.length:
            revert with 'NH{q', 50
        if mem[(32 * idx) + 128] and 10^18 > -1 / mem[(32 * idx) + 128]:
            revert with 'NH{q', 17
        if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + 128]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if tiers.length < idx:
            revert with 'NH{q', 17
        if tiers.length - idx > -2:
            revert with 'NH{q', 17
        if tiers.length + -idx + 1 < 1:
            revert with 'NH{q', 17
        if tiers.length - idx >= sub_64075e44.length:
            revert with 'NH{q', 50
        return stor[('name', 'sub_64075e44', 16) + stor17.length - idx]
    if 0 >= sub_64075e44.length:
        revert with 'NH{q', 50
    return sub_64075e44
}

function sub_563d0e4d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if tiers.length:
        mem[128] = uint256(tiers.field_0)
        idx = 128
        s = 0
        while (32 * tiers.length) + 96 > idx:
            mem[idx + 32] = tiers[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < tiers.length:
        if idx >= tiers.length:
            revert with 'NH{q', 50
        if mem[(32 * idx) + 128] and 10^18 > -1 / mem[(32 * idx) + 128]:
            revert with 'NH{q', 17
        if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + 128]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if tiers.length < idx:
            revert with 'NH{q', 17
        if tiers.length - idx > -2:
            revert with 'NH{q', 17
        if tiers.length + -idx + 1 < 1:
            revert with 'NH{q', 17
        if not tiers.length - idx:
            return 0
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if tiers.length:
            mem[(32 * tiers.length) + 160] = uint256(tiers.field_0)
            idx = (32 * tiers.length) + 160
            s = sha3(17)
            while (64 * tiers.length) + 128 > idx:
                mem[idx + 32] = uint256(stor1[s])
                idx = idx + 32
                s = s + 1
                continue 
        idx = 0
        while idx < tiers.length:
            if idx >= tiers.length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + (32 * tiers.length) + 160] and 10^18 > -1 / mem[(32 * idx) + (32 * tiers.length) + 160]:
                revert with 'NH{q', 17
            if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + (32 * tiers.length) + 160]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if tiers.length < idx:
                revert with 'NH{q', 17
            if tiers.length - idx > -2:
                revert with 'NH{q', 17
            if tiers.length + -idx + 1 < 1:
                revert with 'NH{q', 17
            if tiers.length - idx >= tiers.length:
                revert with 'NH{q', 50
            return stor[('name', 'tiers', 17) + tiers.length - idx].field_0
        if 0 >= tiers.length:
            revert with 'NH{q', 50
        return uint256(tiers.field_0)
    return 0
}

function mint(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tokenByIndex.length > -2:
        revert with 'NH{q', 17
    if not mintingEnabled:
        revert with 0, 'ERC721: minting not enabled yet'
    if stor9[address(arg1)]:
        revert with 0, 'ERC721: blacklisted'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor10.length + 1]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg1)]:
        revert with 0, 'ERC721: limited to one token'
    stor11[stor10.length + 1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = tokenByIndex.length + 1
    if arg1:
        tokenOfOwnerByIndex[address(arg1)][stor2[address(arg1)]] = tokenByIndex.length + 1
        stor4[stor10.length + 1] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor11[stor10.length + 1] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor11[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[stor10.length + 1]
        stor11[stor10.length + 1] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[stor10.length + 1] = arg1
    emit Transfer(0, arg1, tokenByIndex.length + 1);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, tokenByIndex.length + 1, 128, 0
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
    sub_4607fc0b[stor10.length + 1].field_0 = arg2
    sub_4607fc0b[stor10.length + 1].field_256 = arg3
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor1[address(msg.sender)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Manageable: caller is not the owner'
    if tokenByIndex.length > -2:
        revert with 'NH{q', 17
    if not mintingEnabled:
        revert with 0, 'ERC721: minting not enabled yet'
    if stor9[address(arg1)]:
        revert with 0, 'ERC721: blacklisted'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor10.length + 1]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg1)]:
        revert with 0, 'ERC721: limited to one token'
    stor11[stor10.length + 1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = tokenByIndex.length + 1
    if arg1:
        tokenOfOwnerByIndex[address(arg1)][stor2[address(arg1)]] = tokenByIndex.length + 1
        stor4[stor10.length + 1] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor11[stor10.length + 1] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor11[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[stor10.length + 1]
        stor11[stor10.length + 1] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[stor10.length + 1] = arg1
    emit Transfer(0, arg1, tokenByIndex.length + 1);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, tokenByIndex.length + 1, 128, 0
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
    sub_4607fc0b[stor10.length + 1].field_0 = arg2
    sub_4607fc0b[stor10.length + 1].field_256 = block.timestamp
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not stor8[stor5[arg3]][address(msg.sender)]:
            if not ownerOf[arg3]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not transferEnabled:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfers are not enabled'
    if stor9[address(arg1)]:
        revert with 0, 'ERC721: blacklisted'
    if stor9[address(arg2)]:
        revert with 0, 'ERC721: blacklisted'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor11[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor4[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor4[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor2[address(arg1)] - 1]
                stor4[stor3[address(arg1)][stor2[address(arg1)] - 1]] = stor4[arg3]
            stor4[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor2[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            tokenOfOwnerByIndex[address(arg2)][stor2[address(arg2)]] = arg3
            stor4[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor11[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg3]
        stor11[arg3] = 0
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not stor8[stor5[arg3]][address(msg.sender)]:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not transferEnabled:
        revert with 0, 'ERC721: transfers are not enabled'
    if stor9[address(arg1)]:
        revert with 0, 'ERC721: blacklisted'
    if stor9[address(arg2)]:
        revert with 0, 'ERC721: blacklisted'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor11[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor4[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor4[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor2[address(arg1)] - 1]
                stor4[stor3[address(arg1)][stor2[address(arg1)] - 1]] = stor4[arg3]
            stor4[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor2[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            tokenOfOwnerByIndex[address(arg2)][stor2[address(arg2)]] = arg3
            stor4[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor11[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg3]
        stor11[arg3] = 0
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

function name() payable {
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor13.length):
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
                mem[128] = 256 * stor13.length.field_8
        else:
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
                mem[128] = 256 * stor13.length.field_8
        mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
        if ceil32(stor13.length.field_1) > stor13.length.field_1:
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
    if bool(stor13.length) == stor13.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
    if ceil32(stor13.length.field_1) > stor13.length.field_1:
        mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
    return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
}

function _name() payable {
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor13.length):
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
                mem[128] = 256 * stor13.length.field_8
        else:
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
                mem[128] = 256 * stor13.length.field_8
        mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
        if ceil32(stor13.length.field_1) > stor13.length.field_1:
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
    if bool(stor13.length) == stor13.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
    if ceil32(stor13.length.field_1) > stor13.length.field_1:
        mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
    return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
}

function symbol() payable {
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
                mem[128] = 256 * stor14.length.field_8
        else:
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
                mem[128] = 256 * stor14.length.field_8
        mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) > stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
    return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
}

function _baseURI() payable {
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
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not stor8[stor5[arg3]][address(msg.sender)]:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not transferEnabled:
        revert with 0, 'ERC721: transfers are not enabled'
    if stor9[address(arg1)]:
        revert with 0, 'ERC721: blacklisted'
    if stor9[address(arg2)]:
        revert with 0, 'ERC721: blacklisted'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor11[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor4[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor4[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor2[address(arg1)] - 1]
                stor4[stor3[address(arg1)][stor2[address(arg1)] - 1]] = stor4[arg3]
            stor4[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor2[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            tokenOfOwnerByIndex[address(arg2)][stor2[address(arg2)]] = arg3
            stor4[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor11[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg3]
        stor11[arg3] = 0
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[96] = stor12.length.field_1
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor12.length.field_1:
                if stor12.length.field_1 <= 0:
                    return ''
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 160
                mem[ceil32(stor12.length.field_1) + 128] = tiers.length
                if not tiers.length:
                    mem[0] = arg1
                    mem[32] = 6
                    idx = 0
                    while idx < tiers.length:
                        if idx >= tiers.length:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                            revert with 'NH{q', 17
                        if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        if tiers.length < idx:
                            revert with 'NH{q', 17
                        if tiers.length - idx > -2:
                            revert with 'NH{q', 17
                        if not tiers.length + -idx + 1:
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                            idx = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                                idx = 0
                                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                    idx = idx + 32
                                    continue 
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                                _2522 = mem[64]
                                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                                _2630 = mem[_2522]
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_2522]
                                idx = 0
                                while idx < _2630:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_2522 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_2630) > _2630:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _2630 + 326] = 0
                                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_2630) + 32]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                            idx = 0
                            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                idx = idx + 32
                                continue 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                            _2523 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                            _2631 = mem[_2523]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_2523]
                            idx = 0
                            while idx < _2631:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_2523 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_2631) > _2631:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _2631 + 326] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_2631) + 32]
                        t = 0
                        s = tiers.length + -idx + 1
                        while s:
                            if t == -1:
                                revert with 'NH{q', 17
                            t = t + 1
                            s = s / 10
                            continue 
                        if t > test266151307():
                            revert with 'NH{q', 65
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
                        if not t:
                            u = t
                            s = tiers.length + -idx + 1
                            while s:
                                if u < 1:
                                    revert with 'NH{q', 17
                                if 48 > -(s % 10) - 1:
                                    revert with 'NH{q', 17
                                if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                    revert with 'NH{q', 50
                                mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                u = u - 1
                                s = s / 10
                                continue 
                            idx = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                                _4516 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                                idx = 0
                                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                    idx = idx + 32
                                    continue 
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4516 + 224] = '.json'
                                if ceil32(_4516) <= _4516:
                                    _7226 = mem[64]
                                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4516 + 229
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4516 + 229] = 32
                                    _7622 = mem[_7226]
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4516 + 261] = mem[_7226]
                                    idx = 0
                                    while idx < _7622:
                                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4516 + idx + 293] = mem[_7226 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_7622) > _7622:
                                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4516 + _7622 + 293] = 0
                                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4516 + 261 len ceil32(_7622) + 32], 
                                _7310 = mem[64]
                                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4516 + 229
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4516 + 229] = 32
                                _7706 = mem[_7310]
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4516 + 261] = mem[_7310]
                                idx = 0
                                while idx < _7706:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4516 + idx + 293] = mem[_7310 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_7706) > _7706:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4516 + _7706 + 293] = 0
                                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4516 + 261 len ceil32(_7706) + 32], 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                            _4572 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                            idx = 0
                            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                idx = idx + 32
                                continue 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4572 + 224] = '.json'
                            if ceil32(_4572) <= _4572:
                                _7227 = mem[64]
                                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4572 + 229
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4572 + 229] = 32
                                _7623 = mem[_7227]
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4572 + 261] = mem[_7227]
                                idx = 0
                                while idx < _7623:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4572 + idx + 293] = mem[_7227 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_7623) > _7623:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4572 + _7623 + 293] = 0
                                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4572 + 261 len ceil32(_7623) + 32], 
                            _7311 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4572 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4572 + 229] = 32
                            _7707 = mem[_7311]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4572 + 261] = mem[_7311]
                            idx = 0
                            while idx < _7707:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4572 + idx + 293] = mem[_7311 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7707) > _7707:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4572 + _7707 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4572 + 261 len ceil32(_7707) + 32], 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
                        u = t
                        s = tiers.length + -idx + 1
                        while s:
                            if u < 1:
                                revert with 'NH{q', 17
                            if 48 > -(s % 10) - 1:
                                revert with 'NH{q', 17
                            if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                revert with 'NH{q', 50
                            mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        idx = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                            _4517 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                            idx = 0
                            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                idx = idx + 32
                                continue 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4517 + 224] = '.json'
                            if ceil32(_4517) <= _4517:
                                _7228 = mem[64]
                                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4517 + 229
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4517 + 229] = 32
                                _7624 = mem[_7228]
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4517 + 261] = mem[_7228]
                                idx = 0
                                while idx < _7624:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4517 + idx + 293] = mem[_7228 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_7624) > _7624:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4517 + _7624 + 293] = 0
                                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4517 + 261 len ceil32(_7624) + 32], 
                            _7312 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4517 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4517 + 229] = 32
                            _7708 = mem[_7312]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4517 + 261] = mem[_7312]
                            idx = 0
                            while idx < _7708:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4517 + idx + 293] = mem[_7312 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7708) > _7708:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4517 + _7708 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4517 + 261 len ceil32(_7708) + 32], 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                        _4573 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4573 + 224] = '.json'
                        if ceil32(_4573) <= _4573:
                            _7229 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4573 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4573 + 229] = 32
                            _7625 = mem[_7229]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4573 + 261] = mem[_7229]
                            idx = 0
                            while idx < _7625:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4573 + idx + 293] = mem[_7229 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7625) > _7625:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4573 + _7625 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4573 + 261 len ceil32(_7625) + 32], 
                        _7313 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4573 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4573 + 229] = 32
                        _7709 = mem[_7313]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4573 + 261] = mem[_7313]
                        idx = 0
                        while idx < _7709:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4573 + idx + 293] = mem[_7313 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7709) > _7709:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4573 + _7709 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4573 + 261 len ceil32(_7709) + 32], 
                    s = 0
                    idx = 1
                    while idx:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 'NH{q', 65
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
                    if not s:
                        t = s
                        idx = 1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                _7618 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7618)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7618)]
                                if ceil32(_7618) > _7618:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7618 + 293] = 0
                                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7618) + 32], 
                            _7702 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7702)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7702)]
                            if ceil32(_7702) > _7702:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7702 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7702) + 32], 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                        if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            _7619 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7619)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7619)]
                            if ceil32(_7619) > _7619:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7619 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7619) + 32], 
                        _7703 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7703)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7703)]
                        if ceil32(_7703) > _7703:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7703 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7703) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
                    t = s
                    idx = 1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                        if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            _7620 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7620)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7620)]
                            if ceil32(_7620) > _7620:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7620 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7620) + 32], 
                        _7704 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7704)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7704)]
                        if ceil32(_7704) > _7704:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7704 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7704) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _7621 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7621)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7621)]
                        if ceil32(_7621) > _7621:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7621 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7621) + 32], 
                    _7705 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7705)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7705)]
                    if ceil32(_7705) > _7705:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7705 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7705) + 32], 
                mem[ceil32(stor12.length.field_1) + 160] = uint256(tiers.field_0)
                idx = ceil32(stor12.length.field_1) + 160
                s = 0
                while ceil32(stor12.length.field_1) + (32 * tiers.length) + 128 > idx:
                    mem[idx + 32] = tiers[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[0] = arg1
                mem[32] = 6
                idx = 0
                while idx < tiers.length:
                    if idx >= tiers.length:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                        revert with 'NH{q', 17
                    if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if tiers.length < idx:
                        revert with 'NH{q', 17
                    if tiers.length - idx > -2:
                        revert with 'NH{q', 17
                    if not tiers.length + -idx + 1:
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                        idx = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                            idx = 0
                            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                idx = idx + 32
                                continue 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                            _7318 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                            _7714 = mem[_7318]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_7318]
                            idx = 0
                            while idx < _7714:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_7318 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7714) > _7714:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _7714 + 326] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_7714) + 32]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                        _7319 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                        _7715 = mem[_7319]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_7319]
                        idx = 0
                        while idx < _7715:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_7319 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7715) > _7715:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _7715 + 326] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_7715) + 32]
                    t = 0
                    s = tiers.length + -idx + 1
                    while s:
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        s = s / 10
                        continue 
                    if t > test266151307():
                        revert with 'NH{q', 65
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
                    if not t:
                        u = t
                        s = tiers.length + -idx + 1
                        while s:
                            if u < 1:
                                revert with 'NH{q', 17
                            if 48 > -(s % 10) - 1:
                                revert with 'NH{q', 17
                            if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                revert with 'NH{q', 50
                            mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        idx = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                            _10164 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                            idx = 0
                            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                idx = idx + 32
                                continue 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10164 + 224] = '.json'
                            if ceil32(_10164) <= _10164:
                                _12710 = mem[64]
                                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10164 + 229
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10164 + 229] = 32
                                _12998 = mem[_12710]
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10164 + 261] = mem[_12710]
                                idx = 0
                                while idx < _12998:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10164 + idx + 293] = mem[_12710 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_12998) > _12998:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10164 + _12998 + 293] = 0
                                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10164 + 261 len ceil32(_12998) + 32], 
                            _12774 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10164 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10164 + 229] = 32
                            _13062 = mem[_12774]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10164 + 261] = mem[_12774]
                            idx = 0
                            while idx < _13062:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10164 + idx + 293] = mem[_12774 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_13062) > _13062:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10164 + _13062 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10164 + 261 len ceil32(_13062) + 32], 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                        _10228 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10228 + 224] = '.json'
                        if ceil32(_10228) <= _10228:
                            _12711 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10228 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10228 + 229] = 32
                            _12999 = mem[_12711]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10228 + 261] = mem[_12711]
                            idx = 0
                            while idx < _12999:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10228 + idx + 293] = mem[_12711 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_12999) > _12999:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10228 + _12999 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10228 + 261 len ceil32(_12999) + 32], 
                        _12775 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10228 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10228 + 229] = 32
                        _13063 = mem[_12775]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10228 + 261] = mem[_12775]
                        idx = 0
                        while idx < _13063:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10228 + idx + 293] = mem[_12775 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_13063) > _13063:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10228 + _13063 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10228 + 261 len ceil32(_13063) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
                    u = t
                    s = tiers.length + -idx + 1
                    while s:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(s % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        _10165 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10165 + 224] = '.json'
                        if ceil32(_10165) <= _10165:
                            _12712 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10165 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10165 + 229] = 32
                            _13000 = mem[_12712]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10165 + 261] = mem[_12712]
                            idx = 0
                            while idx < _13000:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10165 + idx + 293] = mem[_12712 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_13000) > _13000:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10165 + _13000 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10165 + 261 len ceil32(_13000) + 32], 
                        _12776 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10165 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10165 + 229] = 32
                        _13064 = mem[_12776]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10165 + 261] = mem[_12776]
                        idx = 0
                        while idx < _13064:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10165 + idx + 293] = mem[_12776 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_13064) > _13064:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10165 + _13064 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10165 + 261 len ceil32(_13064) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                    _10229 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10229 + 224] = '.json'
                    if ceil32(_10229) <= _10229:
                        _12713 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10229 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10229 + 229] = 32
                        _13001 = mem[_12713]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10229 + 261] = mem[_12713]
                        idx = 0
                        while idx < _13001:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10229 + idx + 293] = mem[_12713 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_13001) > _13001:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10229 + _13001 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10229 + 261 len ceil32(_13001) + 32], 
                    _12777 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10229 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10229 + 229] = 32
                    _13065 = mem[_12777]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10229 + 261] = mem[_12777]
                    idx = 0
                    while idx < _13065:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10229 + idx + 293] = mem[_12777 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13065) > _13065:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10229 + _13065 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10229 + 261 len ceil32(_13065) + 32], 
                s = 0
                idx = 1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
                if not s:
                    t = s
                    idx = 1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                        if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            _12994 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_12994)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_12994)]
                            if ceil32(_12994) > _12994:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _12994 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_12994) + 32], 
                        _13058 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13058)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13058)]
                        var96001 = ceil32(_13058)
                        if ceil32(_13058) > _13058:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13058 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13058) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _12995 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_12995)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_12995)]
                        var96001 = ceil32(_12995)
                        if ceil32(_12995) > _12995:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _12995 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_12995) + 32], 
                    _13059 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13059)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13059)]
                    var97001 = ceil32(_13059)
                    if ceil32(_13059) > _13059:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13059 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13059) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
                t = s
                idx = 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _12996 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_12996)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_12996)]
                        var96001 = ceil32(_12996)
                        if ceil32(_12996) > _12996:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _12996 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_12996) + 32], 
                    _13060 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13060)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13060)]
                    var97001 = ceil32(_13060)
                    if ceil32(_13060) > _13060:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13060 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13060) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _12997 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_12997)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_12997)]
                    var97001 = ceil32(_12997)
                    if ceil32(_12997) > _12997:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _12997 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_12997) + 32], 
                _13061 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13061)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13061)]
                var98001 = ceil32(_13061)
                if ceil32(_13061) > _13061:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13061 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13061) + 32], 
            if 31 >= stor12.length.field_1:
                mem[128] = 256 * stor12.length.field_8
                if stor12.length.field_1 <= 0:
                    return ''
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 160
                mem[ceil32(stor12.length.field_1) + 128] = tiers.length
                if not tiers.length:
                    mem[0] = arg1
                    mem[32] = 6
                    idx = 0
                    while idx < tiers.length:
                        if idx >= tiers.length:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                            revert with 'NH{q', 17
                        if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        if tiers.length < idx:
                            revert with 'NH{q', 17
                        if tiers.length - idx > -2:
                            revert with 'NH{q', 17
                        if not tiers.length + -idx + 1:
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                            idx = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                                idx = 0
                                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                    idx = idx + 32
                                    continue 
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                                _2529 = mem[64]
                                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                                _2637 = mem[_2529]
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_2529]
                                idx = 0
                                while idx < _2637:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_2529 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_2637) > _2637:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _2637 + 326] = 0
                                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_2637) + 32]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                            idx = 0
                            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                idx = idx + 32
                                continue 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                            _2530 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                            _2638 = mem[_2530]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_2530]
                            idx = 0
                            while idx < _2638:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_2530 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_2638) > _2638:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _2638 + 326] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_2638) + 32]
                        t = 0
                        s = tiers.length + -idx + 1
                        while s:
                            if t == -1:
                                revert with 'NH{q', 17
                            t = t + 1
                            s = s / 10
                            continue 
                        if t > test266151307():
                            revert with 'NH{q', 65
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
                        if not t:
                            u = t
                            s = tiers.length + -idx + 1
                            while s:
                                if u < 1:
                                    revert with 'NH{q', 17
                                if 48 > -(s % 10) - 1:
                                    revert with 'NH{q', 17
                                if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                    revert with 'NH{q', 50
                                mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                u = u - 1
                                s = s / 10
                                continue 
                            idx = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                                _4525 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                                idx = 0
                                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                    idx = idx + 32
                                    continue 
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4525 + 224] = '.json'
                                if ceil32(_4525) <= _4525:
                                    _7237 = mem[64]
                                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4525 + 229
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4525 + 229] = 32
                                    _7633 = mem[_7237]
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4525 + 261] = mem[_7237]
                                    idx = 0
                                    while idx < _7633:
                                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4525 + idx + 293] = mem[_7237 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_7633) > _7633:
                                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4525 + _7633 + 293] = 0
                                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4525 + 261 len ceil32(_7633) + 32], 
                                _7329 = mem[64]
                                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4525 + 229
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4525 + 229] = 32
                                _7721 = mem[_7329]
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4525 + 261] = mem[_7329]
                                idx = 0
                                while idx < _7721:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4525 + idx + 293] = mem[_7329 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_7721) > _7721:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4525 + _7721 + 293] = 0
                                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4525 + 261 len ceil32(_7721) + 32], 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                            _4582 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                            idx = 0
                            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                idx = idx + 32
                                continue 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4582 + 224] = '.json'
                            if ceil32(_4582) <= _4582:
                                _7238 = mem[64]
                                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4582 + 229
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4582 + 229] = 32
                                _7634 = mem[_7238]
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4582 + 261] = mem[_7238]
                                idx = 0
                                while idx < _7634:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4582 + idx + 293] = mem[_7238 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_7634) > _7634:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4582 + _7634 + 293] = 0
                                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4582 + 261 len ceil32(_7634) + 32], 
                            _7330 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4582 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4582 + 229] = 32
                            _7722 = mem[_7330]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4582 + 261] = mem[_7330]
                            idx = 0
                            while idx < _7722:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4582 + idx + 293] = mem[_7330 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7722) > _7722:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4582 + _7722 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4582 + 261 len ceil32(_7722) + 32], 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
                        u = t
                        s = tiers.length + -idx + 1
                        while s:
                            if u < 1:
                                revert with 'NH{q', 17
                            if 48 > -(s % 10) - 1:
                                revert with 'NH{q', 17
                            if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                revert with 'NH{q', 50
                            mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        idx = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                            _4526 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                            idx = 0
                            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                idx = idx + 32
                                continue 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4526 + 224] = '.json'
                            if ceil32(_4526) <= _4526:
                                _7239 = mem[64]
                                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4526 + 229
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4526 + 229] = 32
                                _7635 = mem[_7239]
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4526 + 261] = mem[_7239]
                                idx = 0
                                while idx < _7635:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4526 + idx + 293] = mem[_7239 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_7635) > _7635:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4526 + _7635 + 293] = 0
                                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4526 + 261 len ceil32(_7635) + 32], 
                            _7331 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4526 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4526 + 229] = 32
                            _7723 = mem[_7331]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4526 + 261] = mem[_7331]
                            idx = 0
                            while idx < _7723:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4526 + idx + 293] = mem[_7331 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7723) > _7723:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4526 + _7723 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4526 + 261 len ceil32(_7723) + 32], 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                        _4583 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4583 + 224] = '.json'
                        if ceil32(_4583) <= _4583:
                            _7240 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4583 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4583 + 229] = 32
                            _7636 = mem[_7240]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4583 + 261] = mem[_7240]
                            idx = 0
                            while idx < _7636:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4583 + idx + 293] = mem[_7240 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7636) > _7636:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4583 + _7636 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4583 + 261 len ceil32(_7636) + 32], 
                        _7332 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4583 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4583 + 229] = 32
                        _7724 = mem[_7332]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4583 + 261] = mem[_7332]
                        idx = 0
                        while idx < _7724:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4583 + idx + 293] = mem[_7332 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7724) > _7724:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4583 + _7724 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4583 + 261 len ceil32(_7724) + 32], 
                    s = 0
                    idx = 1
                    while idx:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 'NH{q', 65
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
                    if not s:
                        t = s
                        idx = 1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                _7629 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7629)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7629)]
                                if ceil32(_7629) > _7629:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7629 + 293] = 0
                                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7629) + 32], 
                            _7717 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7717)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7717)]
                            if ceil32(_7717) > _7717:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7717 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7717) + 32], 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                        if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            _7630 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7630)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7630)]
                            if ceil32(_7630) > _7630:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7630 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7630) + 32], 
                        _7718 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7718)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7718)]
                        if ceil32(_7718) > _7718:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7718 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7718) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
                    t = s
                    idx = 1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                        if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            _7631 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7631)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7631)]
                            if ceil32(_7631) > _7631:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7631 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7631) + 32], 
                        _7719 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7719)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7719)]
                        if ceil32(_7719) > _7719:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7719 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7719) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _7632 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7632)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7632)]
                        if ceil32(_7632) > _7632:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7632 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7632) + 32], 
                    _7720 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7720)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7720)]
                    if ceil32(_7720) > _7720:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7720 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7720) + 32], 
                mem[ceil32(stor12.length.field_1) + 160] = uint256(tiers.field_0)
                idx = ceil32(stor12.length.field_1) + 160
                s = 0
                while ceil32(stor12.length.field_1) + (32 * tiers.length) + 128 > idx:
                    mem[idx + 32] = tiers[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[0] = arg1
                mem[32] = 6
                idx = 0
                while idx < tiers.length:
                    if idx >= tiers.length:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                        revert with 'NH{q', 17
                    if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if tiers.length < idx:
                        revert with 'NH{q', 17
                    if tiers.length - idx > -2:
                        revert with 'NH{q', 17
                    if not tiers.length + -idx + 1:
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                        idx = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                            idx = 0
                            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                idx = idx + 32
                                continue 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                            _7337 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                            _7729 = mem[_7337]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_7337]
                            idx = 0
                            while idx < _7729:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_7337 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7729) > _7729:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _7729 + 326] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_7729) + 32]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                        _7338 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                        _7730 = mem[_7338]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_7338]
                        idx = 0
                        while idx < _7730:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_7338 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7730) > _7730:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _7730 + 326] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_7730) + 32]
                    t = 0
                    s = tiers.length + -idx + 1
                    while s:
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        s = s / 10
                        continue 
                    if t > test266151307():
                        revert with 'NH{q', 65
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
                    if not t:
                        u = t
                        s = tiers.length + -idx + 1
                        while s:
                            if u < 1:
                                revert with 'NH{q', 17
                            if 48 > -(s % 10) - 1:
                                revert with 'NH{q', 17
                            if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                revert with 'NH{q', 50
                            mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        idx = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                            _10172 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                            idx = 0
                            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                idx = idx + 32
                                continue 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10172 + 224] = '.json'
                            if ceil32(_10172) <= _10172:
                                _12718 = mem[64]
                                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10172 + 229
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10172 + 229] = 32
                                _13006 = mem[_12718]
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10172 + 261] = mem[_12718]
                                idx = 0
                                while idx < _13006:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10172 + idx + 293] = mem[_12718 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_13006) > _13006:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10172 + _13006 + 293] = 0
                                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10172 + 261 len ceil32(_13006) + 32], 
                            _12786 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10172 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10172 + 229] = 32
                            _13070 = mem[_12786]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10172 + 261] = mem[_12786]
                            idx = 0
                            while idx < _13070:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10172 + idx + 293] = mem[_12786 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_13070) > _13070:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10172 + _13070 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10172 + 261 len ceil32(_13070) + 32], 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                        _10252 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10252 + 224] = '.json'
                        if ceil32(_10252) <= _10252:
                            _12719 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10252 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10252 + 229] = 32
                            _13007 = mem[_12719]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10252 + 261] = mem[_12719]
                            idx = 0
                            while idx < _13007:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10252 + idx + 293] = mem[_12719 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_13007) > _13007:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10252 + _13007 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10252 + 261 len ceil32(_13007) + 32], 
                        _12787 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10252 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10252 + 229] = 32
                        _13071 = mem[_12787]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10252 + 261] = mem[_12787]
                        idx = 0
                        while idx < _13071:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10252 + idx + 293] = mem[_12787 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_13071) > _13071:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10252 + _13071 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10252 + 261 len ceil32(_13071) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
                    u = t
                    s = tiers.length + -idx + 1
                    while s:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(s % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        _10173 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10173 + 224] = '.json'
                        if ceil32(_10173) <= _10173:
                            _12720 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10173 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10173 + 229] = 32
                            _13008 = mem[_12720]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10173 + 261] = mem[_12720]
                            idx = 0
                            while idx < _13008:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10173 + idx + 293] = mem[_12720 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_13008) > _13008:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10173 + _13008 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10173 + 261 len ceil32(_13008) + 32], 
                        _12788 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10173 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10173 + 229] = 32
                        _13072 = mem[_12788]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10173 + 261] = mem[_12788]
                        idx = 0
                        while idx < _13072:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10173 + idx + 293] = mem[_12788 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_13072) > _13072:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10173 + _13072 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10173 + 261 len ceil32(_13072) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                    _10253 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10253 + 224] = '.json'
                    if ceil32(_10253) <= _10253:
                        _12721 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10253 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10253 + 229] = 32
                        _13009 = mem[_12721]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10253 + 261] = mem[_12721]
                        idx = 0
                        while idx < _13009:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10253 + idx + 293] = mem[_12721 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_13009) > _13009:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10253 + _13009 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10253 + 261 len ceil32(_13009) + 32], 
                    _12789 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10253 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10253 + 229] = 32
                    _13073 = mem[_12789]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10253 + 261] = mem[_12789]
                    idx = 0
                    while idx < _13073:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10253 + idx + 293] = mem[_12789 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13073) > _13073:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10253 + _13073 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10253 + 261 len ceil32(_13073) + 32], 
                s = 0
                idx = 1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
                if not s:
                    t = s
                    idx = 1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                        if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            _13002 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13002)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13002)]
                            if ceil32(_13002) > _13002:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13002 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13002) + 32], 
                        _13066 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13066)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13066)]
                        var98001 = ceil32(_13066)
                        if ceil32(_13066) > _13066:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13066 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13066) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _13003 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13003)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13003)]
                        var98001 = ceil32(_13003)
                        if ceil32(_13003) > _13003:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13003 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13003) + 32], 
                    _13067 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13067)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13067)]
                    var99001 = ceil32(_13067)
                    if ceil32(_13067) > _13067:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13067 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13067) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
                t = s
                idx = 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _13004 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13004)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13004)]
                        var98001 = ceil32(_13004)
                        if ceil32(_13004) > _13004:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13004 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13004) + 32], 
                    _13068 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13068)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13068)]
                    var99001 = ceil32(_13068)
                    if ceil32(_13068) > _13068:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13068 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13068) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _13005 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13005)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13005)]
                    var99001 = ceil32(_13005)
                    if ceil32(_13005) > _13005:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13005 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13005) + 32], 
                _13069 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13069)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13069)]
                var100001 = ceil32(_13069)
                if ceil32(_13069) > _13069:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13069 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13069) + 32], 
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
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 160
            mem[ceil32(stor12.length.field_1) + 128] = tiers.length
            if not tiers.length:
                mem[0] = arg1
                mem[32] = 6
                idx = 0
                while idx < tiers.length:
                    if idx >= tiers.length:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                        revert with 'NH{q', 17
                    if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if tiers.length < idx:
                        revert with 'NH{q', 17
                    if tiers.length - idx > -2:
                        revert with 'NH{q', 17
                    if not tiers.length + -idx + 1:
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                        idx = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                            idx = 0
                            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                idx = idx + 32
                                continue 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                            _4727 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                            _4859 = mem[_4727]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_4727]
                            idx = 0
                            while idx < _4859:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_4727 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_4859) > _4859:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _4859 + 326] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_4859) + 32]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                        _4728 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                        _4860 = mem[_4728]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_4728]
                        idx = 0
                        while idx < _4860:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_4728 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_4860) > _4860:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _4860 + 326] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_4860) + 32]
                    t = 0
                    s = tiers.length + -idx + 1
                    while s:
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        s = s / 10
                        continue 
                    if t > test266151307():
                        revert with 'NH{q', 65
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
                    if not t:
                        u = t
                        s = tiers.length + -idx + 1
                        while s:
                            if u < 1:
                                revert with 'NH{q', 17
                            if 48 > -(s % 10) - 1:
                                revert with 'NH{q', 17
                            if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                revert with 'NH{q', 50
                            mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        idx = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                            _7112 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                            idx = 0
                            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                idx = idx + 32
                                continue 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7112 + 224] = '.json'
                            if ceil32(_7112) <= _7112:
                                _10566 = mem[64]
                                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7112 + 229
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7112 + 229] = 32
                                _10806 = mem[_10566]
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7112 + 261] = mem[_10566]
                                idx = 0
                                while idx < _10806:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7112 + idx + 293] = mem[_10566 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_10806) > _10806:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7112 + _10806 + 293] = 0
                                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7112 + 261 len ceil32(_10806) + 32], 
                            _10610 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7112 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7112 + 229] = 32
                            _10846 = mem[_10610]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7112 + 261] = mem[_10610]
                            idx = 0
                            while idx < _10846:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7112 + idx + 293] = mem[_10610 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_10846) > _10846:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7112 + _10846 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7112 + 261 len ceil32(_10846) + 32], 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                        _7160 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7160 + 224] = '.json'
                        if ceil32(_7160) <= _7160:
                            _10567 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7160 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7160 + 229] = 32
                            _10807 = mem[_10567]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7160 + 261] = mem[_10567]
                            idx = 0
                            while idx < _10807:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7160 + idx + 293] = mem[_10567 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_10807) > _10807:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7160 + _10807 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7160 + 261 len ceil32(_10807) + 32], 
                        _10611 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7160 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7160 + 229] = 32
                        _10847 = mem[_10611]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7160 + 261] = mem[_10611]
                        idx = 0
                        while idx < _10847:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7160 + idx + 293] = mem[_10611 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_10847) > _10847:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7160 + _10847 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7160 + 261 len ceil32(_10847) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
                    u = t
                    s = tiers.length + -idx + 1
                    while s:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(s % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        _7113 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7113 + 224] = '.json'
                        if ceil32(_7113) <= _7113:
                            _10568 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7113 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7113 + 229] = 32
                            _10808 = mem[_10568]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7113 + 261] = mem[_10568]
                            idx = 0
                            while idx < _10808:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7113 + idx + 293] = mem[_10568 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_10808) > _10808:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7113 + _10808 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7113 + 261 len ceil32(_10808) + 32], 
                        _10612 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7113 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7113 + 229] = 32
                        _10848 = mem[_10612]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7113 + 261] = mem[_10612]
                        idx = 0
                        while idx < _10848:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7113 + idx + 293] = mem[_10612 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_10848) > _10848:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7113 + _10848 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7113 + 261 len ceil32(_10848) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                    _7161 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7161 + 224] = '.json'
                    if ceil32(_7161) <= _7161:
                        _10569 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7161 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7161 + 229] = 32
                        _10809 = mem[_10569]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7161 + 261] = mem[_10569]
                        idx = 0
                        while idx < _10809:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7161 + idx + 293] = mem[_10569 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_10809) > _10809:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7161 + _10809 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7161 + 261 len ceil32(_10809) + 32], 
                    _10613 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7161 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7161 + 229] = 32
                    _10849 = mem[_10613]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7161 + 261] = mem[_10613]
                    idx = 0
                    while idx < _10849:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7161 + idx + 293] = mem[_10613 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_10849) > _10849:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7161 + _10849 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7161 + 261 len ceil32(_10849) + 32], 
                s = 0
                idx = 1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
                if not s:
                    t = s
                    idx = 1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                        if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            _10802 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10802)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10802)]
                            if ceil32(_10802) > _10802:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10802 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10802) + 32], 
                        _10842 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10842)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10842)]
                        var97001 = ceil32(_10842)
                        if ceil32(_10842) > _10842:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10842 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10842) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _10803 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10803)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10803)]
                        var97001 = ceil32(_10803)
                        if ceil32(_10803) > _10803:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10803 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10803) + 32], 
                    _10843 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10843)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10843)]
                    var98001 = ceil32(_10843)
                    if ceil32(_10843) > _10843:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10843 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10843) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
                t = s
                idx = 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _10804 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10804)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10804)]
                        var97001 = ceil32(_10804)
                        if ceil32(_10804) > _10804:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10804 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10804) + 32], 
                    _10844 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10844)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10844)]
                    var98001 = ceil32(_10844)
                    if ceil32(_10844) > _10844:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10844 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10844) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _10805 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10805)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10805)]
                    var98001 = ceil32(_10805)
                    if ceil32(_10805) > _10805:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10805 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10805) + 32], 
                _10845 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10845)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10845)]
                var99001 = ceil32(_10845)
                if ceil32(_10845) > _10845:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10845 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10845) + 32], 
            mem[ceil32(stor12.length.field_1) + 160] = uint256(tiers.field_0)
            idx = ceil32(stor12.length.field_1) + 160
            s = 0
            while ceil32(stor12.length.field_1) + (32 * tiers.length) + 128 > idx:
                mem[idx + 32] = tiers[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[0] = arg1
            mem[32] = 6
            idx = 0
            while idx < tiers.length:
                if idx >= tiers.length:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                    revert with 'NH{q', 17
                if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if tiers.length < idx:
                    revert with 'NH{q', 17
                if tiers.length - idx > -2:
                    revert with 'NH{q', 17
                if not tiers.length + -idx + 1:
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                        _10618 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                        _10854 = mem[_10618]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_10618]
                        idx = 0
                        while idx < _10854:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_10618 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_10854) > _10854:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _10854 + 326] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_10854) + 32]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                    _10619 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                    _10855 = mem[_10619]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_10619]
                    idx = 0
                    while idx < _10855:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_10619 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_10855) > _10855:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _10855 + 326] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_10855) + 32]
                t = 0
                s = tiers.length + -idx + 1
                while s:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    s = s / 10
                    continue 
                if t > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
                if not t:
                    u = t
                    s = tiers.length + -idx + 1
                    while s:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(s % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        _12516 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12516 + 224] = '.json'
                        if ceil32(_12516) <= _12516:
                            _14310 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12516 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12516 + 229] = 32
                            _14438 = mem[_14310]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12516 + 261] = mem[_14310]
                            idx = 0
                            while idx < _14438:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12516 + idx + 293] = mem[_14310 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_14438) > _14438:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12516 + _14438 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12516 + 261 len ceil32(_14438) + 32], 
                        _14342 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12516 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12516 + 229] = 32
                        _14470 = mem[_14342]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12516 + 261] = mem[_14342]
                        idx = 0
                        while idx < _14470:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12516 + idx + 293] = mem[_14342 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_14470) > _14470:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12516 + _14470 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12516 + 261 len ceil32(_14470) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                    _12548 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12548 + 224] = '.json'
                    if ceil32(_12548) <= _12548:
                        _14311 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12548 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12548 + 229] = 32
                        _14439 = mem[_14311]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12548 + 261] = mem[_14311]
                        idx = 0
                        while idx < _14439:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12548 + idx + 293] = mem[_14311 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_14439) > _14439:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12548 + _14439 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12548 + 261 len ceil32(_14439) + 32], 
                    _14343 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12548 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12548 + 229] = 32
                    _14471 = mem[_14343]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12548 + 261] = mem[_14343]
                    idx = 0
                    while idx < _14471:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12548 + idx + 293] = mem[_14343 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_14471) > _14471:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12548 + _14471 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12548 + 261 len ceil32(_14471) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
                u = t
                s = tiers.length + -idx + 1
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                idx = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    _12517 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12517 + 224] = '.json'
                    if ceil32(_12517) <= _12517:
                        _14312 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12517 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12517 + 229] = 32
                        _14440 = mem[_14312]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12517 + 261] = mem[_14312]
                        idx = 0
                        while idx < _14440:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12517 + idx + 293] = mem[_14312 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_14440) > _14440:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12517 + _14440 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12517 + 261 len ceil32(_14440) + 32], 
                    _14344 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12517 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12517 + 229] = 32
                    _14472 = mem[_14344]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12517 + 261] = mem[_14344]
                    idx = 0
                    while idx < _14472:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12517 + idx + 293] = mem[_14344 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_14472) > _14472:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12517 + _14472 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12517 + 261 len ceil32(_14472) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                _12549 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12549 + 224] = '.json'
                if ceil32(_12549) <= _12549:
                    _14313 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12549 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12549 + 229] = 32
                    _14441 = mem[_14313]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12549 + 261] = mem[_14313]
                    idx = 0
                    while idx < _14441:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12549 + idx + 293] = mem[_14313 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_14441) > _14441:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12549 + _14441 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12549 + 261 len ceil32(_14441) + 32], 
                _14345 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12549 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12549 + 229] = 32
                _14473 = mem[_14345]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12549 + 261] = mem[_14345]
                idx = 0
                while idx < _14473:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12549 + idx + 293] = mem[_14345 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_14473) > _14473:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12549 + _14473 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12549 + 261 len ceil32(_14473) + 32], 
            s = 0
            idx = 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
            if not s:
                t = s
                idx = 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _14434 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14434)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14434)]
                        if ceil32(_14434) > _14434:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14434 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14434) + 32], 
                    _14466 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14466)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14466)]
                    var101001 = ceil32(_14466)
                    if ceil32(_14466) > _14466:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14466 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14466) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _14435 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14435)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14435)]
                    var101001 = ceil32(_14435)
                    if ceil32(_14435) > _14435:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14435 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14435) + 32], 
                _14467 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14467)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14467)]
                var102001 = ceil32(_14467)
                if ceil32(_14467) > _14467:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14467 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14467) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
            t = s
            idx = 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _14436 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14436)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14436)]
                    var101001 = ceil32(_14436)
                    if ceil32(_14436) > _14436:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14436 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14436) + 32], 
                _14468 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14468)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14468)]
                var102001 = ceil32(_14468)
                if ceil32(_14468) > _14468:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14468 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14468) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
            var80001 = ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                _14437 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14437)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14437)]
                var102001 = ceil32(_14437)
                if ceil32(_14437) > _14437:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14437 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14437) + 32], 
            _14469 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14469)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14469)]
            var103001 = ceil32(_14469)
            if ceil32(_14469) > _14469:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14469 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14469) + 32], 
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor12.length.field_1:
            if stor12.length.field_1 <= 0:
                return ''
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 160
            mem[ceil32(stor12.length.field_1) + 128] = tiers.length
            if not tiers.length:
                mem[0] = arg1
                mem[32] = 6
                idx = 0
                while idx < tiers.length:
                    if idx >= tiers.length:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                        revert with 'NH{q', 17
                    if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if tiers.length < idx:
                        revert with 'NH{q', 17
                    if tiers.length - idx > -2:
                        revert with 'NH{q', 17
                    if not tiers.length + -idx + 1:
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                        idx = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                            idx = 0
                            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                idx = idx + 32
                                continue 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                            _2535 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                            _2643 = mem[_2535]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_2535]
                            idx = 0
                            while idx < _2643:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_2535 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_2643) > _2643:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _2643 + 326] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_2643) + 32]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                        _2536 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                        _2644 = mem[_2536]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_2536]
                        idx = 0
                        while idx < _2644:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_2536 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2644) > _2644:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _2644 + 326] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_2644) + 32]
                    t = 0
                    s = tiers.length + -idx + 1
                    while s:
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        s = s / 10
                        continue 
                    if t > test266151307():
                        revert with 'NH{q', 65
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
                    if not t:
                        u = t
                        s = tiers.length + -idx + 1
                        while s:
                            if u < 1:
                                revert with 'NH{q', 17
                            if 48 > -(s % 10) - 1:
                                revert with 'NH{q', 17
                            if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                revert with 'NH{q', 50
                            mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        idx = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                            _4530 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                            idx = 0
                            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                idx = idx + 32
                                continue 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4530 + 224] = '.json'
                            if ceil32(_4530) <= _4530:
                                _7247 = mem[64]
                                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4530 + 229
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4530 + 229] = 32
                                _7643 = mem[_7247]
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4530 + 261] = mem[_7247]
                                idx = 0
                                while idx < _7643:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4530 + idx + 293] = mem[_7247 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_7643) > _7643:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4530 + _7643 + 293] = 0
                                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4530 + 261 len ceil32(_7643) + 32], 
                            _7343 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4530 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4530 + 229] = 32
                            _7735 = mem[_7343]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4530 + 261] = mem[_7343]
                            idx = 0
                            while idx < _7735:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4530 + idx + 293] = mem[_7343 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7735) > _7735:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4530 + _7735 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4530 + 261 len ceil32(_7735) + 32], 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                        _4592 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4592 + 224] = '.json'
                        if ceil32(_4592) <= _4592:
                            _7248 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4592 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4592 + 229] = 32
                            _7644 = mem[_7248]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4592 + 261] = mem[_7248]
                            idx = 0
                            while idx < _7644:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4592 + idx + 293] = mem[_7248 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7644) > _7644:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4592 + _7644 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4592 + 261 len ceil32(_7644) + 32], 
                        _7344 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4592 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4592 + 229] = 32
                        _7736 = mem[_7344]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4592 + 261] = mem[_7344]
                        idx = 0
                        while idx < _7736:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4592 + idx + 293] = mem[_7344 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7736) > _7736:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4592 + _7736 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4592 + 261 len ceil32(_7736) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
                    u = t
                    s = tiers.length + -idx + 1
                    while s:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(s % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        _4531 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4531 + 224] = '.json'
                        if ceil32(_4531) <= _4531:
                            _7249 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4531 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4531 + 229] = 32
                            _7645 = mem[_7249]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4531 + 261] = mem[_7249]
                            idx = 0
                            while idx < _7645:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4531 + idx + 293] = mem[_7249 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7645) > _7645:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4531 + _7645 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4531 + 261 len ceil32(_7645) + 32], 
                        _7345 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4531 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4531 + 229] = 32
                        _7737 = mem[_7345]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4531 + 261] = mem[_7345]
                        idx = 0
                        while idx < _7737:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4531 + idx + 293] = mem[_7345 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7737) > _7737:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4531 + _7737 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4531 + 261 len ceil32(_7737) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                    _4593 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4593 + 224] = '.json'
                    if ceil32(_4593) <= _4593:
                        _7250 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4593 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4593 + 229] = 32
                        _7646 = mem[_7250]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4593 + 261] = mem[_7250]
                        idx = 0
                        while idx < _7646:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4593 + idx + 293] = mem[_7250 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7646) > _7646:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4593 + _7646 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4593 + 261 len ceil32(_7646) + 32], 
                    _7346 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4593 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4593 + 229] = 32
                    _7738 = mem[_7346]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4593 + 261] = mem[_7346]
                    idx = 0
                    while idx < _7738:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4593 + idx + 293] = mem[_7346 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_7738) > _7738:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4593 + _7738 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4593 + 261 len ceil32(_7738) + 32], 
                s = 0
                idx = 1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
                if not s:
                    t = s
                    idx = 1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                        if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            _7639 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7639)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7639)]
                            if ceil32(_7639) > _7639:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7639 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7639) + 32], 
                        _7731 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7731)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7731)]
                        if ceil32(_7731) > _7731:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7731 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7731) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _7640 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7640)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7640)]
                        if ceil32(_7640) > _7640:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7640 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7640) + 32], 
                    _7732 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7732)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7732)]
                    if ceil32(_7732) > _7732:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7732 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7732) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
                t = s
                idx = 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _7641 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7641)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7641)]
                        if ceil32(_7641) > _7641:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7641 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7641) + 32], 
                    _7733 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7733)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7733)]
                    if ceil32(_7733) > _7733:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7733 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7733) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _7642 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7642)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7642)]
                    if ceil32(_7642) > _7642:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7642 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7642) + 32], 
                _7734 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7734)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7734)]
                if ceil32(_7734) > _7734:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7734 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7734) + 32], 
            mem[ceil32(stor12.length.field_1) + 160] = uint256(tiers.field_0)
            idx = ceil32(stor12.length.field_1) + 160
            s = 0
            while ceil32(stor12.length.field_1) + (32 * tiers.length) + 128 > idx:
                mem[idx + 32] = tiers[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[0] = arg1
            mem[32] = 6
            idx = 0
            while idx < tiers.length:
                if idx >= tiers.length:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                    revert with 'NH{q', 17
                if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if tiers.length < idx:
                    revert with 'NH{q', 17
                if tiers.length - idx > -2:
                    revert with 'NH{q', 17
                if not tiers.length + -idx + 1:
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                        _7351 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                        _7743 = mem[_7351]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_7351]
                        idx = 0
                        while idx < _7743:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_7351 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7743) > _7743:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _7743 + 326] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_7743) + 32]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                    _7352 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                    _7744 = mem[_7352]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_7352]
                    idx = 0
                    while idx < _7744:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_7352 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_7744) > _7744:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _7744 + 326] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_7744) + 32]
                t = 0
                s = tiers.length + -idx + 1
                while s:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    s = s / 10
                    continue 
                if t > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
                if not t:
                    u = t
                    s = tiers.length + -idx + 1
                    while s:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(s % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        _10176 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10176 + 224] = '.json'
                        if ceil32(_10176) <= _10176:
                            _12726 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10176 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10176 + 229] = 32
                            _13014 = mem[_12726]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10176 + 261] = mem[_12726]
                            idx = 0
                            while idx < _13014:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10176 + idx + 293] = mem[_12726 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_13014) > _13014:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10176 + _13014 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10176 + 261 len ceil32(_13014) + 32], 
                        _12794 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10176 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10176 + 229] = 32
                        _13078 = mem[_12794]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10176 + 261] = mem[_12794]
                        idx = 0
                        while idx < _13078:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10176 + idx + 293] = mem[_12794 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_13078) > _13078:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10176 + _13078 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10176 + 261 len ceil32(_13078) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                    _10276 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10276 + 224] = '.json'
                    if ceil32(_10276) <= _10276:
                        _12727 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10276 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10276 + 229] = 32
                        _13015 = mem[_12727]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10276 + 261] = mem[_12727]
                        idx = 0
                        while idx < _13015:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10276 + idx + 293] = mem[_12727 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_13015) > _13015:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10276 + _13015 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10276 + 261 len ceil32(_13015) + 32], 
                    _12795 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10276 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10276 + 229] = 32
                    _13079 = mem[_12795]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10276 + 261] = mem[_12795]
                    idx = 0
                    while idx < _13079:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10276 + idx + 293] = mem[_12795 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13079) > _13079:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10276 + _13079 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10276 + 261 len ceil32(_13079) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
                u = t
                s = tiers.length + -idx + 1
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                idx = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    _10177 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10177 + 224] = '.json'
                    if ceil32(_10177) <= _10177:
                        _12728 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10177 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10177 + 229] = 32
                        _13016 = mem[_12728]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10177 + 261] = mem[_12728]
                        idx = 0
                        while idx < _13016:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10177 + idx + 293] = mem[_12728 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_13016) > _13016:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10177 + _13016 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10177 + 261 len ceil32(_13016) + 32], 
                    _12796 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10177 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10177 + 229] = 32
                    _13080 = mem[_12796]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10177 + 261] = mem[_12796]
                    idx = 0
                    while idx < _13080:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10177 + idx + 293] = mem[_12796 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13080) > _13080:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10177 + _13080 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10177 + 261 len ceil32(_13080) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                _10277 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10277 + 224] = '.json'
                if ceil32(_10277) <= _10277:
                    _12729 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10277 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10277 + 229] = 32
                    _13017 = mem[_12729]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10277 + 261] = mem[_12729]
                    idx = 0
                    while idx < _13017:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10277 + idx + 293] = mem[_12729 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13017) > _13017:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10277 + _13017 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10277 + 261 len ceil32(_13017) + 32], 
                _12797 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10277 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10277 + 229] = 32
                _13081 = mem[_12797]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10277 + 261] = mem[_12797]
                idx = 0
                while idx < _13081:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10277 + idx + 293] = mem[_12797 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_13081) > _13081:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10277 + _13081 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10277 + 261 len ceil32(_13081) + 32], 
            s = 0
            idx = 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
            if not s:
                t = s
                idx = 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _13010 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13010)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13010)]
                        if ceil32(_13010) > _13010:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13010 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13010) + 32], 
                    _13074 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13074)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13074)]
                    var97001 = ceil32(_13074)
                    if ceil32(_13074) > _13074:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13074 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13074) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _13011 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13011)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13011)]
                    var97001 = ceil32(_13011)
                    if ceil32(_13011) > _13011:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13011 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13011) + 32], 
                _13075 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13075)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13075)]
                var98001 = ceil32(_13075)
                if ceil32(_13075) > _13075:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13075 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13075) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
            t = s
            idx = 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _13012 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13012)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13012)]
                    var97001 = ceil32(_13012)
                    if ceil32(_13012) > _13012:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13012 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13012) + 32], 
                _13076 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13076)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13076)]
                var98001 = ceil32(_13076)
                if ceil32(_13076) > _13076:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13076 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13076) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                _13013 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13013)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13013)]
                var98001 = ceil32(_13013)
                if ceil32(_13013) > _13013:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13013 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13013) + 32], 
            _13077 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13077)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13077)]
            var99001 = ceil32(_13077)
            if ceil32(_13077) > _13077:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13077 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13077) + 32], 
        if 31 >= stor12.length.field_1:
            mem[128] = 256 * stor12.length.field_8
            if stor12.length.field_1 <= 0:
                return ''
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 160
            mem[ceil32(stor12.length.field_1) + 128] = tiers.length
            if not tiers.length:
                mem[0] = arg1
                mem[32] = 6
                idx = 0
                while idx < tiers.length:
                    if idx >= tiers.length:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                        revert with 'NH{q', 17
                    if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if tiers.length < idx:
                        revert with 'NH{q', 17
                    if tiers.length - idx > -2:
                        revert with 'NH{q', 17
                    if not tiers.length + -idx + 1:
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                        idx = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                            idx = 0
                            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                idx = idx + 32
                                continue 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                            _2542 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                            _2650 = mem[_2542]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_2542]
                            idx = 0
                            while idx < _2650:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_2542 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_2650) > _2650:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _2650 + 326] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_2650) + 32]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                        _2543 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                        _2651 = mem[_2543]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_2543]
                        idx = 0
                        while idx < _2651:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_2543 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2651) > _2651:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _2651 + 326] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_2651) + 32]
                    t = 0
                    s = tiers.length + -idx + 1
                    while s:
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        s = s / 10
                        continue 
                    if t > test266151307():
                        revert with 'NH{q', 65
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
                    if not t:
                        u = t
                        s = tiers.length + -idx + 1
                        while s:
                            if u < 1:
                                revert with 'NH{q', 17
                            if 48 > -(s % 10) - 1:
                                revert with 'NH{q', 17
                            if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                revert with 'NH{q', 50
                            mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        idx = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                            _4539 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                            idx = 0
                            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                idx = idx + 32
                                continue 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4539 + 224] = '.json'
                            if ceil32(_4539) <= _4539:
                                _7258 = mem[64]
                                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4539 + 229
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4539 + 229] = 32
                                _7654 = mem[_7258]
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4539 + 261] = mem[_7258]
                                idx = 0
                                while idx < _7654:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4539 + idx + 293] = mem[_7258 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_7654) > _7654:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4539 + _7654 + 293] = 0
                                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4539 + 261 len ceil32(_7654) + 32], 
                            _7362 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4539 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4539 + 229] = 32
                            _7750 = mem[_7362]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4539 + 261] = mem[_7362]
                            idx = 0
                            while idx < _7750:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4539 + idx + 293] = mem[_7362 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7750) > _7750:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4539 + _7750 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4539 + 261 len ceil32(_7750) + 32], 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                        _4602 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4602 + 224] = '.json'
                        if ceil32(_4602) <= _4602:
                            _7259 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4602 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4602 + 229] = 32
                            _7655 = mem[_7259]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4602 + 261] = mem[_7259]
                            idx = 0
                            while idx < _7655:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4602 + idx + 293] = mem[_7259 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7655) > _7655:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4602 + _7655 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4602 + 261 len ceil32(_7655) + 32], 
                        _7363 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4602 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4602 + 229] = 32
                        _7751 = mem[_7363]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4602 + 261] = mem[_7363]
                        idx = 0
                        while idx < _7751:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4602 + idx + 293] = mem[_7363 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7751) > _7751:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4602 + _7751 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4602 + 261 len ceil32(_7751) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
                    u = t
                    s = tiers.length + -idx + 1
                    while s:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(s % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        _4540 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4540 + 224] = '.json'
                        if ceil32(_4540) <= _4540:
                            _7260 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4540 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4540 + 229] = 32
                            _7656 = mem[_7260]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4540 + 261] = mem[_7260]
                            idx = 0
                            while idx < _7656:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4540 + idx + 293] = mem[_7260 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7656) > _7656:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4540 + _7656 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4540 + 261 len ceil32(_7656) + 32], 
                        _7364 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4540 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4540 + 229] = 32
                        _7752 = mem[_7364]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4540 + 261] = mem[_7364]
                        idx = 0
                        while idx < _7752:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4540 + idx + 293] = mem[_7364 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7752) > _7752:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4540 + _7752 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4540 + 261 len ceil32(_7752) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                    _4603 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4603 + 224] = '.json'
                    if ceil32(_4603) <= _4603:
                        _7261 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4603 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4603 + 229] = 32
                        _7657 = mem[_7261]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4603 + 261] = mem[_7261]
                        idx = 0
                        while idx < _7657:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4603 + idx + 293] = mem[_7261 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7657) > _7657:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4603 + _7657 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4603 + 261 len ceil32(_7657) + 32], 
                    _7365 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4603 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4603 + 229] = 32
                    _7753 = mem[_7365]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4603 + 261] = mem[_7365]
                    idx = 0
                    while idx < _7753:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4603 + idx + 293] = mem[_7365 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_7753) > _7753:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4603 + _7753 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4603 + 261 len ceil32(_7753) + 32], 
                s = 0
                idx = 1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
                if not s:
                    t = s
                    idx = 1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                        if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            _7650 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7650)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7650)]
                            if ceil32(_7650) > _7650:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7650 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7650) + 32], 
                        _7746 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7746)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7746)]
                        if ceil32(_7746) > _7746:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7746 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7746) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _7651 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7651)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7651)]
                        if ceil32(_7651) > _7651:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7651 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7651) + 32], 
                    _7747 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7747)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7747)]
                    if ceil32(_7747) > _7747:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7747 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7747) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
                t = s
                idx = 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _7652 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7652)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7652)]
                        if ceil32(_7652) > _7652:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7652 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7652) + 32], 
                    _7748 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7748)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7748)]
                    if ceil32(_7748) > _7748:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7748 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7748) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _7653 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7653)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7653)]
                    if ceil32(_7653) > _7653:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7653 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7653) + 32], 
                _7749 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7749)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7749)]
                if ceil32(_7749) > _7749:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7749 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7749) + 32], 
            mem[ceil32(stor12.length.field_1) + 160] = uint256(tiers.field_0)
            idx = ceil32(stor12.length.field_1) + 160
            s = 0
            while ceil32(stor12.length.field_1) + (32 * tiers.length) + 128 > idx:
                mem[idx + 32] = tiers[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[0] = arg1
            mem[32] = 6
            idx = 0
            while idx < tiers.length:
                if idx >= tiers.length:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                    revert with 'NH{q', 17
                if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if tiers.length < idx:
                    revert with 'NH{q', 17
                if tiers.length - idx > -2:
                    revert with 'NH{q', 17
                if not tiers.length + -idx + 1:
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                        _7370 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                        _7758 = mem[_7370]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_7370]
                        idx = 0
                        while idx < _7758:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_7370 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7758) > _7758:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _7758 + 326] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_7758) + 32]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                    _7371 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                    _7759 = mem[_7371]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_7371]
                    idx = 0
                    while idx < _7759:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_7371 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_7759) > _7759:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _7759 + 326] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_7759) + 32]
                t = 0
                s = tiers.length + -idx + 1
                while s:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    s = s / 10
                    continue 
                if t > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
                if not t:
                    u = t
                    s = tiers.length + -idx + 1
                    while s:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(s % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        _10184 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10184 + 224] = '.json'
                        if ceil32(_10184) <= _10184:
                            _12734 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10184 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10184 + 229] = 32
                            _13022 = mem[_12734]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10184 + 261] = mem[_12734]
                            idx = 0
                            while idx < _13022:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10184 + idx + 293] = mem[_12734 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_13022) > _13022:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10184 + _13022 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10184 + 261 len ceil32(_13022) + 32], 
                        _12806 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10184 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10184 + 229] = 32
                        _13086 = mem[_12806]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10184 + 261] = mem[_12806]
                        idx = 0
                        while idx < _13086:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10184 + idx + 293] = mem[_12806 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_13086) > _13086:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10184 + _13086 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10184 + 261 len ceil32(_13086) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                    _10300 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10300 + 224] = '.json'
                    if ceil32(_10300) <= _10300:
                        _12735 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10300 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10300 + 229] = 32
                        _13023 = mem[_12735]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10300 + 261] = mem[_12735]
                        idx = 0
                        while idx < _13023:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10300 + idx + 293] = mem[_12735 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_13023) > _13023:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10300 + _13023 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10300 + 261 len ceil32(_13023) + 32], 
                    _12807 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10300 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10300 + 229] = 32
                    _13087 = mem[_12807]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10300 + 261] = mem[_12807]
                    idx = 0
                    while idx < _13087:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10300 + idx + 293] = mem[_12807 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13087) > _13087:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10300 + _13087 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10300 + 261 len ceil32(_13087) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
                u = t
                s = tiers.length + -idx + 1
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                idx = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    _10185 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10185 + 224] = '.json'
                    if ceil32(_10185) <= _10185:
                        _12736 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10185 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10185 + 229] = 32
                        _13024 = mem[_12736]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10185 + 261] = mem[_12736]
                        idx = 0
                        while idx < _13024:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10185 + idx + 293] = mem[_12736 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_13024) > _13024:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10185 + _13024 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10185 + 261 len ceil32(_13024) + 32], 
                    _12808 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10185 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10185 + 229] = 32
                    _13088 = mem[_12808]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10185 + 261] = mem[_12808]
                    idx = 0
                    while idx < _13088:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10185 + idx + 293] = mem[_12808 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13088) > _13088:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10185 + _13088 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10185 + 261 len ceil32(_13088) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                _10301 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10301 + 224] = '.json'
                if ceil32(_10301) <= _10301:
                    _12737 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10301 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10301 + 229] = 32
                    _13025 = mem[_12737]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10301 + 261] = mem[_12737]
                    idx = 0
                    while idx < _13025:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10301 + idx + 293] = mem[_12737 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13025) > _13025:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10301 + _13025 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10301 + 261 len ceil32(_13025) + 32], 
                _12809 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10301 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10301 + 229] = 32
                _13089 = mem[_12809]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10301 + 261] = mem[_12809]
                idx = 0
                while idx < _13089:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10301 + idx + 293] = mem[_12809 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_13089) > _13089:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10301 + _13089 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10301 + 261 len ceil32(_13089) + 32], 
            s = 0
            idx = 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
            if not s:
                t = s
                idx = 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _13018 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13018)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13018)]
                        if ceil32(_13018) > _13018:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13018 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13018) + 32], 
                    _13082 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13082)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13082)]
                    var99001 = ceil32(_13082)
                    if ceil32(_13082) > _13082:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13082 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13082) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _13019 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13019)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13019)]
                    var99001 = ceil32(_13019)
                    if ceil32(_13019) > _13019:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13019 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13019) + 32], 
                _13083 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13083)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13083)]
                var100001 = ceil32(_13083)
                if ceil32(_13083) > _13083:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13083 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13083) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
            t = s
            idx = 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _13020 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13020)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13020)]
                    var99001 = ceil32(_13020)
                    if ceil32(_13020) > _13020:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13020 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13020) + 32], 
                _13084 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13084)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13084)]
                var100001 = ceil32(_13084)
                if ceil32(_13084) > _13084:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13084 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13084) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                _13021 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13021)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13021)]
                var100001 = ceil32(_13021)
                if ceil32(_13021) > _13021:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13021 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13021) + 32], 
            _13085 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13085)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13085)]
            var101001 = ceil32(_13085)
            if ceil32(_13085) > _13085:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13085 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13085) + 32], 
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
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 160
        mem[ceil32(stor12.length.field_1) + 128] = tiers.length
        if not tiers.length:
            mem[0] = arg1
            mem[32] = 6
            idx = 0
            while idx < tiers.length:
                if idx >= tiers.length:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                    revert with 'NH{q', 17
                if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if tiers.length < idx:
                    revert with 'NH{q', 17
                if tiers.length - idx > -2:
                    revert with 'NH{q', 17
                if not tiers.length + -idx + 1:
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                        _4743 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                        _4867 = mem[_4743]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_4743]
                        idx = 0
                        while idx < _4867:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_4743 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_4867) > _4867:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _4867 + 326] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_4867) + 32]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                    _4744 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                    _4868 = mem[_4744]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_4744]
                    idx = 0
                    while idx < _4868:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_4744 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4868) > _4868:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _4868 + 326] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_4868) + 32]
                t = 0
                s = tiers.length + -idx + 1
                while s:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    s = s / 10
                    continue 
                if t > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
                if not t:
                    u = t
                    s = tiers.length + -idx + 1
                    while s:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(s % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        _7125 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7125 + 224] = '.json'
                        if ceil32(_7125) <= _7125:
                            _10576 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7125 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7125 + 229] = 32
                            _10816 = mem[_10576]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7125 + 261] = mem[_10576]
                            idx = 0
                            while idx < _10816:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7125 + idx + 293] = mem[_10576 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_10816) > _10816:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7125 + _10816 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7125 + 261 len ceil32(_10816) + 32], 
                        _10632 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7125 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7125 + 229] = 32
                        _10860 = mem[_10632]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7125 + 261] = mem[_10632]
                        idx = 0
                        while idx < _10860:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7125 + idx + 293] = mem[_10632 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_10860) > _10860:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7125 + _10860 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7125 + 261 len ceil32(_10860) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                    _7170 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7170 + 224] = '.json'
                    if ceil32(_7170) <= _7170:
                        _10577 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7170 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7170 + 229] = 32
                        _10817 = mem[_10577]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7170 + 261] = mem[_10577]
                        idx = 0
                        while idx < _10817:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7170 + idx + 293] = mem[_10577 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_10817) > _10817:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7170 + _10817 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7170 + 261 len ceil32(_10817) + 32], 
                    _10633 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7170 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7170 + 229] = 32
                    _10861 = mem[_10633]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7170 + 261] = mem[_10633]
                    idx = 0
                    while idx < _10861:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7170 + idx + 293] = mem[_10633 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_10861) > _10861:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7170 + _10861 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7170 + 261 len ceil32(_10861) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
                u = t
                s = tiers.length + -idx + 1
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                idx = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    _7126 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7126 + 224] = '.json'
                    if ceil32(_7126) <= _7126:
                        _10578 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7126 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7126 + 229] = 32
                        _10818 = mem[_10578]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7126 + 261] = mem[_10578]
                        idx = 0
                        while idx < _10818:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7126 + idx + 293] = mem[_10578 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_10818) > _10818:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7126 + _10818 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7126 + 261 len ceil32(_10818) + 32], 
                    _10634 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7126 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7126 + 229] = 32
                    _10862 = mem[_10634]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7126 + 261] = mem[_10634]
                    idx = 0
                    while idx < _10862:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7126 + idx + 293] = mem[_10634 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_10862) > _10862:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7126 + _10862 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7126 + 261 len ceil32(_10862) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                _7171 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7171 + 224] = '.json'
                if ceil32(_7171) <= _7171:
                    _10579 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7171 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7171 + 229] = 32
                    _10819 = mem[_10579]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7171 + 261] = mem[_10579]
                    idx = 0
                    while idx < _10819:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7171 + idx + 293] = mem[_10579 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_10819) > _10819:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7171 + _10819 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7171 + 261 len ceil32(_10819) + 32], 
                _10635 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7171 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7171 + 229] = 32
                _10863 = mem[_10635]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7171 + 261] = mem[_10635]
                idx = 0
                while idx < _10863:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7171 + idx + 293] = mem[_10635 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_10863) > _10863:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7171 + _10863 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7171 + 261 len ceil32(_10863) + 32], 
            s = 0
            idx = 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
            if not s:
                t = s
                idx = 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _10812 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10812)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10812)]
                        if ceil32(_10812) > _10812:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10812 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10812) + 32], 
                    _10856 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10856)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10856)]
                    var98001 = ceil32(_10856)
                    if ceil32(_10856) > _10856:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10856 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10856) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _10813 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10813)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10813)]
                    var98001 = ceil32(_10813)
                    if ceil32(_10813) > _10813:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10813 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10813) + 32], 
                _10857 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10857)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10857)]
                var99001 = ceil32(_10857)
                if ceil32(_10857) > _10857:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10857 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10857) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
            t = s
            idx = 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _10814 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10814)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10814)]
                    var98001 = ceil32(_10814)
                    if ceil32(_10814) > _10814:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10814 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10814) + 32], 
                _10858 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10858)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10858)]
                var99001 = ceil32(_10858)
                if ceil32(_10858) > _10858:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10858 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10858) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                _10815 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10815)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10815)]
                var99001 = ceil32(_10815)
                if ceil32(_10815) > _10815:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10815 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10815) + 32], 
            _10859 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10859)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10859)]
            var100001 = ceil32(_10859)
            if ceil32(_10859) > _10859:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10859 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10859) + 32], 
        mem[ceil32(stor12.length.field_1) + 160] = uint256(tiers.field_0)
        idx = ceil32(stor12.length.field_1) + 160
        s = 0
        while ceil32(stor12.length.field_1) + (32 * tiers.length) + 128 > idx:
            mem[idx + 32] = tiers[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[0] = arg1
        mem[32] = 6
        idx = 0
        while idx < tiers.length:
            if idx >= tiers.length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                revert with 'NH{q', 17
            if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if tiers.length < idx:
                revert with 'NH{q', 17
            if tiers.length - idx > -2:
                revert with 'NH{q', 17
            if not tiers.length + -idx + 1:
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                idx = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                    _10640 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                    _10868 = mem[_10640]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_10640]
                    idx = 0
                    while idx < _10868:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_10640 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_10868) > _10868:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _10868 + 326] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_10868) + 32]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                _10641 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                _10869 = mem[_10641]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_10641]
                idx = 0
                while idx < _10869:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_10641 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_10869) > _10869:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _10869 + 326] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_10869) + 32]
            t = 0
            s = tiers.length + -idx + 1
            while s:
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                s = s / 10
                continue 
            if t > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
            if not t:
                u = t
                s = tiers.length + -idx + 1
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                idx = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    _12520 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12520 + 224] = '.json'
                    if ceil32(_12520) <= _12520:
                        _14318 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12520 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12520 + 229] = 32
                        _14446 = mem[_14318]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12520 + 261] = mem[_14318]
                        idx = 0
                        while idx < _14446:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12520 + idx + 293] = mem[_14318 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_14446) > _14446:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12520 + _14446 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12520 + 261 len ceil32(_14446) + 32], 
                    _14350 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12520 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12520 + 229] = 32
                    _14478 = mem[_14350]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12520 + 261] = mem[_14350]
                    idx = 0
                    while idx < _14478:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12520 + idx + 293] = mem[_14350 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_14478) > _14478:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12520 + _14478 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12520 + 261 len ceil32(_14478) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                _12572 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12572 + 224] = '.json'
                if ceil32(_12572) <= _12572:
                    _14319 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12572 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12572 + 229] = 32
                    _14447 = mem[_14319]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12572 + 261] = mem[_14319]
                    idx = 0
                    while idx < _14447:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12572 + idx + 293] = mem[_14319 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_14447) > _14447:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12572 + _14447 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12572 + 261 len ceil32(_14447) + 32], 
                _14351 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12572 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12572 + 229] = 32
                _14479 = mem[_14351]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12572 + 261] = mem[_14351]
                idx = 0
                while idx < _14479:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12572 + idx + 293] = mem[_14351 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_14479) > _14479:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12572 + _14479 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12572 + 261 len ceil32(_14479) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
            u = t
            s = tiers.length + -idx + 1
            while s:
                if u < 1:
                    revert with 'NH{q', 17
                if 48 > -(s % 10) - 1:
                    revert with 'NH{q', 17
                if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    revert with 'NH{q', 50
                mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                u = u - 1
                s = s / 10
                continue 
            idx = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                idx = idx + 32
                continue 
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                _12521 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12521 + 224] = '.json'
                if ceil32(_12521) <= _12521:
                    _14320 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12521 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12521 + 229] = 32
                    _14448 = mem[_14320]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12521 + 261] = mem[_14320]
                    idx = 0
                    while idx < _14448:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12521 + idx + 293] = mem[_14320 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_14448) > _14448:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12521 + _14448 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12521 + 261 len ceil32(_14448) + 32], 
                _14352 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12521 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12521 + 229] = 32
                _14480 = mem[_14352]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12521 + 261] = mem[_14352]
                idx = 0
                while idx < _14480:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12521 + idx + 293] = mem[_14352 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_14480) > _14480:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12521 + _14480 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12521 + 261 len ceil32(_14480) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
            _12573 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
            idx = 0
            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                idx = idx + 32
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12573 + 224] = '.json'
            if ceil32(_12573) <= _12573:
                _14321 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12573 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12573 + 229] = 32
                _14449 = mem[_14321]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12573 + 261] = mem[_14321]
                idx = 0
                while idx < _14449:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12573 + idx + 293] = mem[_14321 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_14449) > _14449:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12573 + _14449 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12573 + 261 len ceil32(_14449) + 32], 
            _14353 = mem[64]
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12573 + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12573 + 229] = 32
            _14481 = mem[_14353]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12573 + 261] = mem[_14353]
            idx = 0
            while idx < _14481:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12573 + idx + 293] = mem[_14353 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_14481) > _14481:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12573 + _14481 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12573 + 261 len ceil32(_14481) + 32], 
        s = 0
        idx = 1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
        if not s:
            t = s
            idx = 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _14442 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14442)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14442)]
                    if ceil32(_14442) > _14442:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14442 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14442) + 32], 
                _14474 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14474)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14474)]
                var102001 = ceil32(_14474)
                if ceil32(_14474) > _14474:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14474 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14474) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                _14443 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14443)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14443)]
                var102001 = ceil32(_14443)
                if ceil32(_14443) > _14443:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14443 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14443) + 32], 
            _14475 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14475)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14475)]
            var103001 = ceil32(_14475)
            if ceil32(_14475) > _14475:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14475 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14475) + 32], 
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
        t = s
        idx = 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                _14444 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14444)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14444)]
                var102001 = ceil32(_14444)
                if ceil32(_14444) > _14444:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14444 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14444) + 32], 
            _14476 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14476)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14476)]
            var103001 = ceil32(_14476)
            if ceil32(_14476) > _14476:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14476 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14476) + 32], 
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
        var81001 = ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
        if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
            _14445 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14445)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14445)]
            var103001 = ceil32(_14445)
            if ceil32(_14445) > _14445:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14445 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14445) + 32], 
        _14477 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14477)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14477)]
        var104001 = ceil32(_14477)
        if ceil32(_14477) > _14477:
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14477 + 293] = 0
        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14477) + 32], 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor12.length.field_1
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor12.length.field_1:
            if stor12.length.field_1 <= 0:
                return ''
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 160
            mem[ceil32(stor12.length.field_1) + 128] = tiers.length
            if not tiers.length:
                mem[0] = arg1
                mem[32] = 6
                idx = 0
                while idx < tiers.length:
                    if idx >= tiers.length:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                        revert with 'NH{q', 17
                    if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if tiers.length < idx:
                        revert with 'NH{q', 17
                    if tiers.length - idx > -2:
                        revert with 'NH{q', 17
                    if not tiers.length + -idx + 1:
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                        idx = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                            idx = 0
                            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                idx = idx + 32
                                continue 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                            _2548 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                            _2656 = mem[_2548]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_2548]
                            idx = 0
                            while idx < _2656:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_2548 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_2656) > _2656:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _2656 + 326] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_2656) + 32]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                        _2549 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                        _2657 = mem[_2549]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_2549]
                        idx = 0
                        while idx < _2657:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_2549 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2657) > _2657:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _2657 + 326] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_2657) + 32]
                    t = 0
                    s = tiers.length + -idx + 1
                    while s:
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        s = s / 10
                        continue 
                    if t > test266151307():
                        revert with 'NH{q', 65
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
                    if not t:
                        u = t
                        s = tiers.length + -idx + 1
                        while s:
                            if u < 1:
                                revert with 'NH{q', 17
                            if 48 > -(s % 10) - 1:
                                revert with 'NH{q', 17
                            if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                revert with 'NH{q', 50
                            mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        idx = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                            _4544 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                            idx = 0
                            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                idx = idx + 32
                                continue 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4544 + 224] = '.json'
                            if ceil32(_4544) <= _4544:
                                _7268 = mem[64]
                                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4544 + 229
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4544 + 229] = 32
                                _7664 = mem[_7268]
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4544 + 261] = mem[_7268]
                                idx = 0
                                while idx < _7664:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4544 + idx + 293] = mem[_7268 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_7664) > _7664:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4544 + _7664 + 293] = 0
                                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4544 + 261 len ceil32(_7664) + 32], 
                            _7376 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4544 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4544 + 229] = 32
                            _7764 = mem[_7376]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4544 + 261] = mem[_7376]
                            idx = 0
                            while idx < _7764:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4544 + idx + 293] = mem[_7376 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7764) > _7764:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4544 + _7764 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4544 + 261 len ceil32(_7764) + 32], 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                        _4612 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4612 + 224] = '.json'
                        if ceil32(_4612) <= _4612:
                            _7269 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4612 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4612 + 229] = 32
                            _7665 = mem[_7269]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4612 + 261] = mem[_7269]
                            idx = 0
                            while idx < _7665:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4612 + idx + 293] = mem[_7269 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7665) > _7665:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4612 + _7665 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4612 + 261 len ceil32(_7665) + 32], 
                        _7377 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4612 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4612 + 229] = 32
                        _7765 = mem[_7377]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4612 + 261] = mem[_7377]
                        idx = 0
                        while idx < _7765:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4612 + idx + 293] = mem[_7377 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7765) > _7765:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4612 + _7765 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4612 + 261 len ceil32(_7765) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
                    u = t
                    s = tiers.length + -idx + 1
                    while s:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(s % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        _4545 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4545 + 224] = '.json'
                        if ceil32(_4545) <= _4545:
                            _7270 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4545 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4545 + 229] = 32
                            _7666 = mem[_7270]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4545 + 261] = mem[_7270]
                            idx = 0
                            while idx < _7666:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4545 + idx + 293] = mem[_7270 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7666) > _7666:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4545 + _7666 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4545 + 261 len ceil32(_7666) + 32], 
                        _7378 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4545 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4545 + 229] = 32
                        _7766 = mem[_7378]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4545 + 261] = mem[_7378]
                        idx = 0
                        while idx < _7766:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4545 + idx + 293] = mem[_7378 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7766) > _7766:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4545 + _7766 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4545 + 261 len ceil32(_7766) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                    _4613 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4613 + 224] = '.json'
                    if ceil32(_4613) <= _4613:
                        _7271 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4613 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4613 + 229] = 32
                        _7667 = mem[_7271]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4613 + 261] = mem[_7271]
                        idx = 0
                        while idx < _7667:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4613 + idx + 293] = mem[_7271 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7667) > _7667:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4613 + _7667 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4613 + 261 len ceil32(_7667) + 32], 
                    _7379 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4613 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4613 + 229] = 32
                    _7767 = mem[_7379]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4613 + 261] = mem[_7379]
                    idx = 0
                    while idx < _7767:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4613 + idx + 293] = mem[_7379 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_7767) > _7767:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4613 + _7767 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4613 + 261 len ceil32(_7767) + 32], 
                s = 0
                idx = 1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
                if not s:
                    t = s
                    idx = 1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                        if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            _7660 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7660)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7660)]
                            if ceil32(_7660) > _7660:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7660 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7660) + 32], 
                        _7760 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7760)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7760)]
                        if ceil32(_7760) > _7760:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7760 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7760) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _7661 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7661)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7661)]
                        if ceil32(_7661) > _7661:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7661 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7661) + 32], 
                    _7761 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7761)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7761)]
                    if ceil32(_7761) > _7761:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7761 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7761) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
                t = s
                idx = 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _7662 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7662)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7662)]
                        if ceil32(_7662) > _7662:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7662 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7662) + 32], 
                    _7762 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7762)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7762)]
                    if ceil32(_7762) > _7762:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7762 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7762) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _7663 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7663)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7663)]
                    if ceil32(_7663) > _7663:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7663 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7663) + 32], 
                _7763 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7763)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7763)]
                if ceil32(_7763) > _7763:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7763 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7763) + 32], 
            mem[ceil32(stor12.length.field_1) + 160] = uint256(tiers.field_0)
            idx = ceil32(stor12.length.field_1) + 160
            s = 0
            while ceil32(stor12.length.field_1) + (32 * tiers.length) + 128 > idx:
                mem[idx + 32] = tiers[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[0] = arg1
            mem[32] = 6
            idx = 0
            while idx < tiers.length:
                if idx >= tiers.length:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                    revert with 'NH{q', 17
                if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if tiers.length < idx:
                    revert with 'NH{q', 17
                if tiers.length - idx > -2:
                    revert with 'NH{q', 17
                if not tiers.length + -idx + 1:
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                        _7384 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                        _7772 = mem[_7384]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_7384]
                        idx = 0
                        while idx < _7772:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_7384 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7772) > _7772:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _7772 + 326] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_7772) + 32]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                    _7385 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                    _7773 = mem[_7385]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_7385]
                    idx = 0
                    while idx < _7773:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_7385 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_7773) > _7773:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _7773 + 326] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_7773) + 32]
                t = 0
                s = tiers.length + -idx + 1
                while s:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    s = s / 10
                    continue 
                if t > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
                if not t:
                    u = t
                    s = tiers.length + -idx + 1
                    while s:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(s % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        _10188 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10188 + 224] = '.json'
                        if ceil32(_10188) <= _10188:
                            _12742 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10188 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10188 + 229] = 32
                            _13030 = mem[_12742]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10188 + 261] = mem[_12742]
                            idx = 0
                            while idx < _13030:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10188 + idx + 293] = mem[_12742 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_13030) > _13030:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10188 + _13030 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10188 + 261 len ceil32(_13030) + 32], 
                        _12814 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10188 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10188 + 229] = 32
                        _13094 = mem[_12814]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10188 + 261] = mem[_12814]
                        idx = 0
                        while idx < _13094:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10188 + idx + 293] = mem[_12814 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_13094) > _13094:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10188 + _13094 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10188 + 261 len ceil32(_13094) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                    _10324 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10324 + 224] = '.json'
                    if ceil32(_10324) <= _10324:
                        _12743 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10324 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10324 + 229] = 32
                        _13031 = mem[_12743]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10324 + 261] = mem[_12743]
                        idx = 0
                        while idx < _13031:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10324 + idx + 293] = mem[_12743 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_13031) > _13031:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10324 + _13031 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10324 + 261 len ceil32(_13031) + 32], 
                    _12815 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10324 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10324 + 229] = 32
                    _13095 = mem[_12815]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10324 + 261] = mem[_12815]
                    idx = 0
                    while idx < _13095:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10324 + idx + 293] = mem[_12815 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13095) > _13095:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10324 + _13095 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10324 + 261 len ceil32(_13095) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
                u = t
                s = tiers.length + -idx + 1
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                idx = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    _10189 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10189 + 224] = '.json'
                    if ceil32(_10189) <= _10189:
                        _12744 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10189 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10189 + 229] = 32
                        _13032 = mem[_12744]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10189 + 261] = mem[_12744]
                        idx = 0
                        while idx < _13032:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10189 + idx + 293] = mem[_12744 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_13032) > _13032:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10189 + _13032 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10189 + 261 len ceil32(_13032) + 32], 
                    _12816 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10189 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10189 + 229] = 32
                    _13096 = mem[_12816]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10189 + 261] = mem[_12816]
                    idx = 0
                    while idx < _13096:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10189 + idx + 293] = mem[_12816 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13096) > _13096:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10189 + _13096 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10189 + 261 len ceil32(_13096) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                _10325 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10325 + 224] = '.json'
                if ceil32(_10325) <= _10325:
                    _12745 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10325 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10325 + 229] = 32
                    _13033 = mem[_12745]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10325 + 261] = mem[_12745]
                    idx = 0
                    while idx < _13033:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10325 + idx + 293] = mem[_12745 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13033) > _13033:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10325 + _13033 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10325 + 261 len ceil32(_13033) + 32], 
                _12817 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10325 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10325 + 229] = 32
                _13097 = mem[_12817]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10325 + 261] = mem[_12817]
                idx = 0
                while idx < _13097:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10325 + idx + 293] = mem[_12817 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_13097) > _13097:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10325 + _13097 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10325 + 261 len ceil32(_13097) + 32], 
            s = 0
            idx = 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
            if not s:
                t = s
                idx = 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _13026 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13026)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13026)]
                        if ceil32(_13026) > _13026:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13026 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13026) + 32], 
                    _13090 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13090)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13090)]
                    var97001 = ceil32(_13090)
                    if ceil32(_13090) > _13090:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13090 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13090) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _13027 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13027)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13027)]
                    var97001 = ceil32(_13027)
                    if ceil32(_13027) > _13027:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13027 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13027) + 32], 
                _13091 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13091)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13091)]
                var98001 = ceil32(_13091)
                if ceil32(_13091) > _13091:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13091 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13091) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
            t = s
            idx = 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _13028 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13028)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13028)]
                    var97001 = ceil32(_13028)
                    if ceil32(_13028) > _13028:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13028 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13028) + 32], 
                _13092 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13092)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13092)]
                var98001 = ceil32(_13092)
                if ceil32(_13092) > _13092:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13092 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13092) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                _13029 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13029)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13029)]
                var98001 = ceil32(_13029)
                if ceil32(_13029) > _13029:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13029 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13029) + 32], 
            _13093 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13093)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13093)]
            var99001 = ceil32(_13093)
            if ceil32(_13093) > _13093:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13093 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13093) + 32], 
        if 31 >= stor12.length.field_1:
            mem[128] = 256 * stor12.length.field_8
            if stor12.length.field_1 <= 0:
                return ''
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 160
            mem[ceil32(stor12.length.field_1) + 128] = tiers.length
            if not tiers.length:
                mem[0] = arg1
                mem[32] = 6
                idx = 0
                while idx < tiers.length:
                    if idx >= tiers.length:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                        revert with 'NH{q', 17
                    if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if tiers.length < idx:
                        revert with 'NH{q', 17
                    if tiers.length - idx > -2:
                        revert with 'NH{q', 17
                    if not tiers.length + -idx + 1:
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                        idx = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                            idx = 0
                            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                idx = idx + 32
                                continue 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                            _2555 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                            _2663 = mem[_2555]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_2555]
                            idx = 0
                            while idx < _2663:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_2555 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_2663) > _2663:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _2663 + 326] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_2663) + 32]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                        _2556 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                        _2664 = mem[_2556]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_2556]
                        idx = 0
                        while idx < _2664:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_2556 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2664) > _2664:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _2664 + 326] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_2664) + 32]
                    t = 0
                    s = tiers.length + -idx + 1
                    while s:
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        s = s / 10
                        continue 
                    if t > test266151307():
                        revert with 'NH{q', 65
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
                    if not t:
                        u = t
                        s = tiers.length + -idx + 1
                        while s:
                            if u < 1:
                                revert with 'NH{q', 17
                            if 48 > -(s % 10) - 1:
                                revert with 'NH{q', 17
                            if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                revert with 'NH{q', 50
                            mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        idx = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                            _4553 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                            idx = 0
                            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                                idx = idx + 32
                                continue 
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4553 + 224] = '.json'
                            if ceil32(_4553) <= _4553:
                                _7279 = mem[64]
                                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4553 + 229
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4553 + 229] = 32
                                _7675 = mem[_7279]
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4553 + 261] = mem[_7279]
                                idx = 0
                                while idx < _7675:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4553 + idx + 293] = mem[_7279 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_7675) > _7675:
                                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4553 + _7675 + 293] = 0
                                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4553 + 261 len ceil32(_7675) + 32], 
                            _7395 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4553 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4553 + 229] = 32
                            _7779 = mem[_7395]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4553 + 261] = mem[_7395]
                            idx = 0
                            while idx < _7779:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4553 + idx + 293] = mem[_7395 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7779) > _7779:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4553 + _7779 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4553 + 261 len ceil32(_7779) + 32], 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                        _4622 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4622 + 224] = '.json'
                        if ceil32(_4622) <= _4622:
                            _7280 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4622 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4622 + 229] = 32
                            _7676 = mem[_7280]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4622 + 261] = mem[_7280]
                            idx = 0
                            while idx < _7676:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4622 + idx + 293] = mem[_7280 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7676) > _7676:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4622 + _7676 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4622 + 261 len ceil32(_7676) + 32], 
                        _7396 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4622 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4622 + 229] = 32
                        _7780 = mem[_7396]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4622 + 261] = mem[_7396]
                        idx = 0
                        while idx < _7780:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4622 + idx + 293] = mem[_7396 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7780) > _7780:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4622 + _7780 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4622 + 261 len ceil32(_7780) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
                    u = t
                    s = tiers.length + -idx + 1
                    while s:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(s % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        _4554 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4554 + 224] = '.json'
                        if ceil32(_4554) <= _4554:
                            _7281 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4554 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4554 + 229] = 32
                            _7677 = mem[_7281]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4554 + 261] = mem[_7281]
                            idx = 0
                            while idx < _7677:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4554 + idx + 293] = mem[_7281 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7677) > _7677:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4554 + _7677 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4554 + 261 len ceil32(_7677) + 32], 
                        _7397 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4554 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4554 + 229] = 32
                        _7781 = mem[_7397]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4554 + 261] = mem[_7397]
                        idx = 0
                        while idx < _7781:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4554 + idx + 293] = mem[_7397 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7781) > _7781:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4554 + _7781 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4554 + 261 len ceil32(_7781) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                    _4623 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4623 + 224] = '.json'
                    if ceil32(_4623) <= _4623:
                        _7282 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4623 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4623 + 229] = 32
                        _7678 = mem[_7282]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4623 + 261] = mem[_7282]
                        idx = 0
                        while idx < _7678:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4623 + idx + 293] = mem[_7282 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7678) > _7678:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4623 + _7678 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4623 + 261 len ceil32(_7678) + 32], 
                    _7398 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4623 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4623 + 229] = 32
                    _7782 = mem[_7398]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4623 + 261] = mem[_7398]
                    idx = 0
                    while idx < _7782:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4623 + idx + 293] = mem[_7398 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_7782) > _7782:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4623 + _7782 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4623 + 261 len ceil32(_7782) + 32], 
                s = 0
                idx = 1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
                if not s:
                    t = s
                    idx = 1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                        if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            _7671 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7671)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7671)]
                            if ceil32(_7671) > _7671:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7671 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7671) + 32], 
                        _7775 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7775)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7775)]
                        if ceil32(_7775) > _7775:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7775 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7775) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _7672 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7672)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7672)]
                        if ceil32(_7672) > _7672:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7672 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7672) + 32], 
                    _7776 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7776)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7776)]
                    if ceil32(_7776) > _7776:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7776 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7776) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
                t = s
                idx = 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _7673 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7673)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7673)]
                        if ceil32(_7673) > _7673:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7673 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7673) + 32], 
                    _7777 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7777)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7777)]
                    if ceil32(_7777) > _7777:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7777 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7777) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _7674 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7674)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7674)]
                    if ceil32(_7674) > _7674:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7674 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7674) + 32], 
                _7778 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7778)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7778)]
                if ceil32(_7778) > _7778:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7778 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7778) + 32], 
            mem[ceil32(stor12.length.field_1) + 160] = uint256(tiers.field_0)
            idx = ceil32(stor12.length.field_1) + 160
            s = 0
            while ceil32(stor12.length.field_1) + (32 * tiers.length) + 128 > idx:
                mem[idx + 32] = tiers[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[0] = arg1
            mem[32] = 6
            idx = 0
            while idx < tiers.length:
                if idx >= tiers.length:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                    revert with 'NH{q', 17
                if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if tiers.length < idx:
                    revert with 'NH{q', 17
                if tiers.length - idx > -2:
                    revert with 'NH{q', 17
                if not tiers.length + -idx + 1:
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                        _7403 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                        _7787 = mem[_7403]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_7403]
                        idx = 0
                        while idx < _7787:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_7403 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7787) > _7787:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _7787 + 326] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_7787) + 32]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                    _7404 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                    _7788 = mem[_7404]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_7404]
                    idx = 0
                    while idx < _7788:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_7404 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_7788) > _7788:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _7788 + 326] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_7788) + 32]
                t = 0
                s = tiers.length + -idx + 1
                while s:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    s = s / 10
                    continue 
                if t > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
                if not t:
                    u = t
                    s = tiers.length + -idx + 1
                    while s:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(s % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        _10196 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10196 + 224] = '.json'
                        if ceil32(_10196) <= _10196:
                            _12750 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10196 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10196 + 229] = 32
                            _13038 = mem[_12750]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10196 + 261] = mem[_12750]
                            idx = 0
                            while idx < _13038:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10196 + idx + 293] = mem[_12750 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_13038) > _13038:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10196 + _13038 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10196 + 261 len ceil32(_13038) + 32], 
                        _12826 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10196 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10196 + 229] = 32
                        _13102 = mem[_12826]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10196 + 261] = mem[_12826]
                        idx = 0
                        while idx < _13102:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10196 + idx + 293] = mem[_12826 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_13102) > _13102:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10196 + _13102 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10196 + 261 len ceil32(_13102) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                    _10348 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10348 + 224] = '.json'
                    if ceil32(_10348) <= _10348:
                        _12751 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10348 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10348 + 229] = 32
                        _13039 = mem[_12751]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10348 + 261] = mem[_12751]
                        idx = 0
                        while idx < _13039:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10348 + idx + 293] = mem[_12751 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_13039) > _13039:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10348 + _13039 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10348 + 261 len ceil32(_13039) + 32], 
                    _12827 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10348 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10348 + 229] = 32
                    _13103 = mem[_12827]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10348 + 261] = mem[_12827]
                    idx = 0
                    while idx < _13103:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10348 + idx + 293] = mem[_12827 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13103) > _13103:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10348 + _13103 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10348 + 261 len ceil32(_13103) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
                u = t
                s = tiers.length + -idx + 1
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                idx = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    _10197 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10197 + 224] = '.json'
                    if ceil32(_10197) <= _10197:
                        _12752 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10197 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10197 + 229] = 32
                        _13040 = mem[_12752]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10197 + 261] = mem[_12752]
                        idx = 0
                        while idx < _13040:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10197 + idx + 293] = mem[_12752 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_13040) > _13040:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10197 + _13040 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10197 + 261 len ceil32(_13040) + 32], 
                    _12828 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10197 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10197 + 229] = 32
                    _13104 = mem[_12828]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10197 + 261] = mem[_12828]
                    idx = 0
                    while idx < _13104:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10197 + idx + 293] = mem[_12828 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13104) > _13104:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10197 + _13104 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10197 + 261 len ceil32(_13104) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                _10349 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10349 + 224] = '.json'
                if ceil32(_10349) <= _10349:
                    _12753 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10349 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10349 + 229] = 32
                    _13041 = mem[_12753]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10349 + 261] = mem[_12753]
                    idx = 0
                    while idx < _13041:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10349 + idx + 293] = mem[_12753 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13041) > _13041:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10349 + _13041 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10349 + 261 len ceil32(_13041) + 32], 
                _12829 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10349 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10349 + 229] = 32
                _13105 = mem[_12829]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10349 + 261] = mem[_12829]
                idx = 0
                while idx < _13105:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10349 + idx + 293] = mem[_12829 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_13105) > _13105:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10349 + _13105 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10349 + 261 len ceil32(_13105) + 32], 
            s = 0
            idx = 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
            if not s:
                t = s
                idx = 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _13034 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13034)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13034)]
                        if ceil32(_13034) > _13034:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13034 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13034) + 32], 
                    _13098 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13098)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13098)]
                    var99001 = ceil32(_13098)
                    if ceil32(_13098) > _13098:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13098 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13098) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _13035 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13035)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13035)]
                    var99001 = ceil32(_13035)
                    if ceil32(_13035) > _13035:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13035 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13035) + 32], 
                _13099 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13099)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13099)]
                var100001 = ceil32(_13099)
                if ceil32(_13099) > _13099:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13099 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13099) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
            t = s
            idx = 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _13036 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13036)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13036)]
                    var99001 = ceil32(_13036)
                    if ceil32(_13036) > _13036:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13036 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13036) + 32], 
                _13100 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13100)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13100)]
                var100001 = ceil32(_13100)
                if ceil32(_13100) > _13100:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13100 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13100) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                _13037 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13037)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13037)]
                var100001 = ceil32(_13037)
                if ceil32(_13037) > _13037:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13037 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13037) + 32], 
            _13101 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13101)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13101)]
            var101001 = ceil32(_13101)
            if ceil32(_13101) > _13101:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13101 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13101) + 32], 
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
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 160
        mem[ceil32(stor12.length.field_1) + 128] = tiers.length
        if not tiers.length:
            mem[0] = arg1
            mem[32] = 6
            idx = 0
            while idx < tiers.length:
                if idx >= tiers.length:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                    revert with 'NH{q', 17
                if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if tiers.length < idx:
                    revert with 'NH{q', 17
                if tiers.length - idx > -2:
                    revert with 'NH{q', 17
                if not tiers.length + -idx + 1:
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                        _4759 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                        _4875 = mem[_4759]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_4759]
                        idx = 0
                        while idx < _4875:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_4759 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_4875) > _4875:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _4875 + 326] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_4875) + 32]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                    _4760 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                    _4876 = mem[_4760]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_4760]
                    idx = 0
                    while idx < _4876:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_4760 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4876) > _4876:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _4876 + 326] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_4876) + 32]
                t = 0
                s = tiers.length + -idx + 1
                while s:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    s = s / 10
                    continue 
                if t > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
                if not t:
                    u = t
                    s = tiers.length + -idx + 1
                    while s:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(s % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        _7138 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7138 + 224] = '.json'
                        if ceil32(_7138) <= _7138:
                            _10586 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7138 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7138 + 229] = 32
                            _10826 = mem[_10586]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7138 + 261] = mem[_10586]
                            idx = 0
                            while idx < _10826:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7138 + idx + 293] = mem[_10586 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_10826) > _10826:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7138 + _10826 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7138 + 261 len ceil32(_10826) + 32], 
                        _10654 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7138 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7138 + 229] = 32
                        _10874 = mem[_10654]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7138 + 261] = mem[_10654]
                        idx = 0
                        while idx < _10874:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7138 + idx + 293] = mem[_10654 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_10874) > _10874:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7138 + _10874 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7138 + 261 len ceil32(_10874) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                    _7180 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7180 + 224] = '.json'
                    if ceil32(_7180) <= _7180:
                        _10587 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7180 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7180 + 229] = 32
                        _10827 = mem[_10587]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7180 + 261] = mem[_10587]
                        idx = 0
                        while idx < _10827:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7180 + idx + 293] = mem[_10587 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_10827) > _10827:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7180 + _10827 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7180 + 261 len ceil32(_10827) + 32], 
                    _10655 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7180 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7180 + 229] = 32
                    _10875 = mem[_10655]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7180 + 261] = mem[_10655]
                    idx = 0
                    while idx < _10875:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7180 + idx + 293] = mem[_10655 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_10875) > _10875:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7180 + _10875 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7180 + 261 len ceil32(_10875) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
                u = t
                s = tiers.length + -idx + 1
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                idx = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    _7139 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7139 + 224] = '.json'
                    if ceil32(_7139) <= _7139:
                        _10588 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7139 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7139 + 229] = 32
                        _10828 = mem[_10588]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7139 + 261] = mem[_10588]
                        idx = 0
                        while idx < _10828:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7139 + idx + 293] = mem[_10588 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_10828) > _10828:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7139 + _10828 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7139 + 261 len ceil32(_10828) + 32], 
                    _10656 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7139 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7139 + 229] = 32
                    _10876 = mem[_10656]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7139 + 261] = mem[_10656]
                    idx = 0
                    while idx < _10876:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7139 + idx + 293] = mem[_10656 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_10876) > _10876:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7139 + _10876 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7139 + 261 len ceil32(_10876) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                _7181 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7181 + 224] = '.json'
                if ceil32(_7181) <= _7181:
                    _10589 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7181 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7181 + 229] = 32
                    _10829 = mem[_10589]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7181 + 261] = mem[_10589]
                    idx = 0
                    while idx < _10829:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7181 + idx + 293] = mem[_10589 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_10829) > _10829:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7181 + _10829 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7181 + 261 len ceil32(_10829) + 32], 
                _10657 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7181 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7181 + 229] = 32
                _10877 = mem[_10657]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7181 + 261] = mem[_10657]
                idx = 0
                while idx < _10877:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7181 + idx + 293] = mem[_10657 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_10877) > _10877:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7181 + _10877 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7181 + 261 len ceil32(_10877) + 32], 
            s = 0
            idx = 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
            if not s:
                t = s
                idx = 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _10822 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10822)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10822)]
                        if ceil32(_10822) > _10822:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10822 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10822) + 32], 
                    _10870 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10870)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10870)]
                    var98001 = ceil32(_10870)
                    if ceil32(_10870) > _10870:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10870 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10870) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _10823 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10823)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10823)]
                    var98001 = ceil32(_10823)
                    if ceil32(_10823) > _10823:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10823 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10823) + 32], 
                _10871 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10871)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10871)]
                var99001 = ceil32(_10871)
                if ceil32(_10871) > _10871:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10871 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10871) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
            t = s
            idx = 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _10824 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10824)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10824)]
                    var98001 = ceil32(_10824)
                    if ceil32(_10824) > _10824:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10824 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10824) + 32], 
                _10872 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10872)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10872)]
                var99001 = ceil32(_10872)
                if ceil32(_10872) > _10872:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10872 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10872) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                _10825 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10825)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10825)]
                var99001 = ceil32(_10825)
                if ceil32(_10825) > _10825:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10825 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10825) + 32], 
            _10873 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10873)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10873)]
            var100001 = ceil32(_10873)
            if ceil32(_10873) > _10873:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10873 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10873) + 32], 
        mem[ceil32(stor12.length.field_1) + 160] = uint256(tiers.field_0)
        idx = ceil32(stor12.length.field_1) + 160
        s = 0
        while ceil32(stor12.length.field_1) + (32 * tiers.length) + 128 > idx:
            mem[idx + 32] = tiers[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[0] = arg1
        mem[32] = 6
        idx = 0
        while idx < tiers.length:
            if idx >= tiers.length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                revert with 'NH{q', 17
            if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if tiers.length < idx:
                revert with 'NH{q', 17
            if tiers.length - idx > -2:
                revert with 'NH{q', 17
            if not tiers.length + -idx + 1:
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                idx = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                    _10662 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                    _10882 = mem[_10662]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_10662]
                    idx = 0
                    while idx < _10882:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_10662 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_10882) > _10882:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _10882 + 326] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_10882) + 32]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                _10663 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                _10883 = mem[_10663]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_10663]
                idx = 0
                while idx < _10883:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_10663 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_10883) > _10883:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _10883 + 326] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_10883) + 32]
            t = 0
            s = tiers.length + -idx + 1
            while s:
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                s = s / 10
                continue 
            if t > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
            if not t:
                u = t
                s = tiers.length + -idx + 1
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                idx = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    _12524 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12524 + 224] = '.json'
                    if ceil32(_12524) <= _12524:
                        _14326 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12524 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12524 + 229] = 32
                        _14454 = mem[_14326]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12524 + 261] = mem[_14326]
                        idx = 0
                        while idx < _14454:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12524 + idx + 293] = mem[_14326 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_14454) > _14454:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12524 + _14454 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12524 + 261 len ceil32(_14454) + 32], 
                    _14358 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12524 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12524 + 229] = 32
                    _14486 = mem[_14358]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12524 + 261] = mem[_14358]
                    idx = 0
                    while idx < _14486:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12524 + idx + 293] = mem[_14358 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_14486) > _14486:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12524 + _14486 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12524 + 261 len ceil32(_14486) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                _12596 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12596 + 224] = '.json'
                if ceil32(_12596) <= _12596:
                    _14327 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12596 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12596 + 229] = 32
                    _14455 = mem[_14327]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12596 + 261] = mem[_14327]
                    idx = 0
                    while idx < _14455:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12596 + idx + 293] = mem[_14327 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_14455) > _14455:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12596 + _14455 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12596 + 261 len ceil32(_14455) + 32], 
                _14359 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12596 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12596 + 229] = 32
                _14487 = mem[_14359]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12596 + 261] = mem[_14359]
                idx = 0
                while idx < _14487:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12596 + idx + 293] = mem[_14359 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_14487) > _14487:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12596 + _14487 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12596 + 261 len ceil32(_14487) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
            u = t
            s = tiers.length + -idx + 1
            while s:
                if u < 1:
                    revert with 'NH{q', 17
                if 48 > -(s % 10) - 1:
                    revert with 'NH{q', 17
                if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    revert with 'NH{q', 50
                mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                u = u - 1
                s = s / 10
                continue 
            idx = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                idx = idx + 32
                continue 
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                _12525 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12525 + 224] = '.json'
                if ceil32(_12525) <= _12525:
                    _14328 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12525 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12525 + 229] = 32
                    _14456 = mem[_14328]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12525 + 261] = mem[_14328]
                    idx = 0
                    while idx < _14456:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12525 + idx + 293] = mem[_14328 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_14456) > _14456:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12525 + _14456 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12525 + 261 len ceil32(_14456) + 32], 
                _14360 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12525 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12525 + 229] = 32
                _14488 = mem[_14360]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12525 + 261] = mem[_14360]
                idx = 0
                while idx < _14488:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12525 + idx + 293] = mem[_14360 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_14488) > _14488:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12525 + _14488 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12525 + 261 len ceil32(_14488) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
            _12597 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
            idx = 0
            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                idx = idx + 32
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12597 + 224] = '.json'
            if ceil32(_12597) <= _12597:
                _14329 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12597 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12597 + 229] = 32
                _14457 = mem[_14329]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12597 + 261] = mem[_14329]
                idx = 0
                while idx < _14457:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12597 + idx + 293] = mem[_14329 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_14457) > _14457:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12597 + _14457 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12597 + 261 len ceil32(_14457) + 32], 
            _14361 = mem[64]
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12597 + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12597 + 229] = 32
            _14489 = mem[_14361]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12597 + 261] = mem[_14361]
            idx = 0
            while idx < _14489:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12597 + idx + 293] = mem[_14361 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_14489) > _14489:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12597 + _14489 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12597 + 261 len ceil32(_14489) + 32], 
        s = 0
        idx = 1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
        if not s:
            t = s
            idx = 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _14450 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14450)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14450)]
                    if ceil32(_14450) > _14450:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14450 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14450) + 32], 
                _14482 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14482)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14482)]
                var102001 = ceil32(_14482)
                if ceil32(_14482) > _14482:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14482 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14482) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                _14451 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14451)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14451)]
                var102001 = ceil32(_14451)
                if ceil32(_14451) > _14451:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14451 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14451) + 32], 
            _14483 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14483)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14483)]
            var103001 = ceil32(_14483)
            if ceil32(_14483) > _14483:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14483 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14483) + 32], 
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
        t = s
        idx = 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                _14452 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14452)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14452)]
                var102001 = ceil32(_14452)
                if ceil32(_14452) > _14452:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14452 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14452) + 32], 
            _14484 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14484)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14484)]
            var103001 = ceil32(_14484)
            if ceil32(_14484) > _14484:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14484 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14484) + 32], 
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
        var81001 = ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
        if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
            _14453 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14453)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14453)]
            var103001 = ceil32(_14453)
            if ceil32(_14453) > _14453:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14453 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14453) + 32], 
        _14485 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14485)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14485)]
        var104001 = ceil32(_14485)
        if ceil32(_14485) > _14485:
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14485 + 293] = 0
        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14485) + 32], 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 'NH{q', 34
    if not stor12.length.field_1:
        if stor12.length.field_1 <= 0:
            return ''
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 160
        mem[ceil32(stor12.length.field_1) + 128] = tiers.length
        if not tiers.length:
            mem[0] = arg1
            mem[32] = 6
            idx = 0
            while idx < tiers.length:
                if idx >= tiers.length:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                    revert with 'NH{q', 17
                if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if tiers.length < idx:
                    revert with 'NH{q', 17
                if tiers.length - idx > -2:
                    revert with 'NH{q', 17
                if not tiers.length + -idx + 1:
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                        _2561 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                        _2669 = mem[_2561]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_2561]
                        idx = 0
                        while idx < _2669:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_2561 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2669) > _2669:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _2669 + 326] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_2669) + 32]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                    _2562 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                    _2670 = mem[_2562]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_2562]
                    idx = 0
                    while idx < _2670:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_2562 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2670) > _2670:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _2670 + 326] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_2670) + 32]
                t = 0
                s = tiers.length + -idx + 1
                while s:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    s = s / 10
                    continue 
                if t > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
                if not t:
                    u = t
                    s = tiers.length + -idx + 1
                    while s:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(s % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        _4558 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4558 + 224] = '.json'
                        if ceil32(_4558) <= _4558:
                            _7289 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4558 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4558 + 229] = 32
                            _7685 = mem[_7289]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4558 + 261] = mem[_7289]
                            idx = 0
                            while idx < _7685:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4558 + idx + 293] = mem[_7289 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7685) > _7685:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4558 + _7685 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4558 + 261 len ceil32(_7685) + 32], 
                        _7409 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4558 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4558 + 229] = 32
                        _7793 = mem[_7409]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4558 + 261] = mem[_7409]
                        idx = 0
                        while idx < _7793:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4558 + idx + 293] = mem[_7409 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7793) > _7793:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4558 + _7793 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4558 + 261 len ceil32(_7793) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                    _4632 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4632 + 224] = '.json'
                    if ceil32(_4632) <= _4632:
                        _7290 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4632 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4632 + 229] = 32
                        _7686 = mem[_7290]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4632 + 261] = mem[_7290]
                        idx = 0
                        while idx < _7686:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4632 + idx + 293] = mem[_7290 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7686) > _7686:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4632 + _7686 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4632 + 261 len ceil32(_7686) + 32], 
                    _7410 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4632 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4632 + 229] = 32
                    _7794 = mem[_7410]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4632 + 261] = mem[_7410]
                    idx = 0
                    while idx < _7794:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4632 + idx + 293] = mem[_7410 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_7794) > _7794:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4632 + _7794 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4632 + 261 len ceil32(_7794) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
                u = t
                s = tiers.length + -idx + 1
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                idx = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    _4559 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4559 + 224] = '.json'
                    if ceil32(_4559) <= _4559:
                        _7291 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4559 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4559 + 229] = 32
                        _7687 = mem[_7291]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4559 + 261] = mem[_7291]
                        idx = 0
                        while idx < _7687:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4559 + idx + 293] = mem[_7291 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7687) > _7687:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4559 + _7687 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4559 + 261 len ceil32(_7687) + 32], 
                    _7411 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4559 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4559 + 229] = 32
                    _7795 = mem[_7411]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4559 + 261] = mem[_7411]
                    idx = 0
                    while idx < _7795:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4559 + idx + 293] = mem[_7411 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_7795) > _7795:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4559 + _7795 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4559 + 261 len ceil32(_7795) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                _4633 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4633 + 224] = '.json'
                if ceil32(_4633) <= _4633:
                    _7292 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4633 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4633 + 229] = 32
                    _7688 = mem[_7292]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4633 + 261] = mem[_7292]
                    idx = 0
                    while idx < _7688:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4633 + idx + 293] = mem[_7292 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_7688) > _7688:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4633 + _7688 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4633 + 261 len ceil32(_7688) + 32], 
                _7412 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4633 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4633 + 229] = 32
                _7796 = mem[_7412]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4633 + 261] = mem[_7412]
                idx = 0
                while idx < _7796:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4633 + idx + 293] = mem[_7412 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_7796) > _7796:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4633 + _7796 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4633 + 261 len ceil32(_7796) + 32], 
            s = 0
            idx = 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
            if not s:
                t = s
                idx = 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _7681 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7681)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7681)]
                        if ceil32(_7681) > _7681:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7681 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7681) + 32], 
                    _7789 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7789)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7789)]
                    if ceil32(_7789) > _7789:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7789 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7789) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _7682 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7682)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7682)]
                    if ceil32(_7682) > _7682:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7682 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7682) + 32], 
                _7790 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7790)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7790)]
                if ceil32(_7790) > _7790:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7790 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7790) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
            t = s
            idx = 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _7683 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7683)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7683)]
                    if ceil32(_7683) > _7683:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7683 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7683) + 32], 
                _7791 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7791)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7791)]
                if ceil32(_7791) > _7791:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7791 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7791) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                _7684 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7684)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7684)]
                if ceil32(_7684) > _7684:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7684 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7684) + 32], 
            _7792 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7792)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7792)]
            if ceil32(_7792) > _7792:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7792 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7792) + 32], 
        mem[ceil32(stor12.length.field_1) + 160] = uint256(tiers.field_0)
        idx = ceil32(stor12.length.field_1) + 160
        s = 0
        while ceil32(stor12.length.field_1) + (32 * tiers.length) + 128 > idx:
            mem[idx + 32] = tiers[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[0] = arg1
        mem[32] = 6
        idx = 0
        while idx < tiers.length:
            if idx >= tiers.length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                revert with 'NH{q', 17
            if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if tiers.length < idx:
                revert with 'NH{q', 17
            if tiers.length - idx > -2:
                revert with 'NH{q', 17
            if not tiers.length + -idx + 1:
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                idx = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                    _7417 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                    _7801 = mem[_7417]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_7417]
                    idx = 0
                    while idx < _7801:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_7417 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_7801) > _7801:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _7801 + 326] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_7801) + 32]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                _7418 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                _7802 = mem[_7418]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_7418]
                idx = 0
                while idx < _7802:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_7418 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_7802) > _7802:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _7802 + 326] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_7802) + 32]
            t = 0
            s = tiers.length + -idx + 1
            while s:
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                s = s / 10
                continue 
            if t > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
            if not t:
                u = t
                s = tiers.length + -idx + 1
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                idx = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    _10200 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10200 + 224] = '.json'
                    if ceil32(_10200) <= _10200:
                        _12758 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10200 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10200 + 229] = 32
                        _13046 = mem[_12758]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10200 + 261] = mem[_12758]
                        idx = 0
                        while idx < _13046:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10200 + idx + 293] = mem[_12758 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_13046) > _13046:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10200 + _13046 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10200 + 261 len ceil32(_13046) + 32], 
                    _12834 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10200 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10200 + 229] = 32
                    _13110 = mem[_12834]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10200 + 261] = mem[_12834]
                    idx = 0
                    while idx < _13110:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10200 + idx + 293] = mem[_12834 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13110) > _13110:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10200 + _13110 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10200 + 261 len ceil32(_13110) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                _10372 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10372 + 224] = '.json'
                if ceil32(_10372) <= _10372:
                    _12759 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10372 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10372 + 229] = 32
                    _13047 = mem[_12759]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10372 + 261] = mem[_12759]
                    idx = 0
                    while idx < _13047:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10372 + idx + 293] = mem[_12759 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13047) > _13047:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10372 + _13047 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10372 + 261 len ceil32(_13047) + 32], 
                _12835 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10372 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10372 + 229] = 32
                _13111 = mem[_12835]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10372 + 261] = mem[_12835]
                idx = 0
                while idx < _13111:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10372 + idx + 293] = mem[_12835 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_13111) > _13111:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10372 + _13111 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10372 + 261 len ceil32(_13111) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
            u = t
            s = tiers.length + -idx + 1
            while s:
                if u < 1:
                    revert with 'NH{q', 17
                if 48 > -(s % 10) - 1:
                    revert with 'NH{q', 17
                if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    revert with 'NH{q', 50
                mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                u = u - 1
                s = s / 10
                continue 
            idx = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                idx = idx + 32
                continue 
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                _10201 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10201 + 224] = '.json'
                if ceil32(_10201) <= _10201:
                    _12760 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10201 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10201 + 229] = 32
                    _13048 = mem[_12760]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10201 + 261] = mem[_12760]
                    idx = 0
                    while idx < _13048:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10201 + idx + 293] = mem[_12760 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13048) > _13048:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10201 + _13048 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10201 + 261 len ceil32(_13048) + 32], 
                _12836 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10201 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10201 + 229] = 32
                _13112 = mem[_12836]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10201 + 261] = mem[_12836]
                idx = 0
                while idx < _13112:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10201 + idx + 293] = mem[_12836 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_13112) > _13112:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10201 + _13112 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10201 + 261 len ceil32(_13112) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
            _10373 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
            idx = 0
            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                idx = idx + 32
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10373 + 224] = '.json'
            if ceil32(_10373) <= _10373:
                _12761 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10373 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10373 + 229] = 32
                _13049 = mem[_12761]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10373 + 261] = mem[_12761]
                idx = 0
                while idx < _13049:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10373 + idx + 293] = mem[_12761 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_13049) > _13049:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10373 + _13049 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10373 + 261 len ceil32(_13049) + 32], 
            _12837 = mem[64]
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10373 + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10373 + 229] = 32
            _13113 = mem[_12837]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10373 + 261] = mem[_12837]
            idx = 0
            while idx < _13113:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10373 + idx + 293] = mem[_12837 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_13113) > _13113:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10373 + _13113 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _10373 + 261 len ceil32(_13113) + 32], 
        s = 0
        idx = 1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
        if not s:
            t = s
            idx = 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _13042 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13042)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13042)]
                    if ceil32(_13042) > _13042:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13042 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13042) + 32], 
                _13106 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13106)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13106)]
                var98001 = ceil32(_13106)
                if ceil32(_13106) > _13106:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13106 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13106) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                _13043 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13043)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13043)]
                var98001 = ceil32(_13043)
                if ceil32(_13043) > _13043:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13043 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13043) + 32], 
            _13107 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13107)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13107)]
            var99001 = ceil32(_13107)
            if ceil32(_13107) > _13107:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13107 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13107) + 32], 
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
        t = s
        idx = 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                _13044 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13044)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13044)]
                var98001 = ceil32(_13044)
                if ceil32(_13044) > _13044:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13044 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13044) + 32], 
            _13108 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13108)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13108)]
            var99001 = ceil32(_13108)
            if ceil32(_13108) > _13108:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13108 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13108) + 32], 
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
        if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
            _13045 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13045)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13045)]
            var99001 = ceil32(_13045)
            if ceil32(_13045) > _13045:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13045 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13045) + 32], 
        _13109 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13109)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13109)]
        var100001 = ceil32(_13109)
        if ceil32(_13109) > _13109:
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13109 + 293] = 0
        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13109) + 32], 
    if 31 >= stor12.length.field_1:
        mem[128] = 256 * stor12.length.field_8
        if stor12.length.field_1 <= 0:
            return ''
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 160
        mem[ceil32(stor12.length.field_1) + 128] = tiers.length
        if not tiers.length:
            mem[0] = arg1
            mem[32] = 6
            idx = 0
            while idx < tiers.length:
                if idx >= tiers.length:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                    revert with 'NH{q', 17
                if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if tiers.length < idx:
                    revert with 'NH{q', 17
                if tiers.length - idx > -2:
                    revert with 'NH{q', 17
                if not tiers.length + -idx + 1:
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                        _2568 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                        _2676 = mem[_2568]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_2568]
                        idx = 0
                        while idx < _2676:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_2568 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2676) > _2676:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _2676 + 326] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_2676) + 32]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                    _2569 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                    _2677 = mem[_2569]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_2569]
                    idx = 0
                    while idx < _2677:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_2569 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2677) > _2677:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _2677 + 326] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_2677) + 32]
                t = 0
                s = tiers.length + -idx + 1
                while s:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    s = s / 10
                    continue 
                if t > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
                if not t:
                    u = t
                    s = tiers.length + -idx + 1
                    while s:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(s % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            revert with 'NH{q', 50
                        mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    idx = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                        _4567 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                        idx = 0
                        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                            idx = idx + 32
                            continue 
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4567 + 224] = '.json'
                        if ceil32(_4567) <= _4567:
                            _7300 = mem[64]
                            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4567 + 229
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4567 + 229] = 32
                            _7696 = mem[_7300]
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4567 + 261] = mem[_7300]
                            idx = 0
                            while idx < _7696:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4567 + idx + 293] = mem[_7300 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_7696) > _7696:
                                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4567 + _7696 + 293] = 0
                            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4567 + 261 len ceil32(_7696) + 32], 
                        _7428 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4567 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4567 + 229] = 32
                        _7808 = mem[_7428]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4567 + 261] = mem[_7428]
                        idx = 0
                        while idx < _7808:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4567 + idx + 293] = mem[_7428 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7808) > _7808:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4567 + _7808 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4567 + 261 len ceil32(_7808) + 32], 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                    _4642 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4642 + 224] = '.json'
                    if ceil32(_4642) <= _4642:
                        _7301 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4642 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4642 + 229] = 32
                        _7697 = mem[_7301]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4642 + 261] = mem[_7301]
                        idx = 0
                        while idx < _7697:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4642 + idx + 293] = mem[_7301 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7697) > _7697:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4642 + _7697 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4642 + 261 len ceil32(_7697) + 32], 
                    _7429 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4642 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4642 + 229] = 32
                    _7809 = mem[_7429]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4642 + 261] = mem[_7429]
                    idx = 0
                    while idx < _7809:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4642 + idx + 293] = mem[_7429 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_7809) > _7809:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4642 + _7809 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4642 + 261 len ceil32(_7809) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
                u = t
                s = tiers.length + -idx + 1
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                idx = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    _4568 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4568 + 224] = '.json'
                    if ceil32(_4568) <= _4568:
                        _7302 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4568 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4568 + 229] = 32
                        _7698 = mem[_7302]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4568 + 261] = mem[_7302]
                        idx = 0
                        while idx < _7698:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4568 + idx + 293] = mem[_7302 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_7698) > _7698:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4568 + _7698 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4568 + 261 len ceil32(_7698) + 32], 
                    _7430 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4568 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4568 + 229] = 32
                    _7810 = mem[_7430]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4568 + 261] = mem[_7430]
                    idx = 0
                    while idx < _7810:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4568 + idx + 293] = mem[_7430 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_7810) > _7810:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4568 + _7810 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4568 + 261 len ceil32(_7810) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                _4643 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4643 + 224] = '.json'
                if ceil32(_4643) <= _4643:
                    _7303 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4643 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4643 + 229] = 32
                    _7699 = mem[_7303]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4643 + 261] = mem[_7303]
                    idx = 0
                    while idx < _7699:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4643 + idx + 293] = mem[_7303 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_7699) > _7699:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4643 + _7699 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4643 + 261 len ceil32(_7699) + 32], 
                _7431 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4643 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4643 + 229] = 32
                _7811 = mem[_7431]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4643 + 261] = mem[_7431]
                idx = 0
                while idx < _7811:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4643 + idx + 293] = mem[_7431 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_7811) > _7811:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4643 + _7811 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _4643 + 261 len ceil32(_7811) + 32], 
            s = 0
            idx = 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
            if not s:
                t = s
                idx = 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _7692 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7692)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7692)]
                        if ceil32(_7692) > _7692:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7692 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7692) + 32], 
                    _7804 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7804)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7804)]
                    if ceil32(_7804) > _7804:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7804 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7804) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _7693 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7693)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7693)]
                    if ceil32(_7693) > _7693:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7693 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7693) + 32], 
                _7805 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7805)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7805)]
                if ceil32(_7805) > _7805:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7805 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7805) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
            t = s
            idx = 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _7694 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7694)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7694)]
                    if ceil32(_7694) > _7694:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7694 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7694) + 32], 
                _7806 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7806)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7806)]
                if ceil32(_7806) > _7806:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7806 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7806) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                _7695 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7695)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7695)]
                if ceil32(_7695) > _7695:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7695 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7695) + 32], 
            _7807 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_7807)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_7807)]
            if ceil32(_7807) > _7807:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _7807 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_7807) + 32], 
        mem[ceil32(stor12.length.field_1) + 160] = uint256(tiers.field_0)
        idx = ceil32(stor12.length.field_1) + 160
        s = 0
        while ceil32(stor12.length.field_1) + (32 * tiers.length) + 128 > idx:
            mem[idx + 32] = tiers[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[0] = arg1
        mem[32] = 6
        idx = 0
        while idx < tiers.length:
            if idx >= tiers.length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                revert with 'NH{q', 17
            if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if tiers.length < idx:
                revert with 'NH{q', 17
            if tiers.length - idx > -2:
                revert with 'NH{q', 17
            if not tiers.length + -idx + 1:
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                idx = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                    _7436 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                    _7816 = mem[_7436]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_7436]
                    idx = 0
                    while idx < _7816:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_7436 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_7816) > _7816:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _7816 + 326] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_7816) + 32]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                _7437 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                _7817 = mem[_7437]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_7437]
                idx = 0
                while idx < _7817:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_7437 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_7817) > _7817:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _7817 + 326] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_7817) + 32]
            t = 0
            s = tiers.length + -idx + 1
            while s:
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                s = s / 10
                continue 
            if t > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
            if not t:
                u = t
                s = tiers.length + -idx + 1
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                idx = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        _12766 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                        _13054 = mem[_12766]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[_12766]
                        idx = 0
                        while idx < _13054:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + idx + 293] = mem[_12766 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_13054) > _13054:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13054 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13054) + 32], 
                    _12846 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    _13118 = mem[_12846]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[_12846]
                    idx = 0
                    while idx < _13118:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + idx + 293] = mem[_12846 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13118) > _13118:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13118 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13118) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _12767 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    _13055 = mem[_12767]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[_12767]
                    idx = 0
                    while idx < _13055:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + idx + 293] = mem[_12767 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13055) > _13055:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13055 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13055) + 32], 
                _12847 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                _13119 = mem[_12847]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[_12847]
                idx = 0
                while idx < _13119:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + idx + 293] = mem[_12847 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_13119) > _13119:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13119 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13119) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
            u = t
            s = tiers.length + -idx + 1
            while s:
                if u < 1:
                    revert with 'NH{q', 17
                if 48 > -(s % 10) - 1:
                    revert with 'NH{q', 17
                if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    revert with 'NH{q', 50
                mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                u = u - 1
                s = s / 10
                continue 
            idx = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                idx = idx + 32
                continue 
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _12768 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                    _13056 = mem[_12768]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[_12768]
                    idx = 0
                    while idx < _13056:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + idx + 293] = mem[_12768 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13056) > _13056:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13056 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13056) + 32], 
                _12848 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                _13120 = mem[_12848]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[_12848]
                idx = 0
                while idx < _13120:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + idx + 293] = mem[_12848 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_13120) > _13120:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13120 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13120) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
            idx = 0
            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                idx = idx + 32
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                _12769 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                _13057 = mem[_12769]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[_12769]
                idx = 0
                while idx < _13057:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + idx + 293] = mem[_12769 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_13057) > _13057:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13057 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13057) + 32], 
            _12849 = mem[64]
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
            _13121 = mem[_12849]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[_12849]
            idx = 0
            while idx < _13121:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + idx + 293] = mem[_12849 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_13121) > _13121:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13121 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13121) + 32], 
        s = 0
        idx = 1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
        if not s:
            t = s
            idx = 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _13050 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13050)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13050)]
                    if ceil32(_13050) > _13050:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13050 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13050) + 32], 
                _13114 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13114)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13114)]
                var100001 = ceil32(_13114)
                if ceil32(_13114) > _13114:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13114 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13114) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                _13051 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13051)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13051)]
                var100001 = ceil32(_13051)
                if ceil32(_13051) > _13051:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13051 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13051) + 32], 
            _13115 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13115)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13115)]
            var101001 = ceil32(_13115)
            if ceil32(_13115) > _13115:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13115 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13115) + 32], 
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
        t = s
        idx = 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                _13052 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13052)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13052)]
                var100001 = ceil32(_13052)
                if ceil32(_13052) > _13052:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13052 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13052) + 32], 
            _13116 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13116)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13116)]
            var101001 = ceil32(_13116)
            if ceil32(_13116) > _13116:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13116 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13116) + 32], 
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
        if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
            _13053 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13053)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13053)]
            var101001 = ceil32(_13053)
            if ceil32(_13053) > _13053:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13053 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13053) + 32], 
        _13117 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_13117)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_13117)]
        var102001 = ceil32(_13117)
        if ceil32(_13117) > _13117:
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _13117 + 293] = 0
        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_13117) + 32], 
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
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 160
    mem[ceil32(stor12.length.field_1) + 128] = tiers.length
    if not tiers.length:
        mem[0] = arg1
        mem[32] = 6
        idx = 0
        while idx < tiers.length:
            if idx >= tiers.length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                revert with 'NH{q', 17
            if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if tiers.length < idx:
                revert with 'NH{q', 17
            if tiers.length - idx > -2:
                revert with 'NH{q', 17
            if not tiers.length + -idx + 1:
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
                idx = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                    _4775 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                    _4883 = mem[_4775]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_4775]
                    idx = 0
                    while idx < _4883:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_4775 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4883) > _4883:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _4883 + 326] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_4883) + 32]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                _4776 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                _4884 = mem[_4776]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_4776]
                idx = 0
                while idx < _4884:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_4776 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_4884) > _4884:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _4884 + 326] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_4884) + 32]
            t = 0
            s = tiers.length + -idx + 1
            while s:
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                s = s / 10
                continue 
            if t > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
            if not t:
                u = t
                s = tiers.length + -idx + 1
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        revert with 'NH{q', 50
                    mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                idx = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                    _7151 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                    idx = 0
                    while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                        idx = idx + 32
                        continue 
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7151 + 224] = '.json'
                    if ceil32(_7151) <= _7151:
                        _10596 = mem[64]
                        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7151 + 229
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7151 + 229] = 32
                        _10836 = mem[_10596]
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7151 + 261] = mem[_10596]
                        idx = 0
                        while idx < _10836:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7151 + idx + 293] = mem[_10596 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_10836) > _10836:
                            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7151 + _10836 + 293] = 0
                        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7151 + 261 len ceil32(_10836) + 32], 
                    _10676 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7151 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7151 + 229] = 32
                    _10888 = mem[_10676]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7151 + 261] = mem[_10676]
                    idx = 0
                    while idx < _10888:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7151 + idx + 293] = mem[_10676 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_10888) > _10888:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7151 + _10888 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7151 + 261 len ceil32(_10888) + 32], 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
                _7190 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7190 + 224] = '.json'
                if ceil32(_7190) <= _7190:
                    _10597 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7190 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7190 + 229] = 32
                    _10837 = mem[_10597]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7190 + 261] = mem[_10597]
                    idx = 0
                    while idx < _10837:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7190 + idx + 293] = mem[_10597 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_10837) > _10837:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7190 + _10837 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7190 + 261 len ceil32(_10837) + 32], 
                _10677 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7190 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7190 + 229] = 32
                _10889 = mem[_10677]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7190 + 261] = mem[_10677]
                idx = 0
                while idx < _10889:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7190 + idx + 293] = mem[_10677 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_10889) > _10889:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7190 + _10889 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7190 + 261 len ceil32(_10889) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
            u = t
            s = tiers.length + -idx + 1
            while s:
                if u < 1:
                    revert with 'NH{q', 17
                if 48 > -(s % 10) - 1:
                    revert with 'NH{q', 17
                if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    revert with 'NH{q', 50
                mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                u = u - 1
                s = s / 10
                continue 
            idx = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                idx = idx + 32
                continue 
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                _7152 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7152 + 224] = '.json'
                if ceil32(_7152) <= _7152:
                    _10598 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7152 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7152 + 229] = 32
                    _10838 = mem[_10598]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7152 + 261] = mem[_10598]
                    idx = 0
                    while idx < _10838:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7152 + idx + 293] = mem[_10598 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_10838) > _10838:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7152 + _10838 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7152 + 261 len ceil32(_10838) + 32], 
                _10678 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7152 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7152 + 229] = 32
                _10890 = mem[_10678]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7152 + 261] = mem[_10678]
                idx = 0
                while idx < _10890:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7152 + idx + 293] = mem[_10678 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_10890) > _10890:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7152 + _10890 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7152 + 261 len ceil32(_10890) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
            _7191 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
            idx = 0
            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                idx = idx + 32
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7191 + 224] = '.json'
            if ceil32(_7191) <= _7191:
                _10599 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7191 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7191 + 229] = 32
                _10839 = mem[_10599]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7191 + 261] = mem[_10599]
                idx = 0
                while idx < _10839:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7191 + idx + 293] = mem[_10599 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_10839) > _10839:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7191 + _10839 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7191 + 261 len ceil32(_10839) + 32], 
            _10679 = mem[64]
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7191 + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7191 + 229] = 32
            _10891 = mem[_10679]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7191 + 261] = mem[_10679]
            idx = 0
            while idx < _10891:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7191 + idx + 293] = mem[_10679 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_10891) > _10891:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7191 + _10891 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _7191 + 261 len ceil32(_10891) + 32], 
        s = 0
        idx = 1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
        if not s:
            t = s
            idx = 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
                if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    _10832 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10832)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10832)]
                    if ceil32(_10832) > _10832:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10832 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10832) + 32], 
                _10884 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10884)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10884)]
                var99001 = ceil32(_10884)
                if ceil32(_10884) > _10884:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10884 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10884) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                _10833 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10833)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10833)]
                var99001 = ceil32(_10833)
                if ceil32(_10833) > _10833:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10833 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10833) + 32], 
            _10885 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10885)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10885)]
            var100001 = ceil32(_10885)
            if ceil32(_10885) > _10885:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10885 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10885) + 32], 
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
        t = s
        idx = 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                _10834 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10834)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10834)]
                var99001 = ceil32(_10834)
                if ceil32(_10834) > _10834:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10834 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10834) + 32], 
            _10886 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10886)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10886)]
            var100001 = ceil32(_10886)
            if ceil32(_10886) > _10886:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10886 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10886) + 32], 
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
        if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
            _10835 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10835)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10835)]
            var100001 = ceil32(_10835)
            if ceil32(_10835) > _10835:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10835 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10835) + 32], 
        _10887 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_10887)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_10887)]
        var101001 = ceil32(_10887)
        if ceil32(_10887) > _10887:
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _10887 + 293] = 0
        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_10887) + 32], 
    mem[ceil32(stor12.length.field_1) + 160] = uint256(tiers.field_0)
    idx = ceil32(stor12.length.field_1) + 160
    s = 0
    while ceil32(stor12.length.field_1) + (32 * tiers.length) + 128 > idx:
        mem[idx + 32] = tiers[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[0] = arg1
    mem[32] = 6
    idx = 0
    while idx < tiers.length:
        if idx >= tiers.length:
            revert with 'NH{q', 50
        if mem[(32 * idx) + ceil32(stor12.length.field_1) + 160] and 10^18 > -1 / mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
            revert with 'NH{q', 17
        if sub_4607fc0b[arg1].field_0 >= 10^18 * mem[(32 * idx) + ceil32(stor12.length.field_1) + 160]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if tiers.length < idx:
            revert with 'NH{q', 17
        if tiers.length - idx > -2:
            revert with 'NH{q', 17
        if not tiers.length + -idx + 1:
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + 224
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = 1
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192] = '0'
            idx = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 256] = mem[idx + 128]
                idx = idx + 32
                continue 
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
                _10684 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
                _10896 = mem[_10684]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_10684]
                idx = 0
                while idx < _10896:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_10684 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_10896) > _10896:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _10896 + 326] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_10896) + 32]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 256] = 0
            idx = 0
            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 256] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                idx = idx + 32
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 257] = '.json'
            _10685 = mem[64]
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 262] = 32
            _10897 = mem[_10685]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294] = mem[_10685]
            idx = 0
            while idx < _10897:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + idx + 326] = mem[_10685 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_10897) > _10897:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + _10897 + 326] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + stor12.length.field_1 + 294 len ceil32(_10897) + 32]
        t = 0
        s = tiers.length + -idx + 1
        while s:
            if t == -1:
                revert with 'NH{q', 17
            t = t + 1
            s = s / 10
            continue 
        if t > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = t
        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + 192
        if not t:
            u = t
            s = tiers.length + -idx + 1
            while s:
                if u < 1:
                    revert with 'NH{q', 17
                if 48 > -(s % 10) - 1:
                    revert with 'NH{q', 17
                if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    revert with 'NH{q', 50
                mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                u = u - 1
                s = s / 10
                continue 
            idx = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
                idx = idx + 32
                continue 
            if ceil32(stor12.length.field_1) <= stor12.length.field_1:
                _12528 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
                idx = 0
                while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                    idx = idx + 32
                    continue 
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12528 + 224] = '.json'
                if ceil32(_12528) <= _12528:
                    _14334 = mem[64]
                    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12528 + 229
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12528 + 229] = 32
                    _14462 = mem[_14334]
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12528 + 261] = mem[_14334]
                    idx = 0
                    while idx < _14462:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12528 + idx + 293] = mem[_14334 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_14462) > _14462:
                        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12528 + _14462 + 293] = 0
                    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12528 + 261 len ceil32(_14462) + 32], 
                _14366 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12528 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12528 + 229] = 32
                _14494 = mem[_14366]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12528 + 261] = mem[_14366]
                idx = 0
                while idx < _14494:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12528 + idx + 293] = mem[_14366 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_14494) > _14494:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12528 + _14494 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12528 + 261 len ceil32(_14494) + 32], 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
            _12620 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
            idx = 0
            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                idx = idx + 32
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12620 + 224] = '.json'
            if ceil32(_12620) <= _12620:
                _14335 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12620 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12620 + 229] = 32
                _14463 = mem[_14335]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12620 + 261] = mem[_14335]
                idx = 0
                while idx < _14463:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12620 + idx + 293] = mem[_14335 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_14463) > _14463:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12620 + _14463 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12620 + 261 len ceil32(_14463) + 32], 
            _14367 = mem[64]
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12620 + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12620 + 229] = 32
            _14495 = mem[_14367]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12620 + 261] = mem[_14367]
            idx = 0
            while idx < _14495:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12620 + idx + 293] = mem[_14367 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_14495) > _14495:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12620 + _14495 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12620 + 261 len ceil32(_14495) + 32], 
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len t] = call.data[calldata.size len t]
        u = t
        s = tiers.length + -idx + 1
        while s:
            if u < 1:
                revert with 'NH{q', 17
            if 48 > -(s % 10) - 1:
                revert with 'NH{q', 17
            if u - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                revert with 'NH{q', 50
            mem[u + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
            u = u - 1
            s = s / 10
            continue 
        idx = 0
        while idx < stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + idx + 224] = mem[idx + 128]
            idx = idx + 32
            continue 
        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
            _12529 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
            idx = 0
            while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
                idx = idx + 32
                continue 
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12529 + 224] = '.json'
            if ceil32(_12529) <= _12529:
                _14336 = mem[64]
                mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12529 + 229
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12529 + 229] = 32
                _14464 = mem[_14336]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12529 + 261] = mem[_14336]
                idx = 0
                while idx < _14464:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12529 + idx + 293] = mem[_14336 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_14464) > _14464:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12529 + _14464 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12529 + 261 len ceil32(_14464) + 32], 
            _14368 = mem[64]
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12529 + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12529 + 229] = 32
            _14496 = mem[_14368]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12529 + 261] = mem[_14368]
            idx = 0
            while idx < _14496:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12529 + idx + 293] = mem[_14368 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_14496) > _14496:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12529 + _14496 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12529 + 261 len ceil32(_14496) + 32], 
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + 224] = 0
        _12621 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]
        idx = 0
        while idx < mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + idx + 224] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + idx + 192]
            idx = idx + 32
            continue 
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12621 + 224] = '.json'
        if ceil32(_12621) <= _12621:
            _14337 = mem[64]
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12621 + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12621 + 229] = 32
            _14465 = mem[_14337]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12621 + 261] = mem[_14337]
            idx = 0
            while idx < _14465:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12621 + idx + 293] = mem[_14337 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_14465) > _14465:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12621 + _14465 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12621 + 261 len ceil32(_14465) + 32], 
        _14369 = mem[64]
        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12621 + 229
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12621 + 229] = 32
        _14497 = mem[_14369]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12621 + 261] = mem[_14369]
        idx = 0
        while idx < _14497:
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12621 + idx + 293] = mem[_14369 + idx + 32]
            idx = idx + 32
            continue 
        if ceil32(_14497) > _14497:
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12621 + _14497 + 293] = 0
        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(t) + stor12.length.field_1 + _12621 + 261 len ceil32(_14497) + 32], 
    s = 0
    idx = 1
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] = s
    if not s:
        t = s
        idx = 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) <= stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
            mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
            if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
                _14458 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14458)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14458)]
                if ceil32(_14458) > _14458:
                    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14458 + 293] = 0
                return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14458) + 32], 
            _14490 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14490)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14490)]
            var103001 = ceil32(_14490)
            if ceil32(_14490) > _14490:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14490 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14490) + 32], 
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
        if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
            _14459 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14459)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14459)]
            var103001 = ceil32(_14459)
            if ceil32(_14459) > _14459:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14459 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14459) + 32], 
        _14491 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14491)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14491)]
        var104001 = ceil32(_14491)
        if ceil32(_14491) > _14491:
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14491 + 293] = 0
        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14491) + 32], 
    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len s] = call.data[calldata.size len s]
    t = s
    idx = 1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor12.length.field_1) + (32 * tiers.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
    if ceil32(stor12.length.field_1) <= stor12.length.field_1:
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
        mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
        if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
            _14460 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14460)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14460)]
            var103001 = ceil32(_14460)
            if ceil32(_14460) > _14460:
                mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14460 + 293] = 0
            return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14460) + 32], 
        _14492 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14492)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14492)]
        var104001 = ceil32(_14492)
        if ceil32(_14492) > _14492:
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14492 + 293] = 0
        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14492) + 32], 
    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224] = 0
    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 192 len ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])]
    var82001 = ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160])
    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 224] = '.json'
    mem[64] = ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229
    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 229] = 32
    if ceil32(mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]) <= mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160]:
        _14461 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14461)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14461)]
        var104001 = ceil32(_14461)
        if ceil32(_14461) > _14461:
            mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14461 + 293] = 0
        return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14461) + 32], 
    _14493 = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 192]
    mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 293 len ceil32(_14493)] = mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + 224 len ceil32(_14493)]
    var105001 = ceil32(_14493)
    if ceil32(_14493) > _14493:
        mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + _14493 + 293] = 0
    return 32, mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + ceil32(s) + stor12.length.field_1 + mem[ceil32(stor12.length.field_1) + (32 * tiers.length) + 160] + 261 len ceil32(_14493) + 32], 
}



}
