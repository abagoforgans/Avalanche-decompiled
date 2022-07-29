contract main {




// =====================  Runtime code  =====================


const sub_4445d4a5(?) = 0x9e13c0da4e43e373c7463557ca6a49beeb6f9922beb714bb9bf4ed4cd7aef0a3

const DEFAULT_ADMIN_ROLE = 0


address owner;
mapping of struct roleAdmin;
array of struct roleMember;
array of struct stor3;
array of struct stor4;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor8;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor10;
array of uint256 tokenByIndex;
mapping of uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
array of struct stor16;
array of struct stor17;
address stor18;

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

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
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

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= roleMember[arg1].field_0:
        revert with 'NH{q', 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleMember[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor8[address(arg1)][address(arg2)])
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

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor8[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5a05180f00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 'NH{q', 17
        if roleMember[arg1].field_0 < 1:
            revert with 'NH{q', 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 'NH{q', 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 'NH{q', 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 'NH{q', 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Not the owner!'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if balanceOf[stor5[arg1]] < 1:
        revert with 'NH{q', 17
    if stor10[arg1] != balanceOf[stor5[arg1]] - 1:
        tokenOfOwnerByIndex[stor5[arg1]][stor10[arg1]] = tokenOfOwnerByIndex[stor5[arg1]][stor6[stor5[arg1]] - 1]
        stor10[stor9[stor5[arg1]][stor6[stor5[arg1]] - 1]] = stor10[arg1]
    stor10[arg1] = 0
    tokenOfOwnerByIndex[stor5[arg1]][stor6[stor5[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 'NH{q', 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if stor12[arg1] >= tokenByIndex.length:
        revert with 'NH{q', 50
    tokenByIndex[stor12[arg1]] = tokenByIndex[tokenByIndex.length]
    stor12[stor11[stor11.length]] = stor12[arg1]
    stor12[arg1] = 0
    if not tokenByIndex.length:
        revert with 'NH{q', 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor5[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor5[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
        if not roleMember[arg1][1][address(arg2)].field_0:
            roleMember[arg1].field_0++
            roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
            roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
            roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
        if roleMember[arg1][1][address(arg2)].field_0:
            if roleMember[arg1][1][address(arg2)].field_0 < 1:
                revert with 'NH{q', 17
            if roleMember[arg1].field_0 < 1:
                revert with 'NH{q', 17
            if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
                if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                    revert with 'NH{q', 50
                if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                    revert with 'NH{q', 50
                roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
                roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
            if not roleMember[arg1].field_0:
                revert with 'NH{q', 49
            roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
            roleMember[arg1].field_0--
            roleMember[arg1][1][address(arg2)].field_0 = 0
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
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
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor8[stor5[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor12[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor10[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor10[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1]
                stor10[stor9[address(arg1)][stor6[address(arg1)] - 1]] = stor10[arg3]
            stor10[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor6[address(arg2)]] = arg3
            stor10[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor12[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor12[arg3]] = tokenByIndex[tokenByIndex.length]
        stor12[stor11[stor11.length]] = stor12[arg3]
        stor12[arg3] = 0
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

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
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
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor8[stor5[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor12[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor10[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor10[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1]
                stor10[stor9[address(arg1)][stor6[address(arg1)] - 1]] = stor10[arg3]
            stor10[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor6[address(arg2)]] = arg3
            stor10[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor12[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor12[arg3]] = tokenByIndex[tokenByIndex.length]
        stor12[stor11[stor11.length]] = stor12[arg3]
        stor12[arg3] = 0
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

function ipfsHash() payable {
    if bool(stor17.length):
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor17.length):
            if bool(stor17.length) == stor17.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor17.length.field_1:
                if 31 < stor17.length.field_1:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while stor17.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17.length.field_1), data=mem[128 len ceil32(stor17.length.field_1)])
                mem[128] = 256 * stor17.length.field_8
        else:
            if bool(stor17.length) == stor17.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor17.length.field_1:
                if 31 < stor17.length.field_1:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while stor17.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17.length.field_1), data=mem[128 len ceil32(stor17.length.field_1)])
                mem[128] = 256 * stor17.length.field_8
        mem[ceil32(stor17.length.field_1) + 192 len ceil32(stor17.length.field_1)] = mem[128 len ceil32(stor17.length.field_1)]
        if ceil32(stor17.length.field_1) > stor17.length.field_1:
            mem[ceil32(stor17.length.field_1) + stor17.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor17.length.field_1), data=mem[128 len ceil32(stor17.length.field_1)], mem[(2 * ceil32(stor17.length.field_1)) + 192 len 2 * ceil32(stor17.length.field_1)]), 
    if bool(stor17.length) == stor17.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor17.length):
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor17.length.field_1:
            if 31 < stor17.length.field_1:
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while stor17.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)])
            mem[128] = 256 * stor17.length.field_8
    else:
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor17.length.field_1:
            if 31 < stor17.length.field_1:
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while stor17.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)])
            mem[128] = 256 * stor17.length.field_8
    mem[ceil32(stor17.length.field_1) + 192 len ceil32(stor17.length.field_1)] = mem[128 len ceil32(stor17.length.field_1)]
    if ceil32(stor17.length.field_1) > stor17.length.field_1:
        mem[ceil32(stor17.length.field_1) + stor17.length.field_1 + 192] = 0
    return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)], mem[(2 * ceil32(stor17.length.field_1)) + 192 len 2 * ceil32(stor17.length.field_1)]), 
}

function contractURI() payable {
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor16.length):
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length.field_1), data=mem[128 len ceil32(stor16.length.field_1)])
                mem[128] = 256 * stor16.length.field_8
        else:
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length.field_1), data=mem[128 len ceil32(stor16.length.field_1)])
                mem[128] = 256 * stor16.length.field_8
        mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) > stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor16.length.field_1), data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
    if ceil32(stor16.length.field_1) > stor16.length.field_1:
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 192] = 0
    return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
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
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor8[stor5[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor12[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor10[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor10[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1]
                stor10[stor9[address(arg1)][stor6[address(arg1)] - 1]] = stor10[arg3]
            stor10[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor6[address(arg2)]] = arg3
            stor10[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor12[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor12[arg3]] = tokenByIndex[tokenByIndex.length]
        stor12[stor11[stor11.length]] = stor12[arg3]
        stor12[arg3] = 0
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

function sub_451e35bf(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0x9e13c0da4e43e373c7463557ca6a49beeb6f9922beb714bb9bf4ed4cd7aef0a3, 1)
    if roleAdmin[0x9e13c0da4e43e373c7463557ca6a49beeb6f9922beb714bb9bf4ed4cd7aef0a3][address(msg.sender)].field_0:
        if stor13 > -2:
            revert with 'NH{q', 17
        if stor13 + 1 > -('cd', 4).length - 1:
            revert with 'NH{q', 17
        if stor13 + ('cd', 4).length + 1 < 1:
            revert with 'NH{q', 17
        if stor13 + ('cd', 4).length > stor14:
            revert with 0, 'Supply Exhausted'
        idx = 0
        while idx < ('cd', 4).length:
            if stor13 + 1 > -idx - 1:
                revert with 'NH{q', 17
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            _106 = mem[64]
            mem[64] = mem[64] + 32
            mem[_106] = 0
            if not address(cd[((32 * idx) + cd[4] + 36)]):
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor13 + idx + 1]:
                revert with 0, 'ERC721: token already minted'
            stor12[stor13 + idx + 1] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = stor13 + idx + 1
            if address(cd[((32 * idx) + cd[4] + 36)]):
                tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[4] + 36)])][stor6[address(cd[((32 * idx) + cd[4] + 36)])]] = stor13 + idx + 1
                stor10[stor13 + idx + 1] = balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]
                if balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]++
                mem[0] = stor13 + idx + 1
                mem[32] = 5
                ownerOf[stor13 + idx + 1] = address(cd[((32 * idx) + cd[4] + 36)])
                emit Transfer(0, address(cd[((32 * idx) + cd[4] + 36)]), stor13 + idx + 1);
                if ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])) > 0:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor13 + idx + 1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_106 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor13 + idx + 1, 128, 0
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
                    _205 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_205] == Mask(32, 224, mem[_205])
                    if Mask(32, 224, mem[_205]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor12[stor13 + idx + 1] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor12[stor13 + idx + 1]] = tokenByIndex[tokenByIndex.length]
                stor12[stor11[stor11.length]] = stor12[stor13 + idx + 1]
                stor12[stor13 + idx + 1] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]++
                mem[0] = stor13 + idx + 1
                mem[32] = 5
                ownerOf[stor13 + idx + 1] = address(cd[((32 * idx) + cd[4] + 36)])
                emit Transfer(0, address(cd[((32 * idx) + cd[4] + 36)]), stor13 + idx + 1);
                if ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])) > 0:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor13 + idx + 1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_106 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor13 + idx + 1, 128, 0
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
                    _206 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_206] == Mask(32, 224, mem[_206])
                    if Mask(32, 224, mem[_206]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            stor13++
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        return 1
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = 0x9e13c0da4e43e373c7463557ca6a49beeb6f9922beb714bb9bf4ed4cd7aef0a3
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function royaltyInfo(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) >= 10^18:
        revert with 0, mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15)
    if mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15):
        if not mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (arg2 * stor15) - mulmod(arg2, stor15, 10^18)) >> 18 or mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) - (mulmod(arg2, stor15, 10^18) > arg2 * stor15) << 238) + (mulmod(arg2, stor15, 10^18) > 499999999999999999), 10^18, -1) - (262144 * Mask(238, 18, (arg2 * stor15) - mulmod(arg2, stor15, 10^18)) >> 18 or mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) - (mulmod(arg2, stor15, 10^18) > arg2 * stor15) << 238) - (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (arg2 * stor15) - mulmod(arg2, stor15, 10^18)) >> 18 or mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) - (mulmod(arg2, stor15, 10^18) > arg2 * stor15) << 238) + (mulmod(arg2, stor15, 10^18) > 499999999999999999), 10^18, -1) < (0x95dfd3fdc5800000000000000000000000000000000000000000000000000000000000000040000 * Mask(238, 18, (arg2 * stor15) - mulmod(arg2, stor15, 10^18)) >> 18 or mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) - (mulmod(arg2, stor15, 10^18) > arg2 * stor15) << 238) + (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999)):
            return stor18, 
                   (0x95dfd3fdc5800000000000000000000000000000000000000000000000000000000000000040000 * Mask(238, 18, (arg2 * stor15) - mulmod(arg2, stor15, 10^18)) >> 18 or mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) - (mulmod(arg2, stor15, 10^18) > arg2 * stor15) << 238) + (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999) / 10^18
        if mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (arg2 * stor15) - mulmod(arg2, stor15, 10^18)) >> 18 or mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) - (mulmod(arg2, stor15, 10^18) > arg2 * stor15) << 238) + (mulmod(arg2, stor15, 10^18) > 499999999999999999), 10^18, -1) - (262144 * Mask(238, 18, (arg2 * stor15) - mulmod(arg2, stor15, 10^18)) >> 18 or mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) - (mulmod(arg2, stor15, 10^18) > arg2 * stor15) << 238) - (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (arg2 * stor15) - mulmod(arg2, stor15, 10^18)) >> 18 or mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) - (mulmod(arg2, stor15, 10^18) > arg2 * stor15) << 238) + (mulmod(arg2, stor15, 10^18) > 499999999999999999), 10^18, -1) < (0x95dfd3fdc5800000000000000000000000000000000000000000000000000000000000000040000 * Mask(238, 18, (arg2 * stor15) - mulmod(arg2, stor15, 10^18)) >> 18 or mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) - (mulmod(arg2, stor15, 10^18) > arg2 * stor15) << 238) + (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999)) >= 10^18:
            revert with 0, 
                        mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (arg2 * stor15) - mulmod(arg2, stor15, 10^18)) >> 18 or mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) - (mulmod(arg2, stor15, 10^18) > arg2 * stor15) << 238) + (mulmod(arg2, stor15, 10^18) > 499999999999999999), 10^18, -1) - (262144 * Mask(238, 18, (arg2 * stor15) - mulmod(arg2, stor15, 10^18)) >> 18 or mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) - (mulmod(arg2, stor15, 10^18) > arg2 * stor15) << 238) - (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (arg2 * stor15) - mulmod(arg2, stor15, 10^18)) >> 18 or mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) - (mulmod(arg2, stor15, 10^18) > arg2 * stor15) << 238) + (mulmod(arg2, stor15, 10^18) > 499999999999999999), 10^18, -1) < (0x95dfd3fdc5800000000000000000000000000000000000000000000000000000000000000040000 * Mask(238, 18, (arg2 * stor15) - mulmod(arg2, stor15, 10^18)) >> 18 or mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) - (mulmod(arg2, stor15, 10^18) > arg2 * stor15) << 238) + (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999)),
                        10^18
        return stor18, 
               0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0x95dfd3fdc5800000000000000000000000000000000000000000000000000000000000000040000 * Mask(238, 18, (arg2 * stor15) - mulmod(arg2, stor15, 10^18)) >> 18 or mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) - (mulmod(arg2, stor15, 10^18) > arg2 * stor15) << 238) + (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999) - mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (arg2 * stor15) - mulmod(arg2, stor15, 10^18)) >> 18 or mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) - (mulmod(arg2, stor15, 10^18) > arg2 * stor15) << 238) + (mulmod(arg2, stor15, 10^18) > 499999999999999999), 10^18, 10^18)) >> 18 or mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (arg2 * stor15) - mulmod(arg2, stor15, 10^18)) >> 18 or mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) - (mulmod(arg2, stor15, 10^18) > arg2 * stor15) << 238) + (mulmod(arg2, stor15, 10^18) > 499999999999999999), 10^18, -1) - (262144 * Mask(238, 18, (arg2 * stor15) - mulmod(arg2, stor15, 10^18)) >> 18 or mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) - (mulmod(arg2, stor15, 10^18) > arg2 * stor15) << 238) - (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (arg2 * stor15) - mulmod(arg2, stor15, 10^18)) >> 18 or mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) - (mulmod(arg2, stor15, 10^18) > arg2 * stor15) << 238) + (mulmod(arg2, stor15, 10^18) > 499999999999999999), 10^18, -1) < (0x95dfd3fdc5800000000000000000000000000000000000000000000000000000000000000040000 * Mask(238, 18, (arg2 * stor15) - mulmod(arg2, stor15, 10^18)) >> 18 or mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) - (mulmod(arg2, stor15, 10^18) > arg2 * stor15) << 238) + (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999)) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (arg2 * stor15) - mulmod(arg2, stor15, 10^18)) >> 18 or mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) - (mulmod(arg2, stor15, 10^18) > arg2 * stor15) << 238) + (mulmod(arg2, stor15, 10^18) > 499999999999999999), 10^18, 10^18) > (0x95dfd3fdc5800000000000000000000000000000000000000000000000000000000000000040000 * Mask(238, 18, (arg2 * stor15) - mulmod(arg2, stor15, 10^18)) >> 18 or mulmod(arg2, stor15, -1) - (arg2 * stor15) - (mulmod(arg2, stor15, -1) < arg2 * stor15) - (mulmod(arg2, stor15, 10^18) > arg2 * stor15) << 238) + (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999)) << 238
    if not mulmod((arg2 * stor15 / 10^18) + (mulmod(arg2, stor15, 10^18) > 499999999999999999), 10^18, -1) - (10^18 * arg2 * stor15 / 10^18) - (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999) - (mulmod((arg2 * stor15 / 10^18) + (mulmod(arg2, stor15, 10^18) > 499999999999999999), 10^18, -1) < (10^18 * arg2 * stor15 / 10^18) + (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999)):
        return stor18, (10^18 * arg2 * stor15 / 10^18) + (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999) / 10^18
    if mulmod((arg2 * stor15 / 10^18) + (mulmod(arg2, stor15, 10^18) > 499999999999999999), 10^18, -1) - (10^18 * arg2 * stor15 / 10^18) - (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999) - (mulmod((arg2 * stor15 / 10^18) + (mulmod(arg2, stor15, 10^18) > 499999999999999999), 10^18, -1) < (10^18 * arg2 * stor15 / 10^18) + (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999)) >= 10^18:
        revert with 0, 
                    mulmod((arg2 * stor15 / 10^18) + (mulmod(arg2, stor15, 10^18) > 499999999999999999), 10^18, -1) - (10^18 * arg2 * stor15 / 10^18) - (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999) - (mulmod((arg2 * stor15 / 10^18) + (mulmod(arg2, stor15, 10^18) > 499999999999999999), 10^18, -1) < (10^18 * arg2 * stor15 / 10^18) + (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999)),
                    10^18
    return stor18, 
           0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (10^18 * arg2 * stor15 / 10^18) + (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999) - mulmod((arg2 * stor15 / 10^18) + (mulmod(arg2, stor15, 10^18) > 499999999999999999), 10^18, 10^18)) >> 18 or mulmod((arg2 * stor15 / 10^18) + (mulmod(arg2, stor15, 10^18) > 499999999999999999), 10^18, -1) - (10^18 * arg2 * stor15 / 10^18) - (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999) - (mulmod((arg2 * stor15 / 10^18) + (mulmod(arg2, stor15, 10^18) > 499999999999999999), 10^18, -1) < (10^18 * arg2 * stor15 / 10^18) + (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999)) - (mulmod((arg2 * stor15 / 10^18) + (mulmod(arg2, stor15, 10^18) > 499999999999999999), 10^18, 10^18) > (10^18 * arg2 * stor15 / 10^18) + (10^18 * mulmod(arg2, stor15, 10^18) > 499999999999999999)) << 238
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        mem[96] = 1
        mem[128] = '0'
        if bool(stor17.length):
            if bool(stor17.length) == stor17.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor17.length):
                mem[192] = Mask(248, 8, stor17.length)
            else:
                if bool(stor17.length) != 1:
                    mem[64] = 1
                    _119 = mem[160]
                    mem[33] = mem[160]
                    mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_119) > _119:
                        mem[_119 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_119) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < stor17.length.field_1:
                    mem[idx + 192] = stor17[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor17.length.field_1 + 192] = '0'
            mem[stor17.length.field_1 + 193] = 32
            mem[stor17.length.field_1 + 225] = mem[160]
            mem[stor17.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor17.length.field_1 + mem[160] + 257] = 0
            return Array(len=mem[160], data=mem[stor17.length.field_1 + 257 len ceil32(mem[160])])
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor17.length):
            mem[192] = Mask(248, 8, stor17.length)
        else:
            if bool(stor17.length) != 1:
                mem[64] = 1
                _121 = mem[160]
                mem[33] = mem[160]
                mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_121) > _121:
                    mem[_121 + 65] = 0
                return memory
                  from mem[64]
                   len ceil32(_121) + -mem[64] + 65
            idx = 0
            s = 0
            while idx < stor17.length.field_1:
                mem[idx + 192] = stor17[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor17.length.field_1 + 192] = '0'
        mem[stor17.length.field_1 + 193] = 32
        mem[stor17.length.field_1 + 225] = mem[160]
        mem[stor17.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[stor17.length.field_1 + mem[160] + 257] = 0
        return Array(len=mem[160], data=mem[stor17.length.field_1 + 257 len ceil32(mem[160])])
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
        _356 = mem[64]
        if bool(stor17.length):
            if bool(stor17.length) == stor17.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor17.length):
                mem[mem[64] + 32] = Mask(248, 8, stor17.length)
                _392 = mem[96]
                mem[mem[64] + stor17.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _584 = mem[64]
                    mem[64] = mem[64] + stor17.length.field_1 + mem[96] + 32
                    mem[_356 + stor17.length.field_1 + mem[96] + 32] = 32
                    _628 = mem[_584]
                    mem[_356 + stor17.length.field_1 + _392 + 64] = mem[_584]
                    mem[_356 + stor17.length.field_1 + _392 + 96 len ceil32(_628)] = mem[_584 + 32 len ceil32(_628)]
                    if ceil32(_628) > _628:
                        mem[_356 + stor17.length.field_1 + _392 + _628 + 96] = 0
                    return memory
                      from mem[64]
                       len _356 + stor17.length.field_1 + _392 + ceil32(_628) + -mem[64] + 96
                mem[mem[64] + stor17.length.field_1 + mem[96] + 32] = 0
                _597 = mem[64]
                mem[64] = mem[64] + stor17.length.field_1 + mem[96] + 32
                mem[_356 + stor17.length.field_1 + mem[96] + 32] = 32
                _636 = mem[_597]
                mem[_356 + stor17.length.field_1 + _392 + 64] = mem[_597]
                mem[_356 + stor17.length.field_1 + _392 + 96 len ceil32(_636)] = mem[_597 + 32 len ceil32(_636)]
                if ceil32(_636) > _636:
                    mem[_356 + stor17.length.field_1 + _392 + _636 + 96] = 0
                return 32, mem[_356 + stor17.length.field_1 + _392 + 64 len ceil32(_636) + 32]
            if bool(stor17.length) != 1:
                _396 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_396) <= _396:
                    _586 = mem[64]
                    mem[64] = _396
                    mem[_396] = 32
                    _629 = mem[_586]
                    mem[_396 + 32] = mem[_586]
                    mem[_396 + 64 len ceil32(_629)] = mem[_586 + 32 len ceil32(_629)]
                    if ceil32(_629) > _629:
                        mem[_396 + _629 + 64] = 0
                    return 32, mem[_396 + 32 len ceil32(_629) + 32]
                mem[_396] = 0
                _599 = mem[64]
                mem[64] = _396
                mem[_396] = 32
                _637 = mem[_599]
                mem[_396 + 32] = mem[_599]
                mem[_396 + 64 len ceil32(_637)] = mem[_599 + 32 len ceil32(_637)]
                if ceil32(_637) > _637:
                    mem[_396 + _637 + 64] = 0
                return 32, mem[_396 + 32 len ceil32(_637) + 32]
            mem[0] = 17
            idx = 0
            s = 0
            while idx < stor17.length.field_1:
                mem[_356 + idx + 32] = stor17[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _585 = mem[96]
            mem[_356 + stor17.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_585) <= _585:
                _764 = mem[64]
                mem[64] = _356 + stor17.length.field_1 + _585 + 32
                mem[_356 + stor17.length.field_1 + _585 + 32] = 32
                _812 = mem[_764]
                mem[_356 + stor17.length.field_1 + _585 + 64] = mem[_764]
                mem[_356 + stor17.length.field_1 + _585 + 96 len ceil32(_812)] = mem[_764 + 32 len ceil32(_812)]
                if ceil32(_812) > _812:
                    mem[_356 + stor17.length.field_1 + _585 + _812 + 96] = 0
                return 32, mem[_356 + stor17.length.field_1 + _585 + 64 len ceil32(_812) + 32]
            mem[_356 + stor17.length.field_1 + _585 + 32] = 0
            _769 = mem[64]
            mem[64] = _356 + stor17.length.field_1 + _585 + 32
            mem[_356 + stor17.length.field_1 + _585 + 32] = 32
            _816 = mem[_769]
            mem[_356 + stor17.length.field_1 + _585 + 64] = mem[_769]
            mem[_356 + stor17.length.field_1 + _585 + 96 len ceil32(_816)] = mem[_769 + 32 len ceil32(_816)]
            if ceil32(_816) > _816:
                mem[_356 + stor17.length.field_1 + _585 + _816 + 96] = 0
            return 32, mem[_356 + stor17.length.field_1 + _585 + 64 len ceil32(_816) + 32]
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor17.length):
            mem[mem[64] + 32] = Mask(248, 8, stor17.length)
            _397 = mem[96]
            mem[mem[64] + stor17.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _587 = mem[64]
                mem[64] = mem[64] + stor17.length.field_1 + mem[96] + 32
                mem[_356 + stor17.length.field_1 + mem[96] + 32] = 32
                _630 = mem[_587]
                mem[_356 + stor17.length.field_1 + _397 + 64] = mem[_587]
                mem[_356 + stor17.length.field_1 + _397 + 96 len ceil32(_630)] = mem[_587 + 32 len ceil32(_630)]
                if ceil32(_630) > _630:
                    mem[_356 + stor17.length.field_1 + _397 + _630 + 96] = 0
                return memory
                  from mem[64]
                   len _356 + stor17.length.field_1 + _397 + ceil32(_630) + -mem[64] + 96
            mem[mem[64] + stor17.length.field_1 + mem[96] + 32] = 0
            _601 = mem[64]
            mem[64] = mem[64] + stor17.length.field_1 + mem[96] + 32
            mem[_356 + stor17.length.field_1 + mem[96] + 32] = 32
            _638 = mem[_601]
            mem[_356 + stor17.length.field_1 + _397 + 64] = mem[_601]
            mem[_356 + stor17.length.field_1 + _397 + 96 len ceil32(_638)] = mem[_601 + 32 len ceil32(_638)]
            if ceil32(_638) > _638:
                mem[_356 + stor17.length.field_1 + _397 + _638 + 96] = 0
            return 32, mem[_356 + stor17.length.field_1 + _397 + 64 len ceil32(_638) + 32]
        if bool(stor17.length) != 1:
            _400 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_400) <= _400:
                _589 = mem[64]
                mem[64] = _400
                mem[_400] = 32
                _631 = mem[_589]
                mem[_400 + 32] = mem[_589]
                mem[_400 + 64 len ceil32(_631)] = mem[_589 + 32 len ceil32(_631)]
                if ceil32(_631) > _631:
                    mem[_400 + _631 + 64] = 0
                return 32, mem[_400 + 32 len ceil32(_631) + 32]
            mem[_400] = 0
            _603 = mem[64]
            mem[64] = _400
            mem[_400] = 32
            _639 = mem[_603]
            mem[_400 + 32] = mem[_603]
            mem[_400 + 64 len ceil32(_639)] = mem[_603 + 32 len ceil32(_639)]
            if ceil32(_639) > _639:
                mem[_400 + _639 + 64] = 0
            return 32, mem[_400 + 32 len ceil32(_639) + 32]
        mem[0] = 17
        idx = 0
        s = 0
        while idx < stor17.length.field_1:
            mem[_356 + idx + 32] = stor17[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _588 = mem[96]
        mem[_356 + stor17.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_588) <= _588:
            _765 = mem[64]
            mem[64] = _356 + stor17.length.field_1 + _588 + 32
            mem[_356 + stor17.length.field_1 + _588 + 32] = 32
            _813 = mem[_765]
            mem[_356 + stor17.length.field_1 + _588 + 64] = mem[_765]
            mem[_356 + stor17.length.field_1 + _588 + 96 len ceil32(_813)] = mem[_765 + 32 len ceil32(_813)]
            if ceil32(_813) > _813:
                mem[_356 + stor17.length.field_1 + _588 + _813 + 96] = 0
            return 32, mem[_356 + stor17.length.field_1 + _588 + 64 len ceil32(_813) + 32]
        mem[_356 + stor17.length.field_1 + _588 + 32] = 0
        _771 = mem[64]
        mem[64] = _356 + stor17.length.field_1 + _588 + 32
        mem[_356 + stor17.length.field_1 + _588 + 32] = 32
        _817 = mem[_771]
        mem[_356 + stor17.length.field_1 + _588 + 64] = mem[_771]
        mem[_356 + stor17.length.field_1 + _588 + 96 len ceil32(_817)] = mem[_771 + 32 len ceil32(_817)]
        if ceil32(_817) > _817:
            mem[_356 + stor17.length.field_1 + _588 + _817 + 96] = 0
        return 32, mem[_356 + stor17.length.field_1 + _588 + 64 len ceil32(_817) + 32]
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
    _357 = mem[64]
    if bool(stor17.length):
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor17.length):
            mem[mem[64] + 32] = Mask(248, 8, stor17.length)
            _393 = mem[96]
            mem[mem[64] + stor17.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _590 = mem[64]
                mem[64] = mem[64] + stor17.length.field_1 + mem[96] + 32
                mem[_357 + stor17.length.field_1 + mem[96] + 32] = 32
                _632 = mem[_590]
                mem[_357 + stor17.length.field_1 + _393 + 64] = mem[_590]
                mem[_357 + stor17.length.field_1 + _393 + 96 len ceil32(_632)] = mem[_590 + 32 len ceil32(_632)]
                if ceil32(_632) > _632:
                    mem[_357 + stor17.length.field_1 + _393 + _632 + 96] = 0
                return memory
                  from mem[64]
                   len _357 + stor17.length.field_1 + _393 + ceil32(_632) + -mem[64] + 96
            mem[mem[64] + stor17.length.field_1 + mem[96] + 32] = 0
            _605 = mem[64]
            mem[64] = mem[64] + stor17.length.field_1 + mem[96] + 32
            mem[_357 + stor17.length.field_1 + mem[96] + 32] = 32
            _640 = mem[_605]
            mem[_357 + stor17.length.field_1 + _393 + 64] = mem[_605]
            mem[_357 + stor17.length.field_1 + _393 + 96 len ceil32(_640)] = mem[_605 + 32 len ceil32(_640)]
            if ceil32(_640) > _640:
                mem[_357 + stor17.length.field_1 + _393 + _640 + 96] = 0
            return 32, mem[_357 + stor17.length.field_1 + _393 + 64 len ceil32(_640) + 32]
        if bool(stor17.length) != 1:
            _398 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_398) <= _398:
                _592 = mem[64]
                mem[64] = _398
                mem[_398] = 32
                _633 = mem[_592]
                mem[_398 + 32] = mem[_592]
                mem[_398 + 64 len ceil32(_633)] = mem[_592 + 32 len ceil32(_633)]
                if ceil32(_633) > _633:
                    mem[_398 + _633 + 64] = 0
                return 32, mem[_398 + 32 len ceil32(_633) + 32]
            mem[_398] = 0
            _607 = mem[64]
            mem[64] = _398
            mem[_398] = 32
            _641 = mem[_607]
            mem[_398 + 32] = mem[_607]
            mem[_398 + 64 len ceil32(_641)] = mem[_607 + 32 len ceil32(_641)]
            if ceil32(_641) > _641:
                mem[_398 + _641 + 64] = 0
            return 32, mem[_398 + 32 len ceil32(_641) + 32]
        mem[0] = 17
        idx = 0
        s = 0
        while idx < stor17.length.field_1:
            mem[_357 + idx + 32] = stor17[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _591 = mem[96]
        mem[_357 + stor17.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_591) <= _591:
            _766 = mem[64]
            mem[64] = _357 + stor17.length.field_1 + _591 + 32
            mem[_357 + stor17.length.field_1 + _591 + 32] = 32
            _814 = mem[_766]
            mem[_357 + stor17.length.field_1 + _591 + 64] = mem[_766]
            mem[_357 + stor17.length.field_1 + _591 + 96 len ceil32(_814)] = mem[_766 + 32 len ceil32(_814)]
            if ceil32(_814) > _814:
                mem[_357 + stor17.length.field_1 + _591 + _814 + 96] = 0
            return 32, mem[_357 + stor17.length.field_1 + _591 + 64 len ceil32(_814) + 32]
        mem[_357 + stor17.length.field_1 + _591 + 32] = 0
        _773 = mem[64]
        mem[64] = _357 + stor17.length.field_1 + _591 + 32
        mem[_357 + stor17.length.field_1 + _591 + 32] = 32
        _818 = mem[_773]
        mem[_357 + stor17.length.field_1 + _591 + 64] = mem[_773]
        mem[_357 + stor17.length.field_1 + _591 + 96 len ceil32(_818)] = mem[_773 + 32 len ceil32(_818)]
        if ceil32(_818) > _818:
            mem[_357 + stor17.length.field_1 + _591 + _818 + 96] = 0
        return 32, mem[_357 + stor17.length.field_1 + _591 + 64 len ceil32(_818) + 32]
    if bool(stor17.length) == stor17.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor17.length):
        mem[mem[64] + 32] = Mask(248, 8, stor17.length)
        _399 = mem[96]
        mem[mem[64] + stor17.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _593 = mem[64]
            mem[64] = mem[64] + stor17.length.field_1 + mem[96] + 32
            mem[_357 + stor17.length.field_1 + mem[96] + 32] = 32
            _634 = mem[_593]
            mem[_357 + stor17.length.field_1 + _399 + 64] = mem[_593]
            mem[_357 + stor17.length.field_1 + _399 + 96 len ceil32(_634)] = mem[_593 + 32 len ceil32(_634)]
            if ceil32(_634) > _634:
                mem[_357 + stor17.length.field_1 + _399 + _634 + 96] = 0
            return memory
              from mem[64]
               len _357 + stor17.length.field_1 + _399 + ceil32(_634) + -mem[64] + 96
        mem[mem[64] + stor17.length.field_1 + mem[96] + 32] = 0
        _609 = mem[64]
        mem[64] = mem[64] + stor17.length.field_1 + mem[96] + 32
        mem[_357 + stor17.length.field_1 + mem[96] + 32] = 32
        _642 = mem[_609]
        mem[_357 + stor17.length.field_1 + _399 + 64] = mem[_609]
        mem[_357 + stor17.length.field_1 + _399 + 96 len ceil32(_642)] = mem[_609 + 32 len ceil32(_642)]
        if ceil32(_642) > _642:
            mem[_357 + stor17.length.field_1 + _399 + _642 + 96] = 0
        return 32, mem[_357 + stor17.length.field_1 + _399 + 64 len ceil32(_642) + 32]
    if bool(stor17.length) != 1:
        _401 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_401) <= _401:
            _595 = mem[64]
            mem[64] = _401
            mem[_401] = 32
            _635 = mem[_595]
            mem[_401 + 32] = mem[_595]
            mem[_401 + 64 len ceil32(_635)] = mem[_595 + 32 len ceil32(_635)]
            if ceil32(_635) > _635:
                mem[_401 + _635 + 64] = 0
            return 32, mem[_401 + 32 len ceil32(_635) + 32]
        mem[_401] = 0
        _611 = mem[64]
        mem[64] = _401
        mem[_401] = 32
        _643 = mem[_611]
        mem[_401 + 32] = mem[_611]
        mem[_401 + 64 len ceil32(_643)] = mem[_611 + 32 len ceil32(_643)]
        if ceil32(_643) > _643:
            mem[_401 + _643 + 64] = 0
        return 32, mem[_401 + 32 len ceil32(_643) + 32]
    mem[0] = 17
    idx = 0
    s = 0
    while idx < stor17.length.field_1:
        mem[_357 + idx + 32] = stor17[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _594 = mem[96]
    mem[_357 + stor17.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(_594) <= _594:
        _767 = mem[64]
        mem[64] = _357 + stor17.length.field_1 + _594 + 32
        mem[_357 + stor17.length.field_1 + _594 + 32] = 32
        _815 = mem[_767]
        mem[_357 + stor17.length.field_1 + _594 + 64] = mem[_767]
        mem[_357 + stor17.length.field_1 + _594 + 96 len ceil32(_815)] = mem[_767 + 32 len ceil32(_815)]
        if ceil32(_815) > _815:
            mem[_357 + stor17.length.field_1 + _594 + _815 + 96] = 0
        return 32, mem[_357 + stor17.length.field_1 + _594 + 64 len ceil32(_815) + 32]
    mem[_357 + stor17.length.field_1 + _594 + 32] = 0
    _775 = mem[64]
    mem[64] = _357 + stor17.length.field_1 + _594 + 32
    mem[_357 + stor17.length.field_1 + _594 + 32] = 32
    _819 = mem[_775]
    mem[_357 + stor17.length.field_1 + _594 + 64] = mem[_775]
    mem[_357 + stor17.length.field_1 + _594 + 96 len ceil32(_819)] = mem[_775 + 32 len ceil32(_819)]
    if ceil32(_819) > _819:
        mem[_357 + stor17.length.field_1 + _594 + _819 + 96] = 0
    return 32, mem[_357 + stor17.length.field_1 + _594 + 64 len ceil32(_819) + 32]
}



}
