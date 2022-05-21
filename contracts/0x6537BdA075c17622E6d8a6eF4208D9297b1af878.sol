contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const PAUSER_ROLE = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a


mapping of struct roleAdmin;
array of struct roleMember;
array of struct stor2;
array of struct stor3;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor7;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor9;
array of uint256 tokenByIndex;
mapping of uint256 stor11;
uint8 stor12;
uint256 stor13;
array of struct stor14;

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

function paused() payable {
    return bool(stor12)
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
    return bool(stor7[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function pause() payable {
    if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC721PresetMinterPauserAutoId: must have pauser role to pause'
    if stor12:
        revert with 0, 'Pausable: paused'
    stor12 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC721PresetMinterPauserAutoId: must have pauser role to unpause'
    if not stor12:
        revert with 0, 'Pausable: not paused'
    stor12 = 0
    emit Unpaused(msg.sender);
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
        if not stor7[stor4[arg2]][address(msg.sender)]:
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

function mint(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC721PresetMinterPauserAutoId: must have minter role to mint'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor13]:
        revert with 0, 'ERC721: token already minted'
    stor11[stor13] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor13
    if arg1:
        tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)]] = stor13
        stor9[stor13] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor11[stor13] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor11[stor13]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[stor13]
        stor11[stor13] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[stor13] = arg1
    emit Transfer(0, arg1, stor13);
    stor13++
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor7[stor4[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if balanceOf[stor4[arg1]] < 1:
        revert with 'NH{q', 17
    if stor9[arg1] != balanceOf[stor4[arg1]] - 1:
        tokenOfOwnerByIndex[stor4[arg1]][stor9[arg1]] = tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1]
        stor9[stor8[stor4[arg1]][stor5[stor4[arg1]] - 1]] = stor9[arg1]
    stor9[arg1] = 0
    tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 'NH{q', 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if stor11[arg1] >= tokenByIndex.length:
        revert with 'NH{q', 50
    tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
    stor11[stor10[stor10.length]] = stor11[arg1]
    stor11[arg1] = 0
    if not tokenByIndex.length:
        revert with 'NH{q', 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor4[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor4[arg1]]--
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
            if not stor7[stor4[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
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
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor9[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor9[stor8[address(arg1)][stor5[address(arg1)] - 1]] = stor9[arg3]
            stor9[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor9[arg3] = balanceOf[address(arg2)]
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
    if stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
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
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function symbol() payable {
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
            if not stor7[stor4[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
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
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor9[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor9[stor8[address(arg1)][stor5[address(arg1)] - 1]] = stor9[arg3]
            stor9[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor9[arg3] = balanceOf[address(arg2)]
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
    if stor12:
        revert with 0, 'ERC721Pausable: token transfer while paused'
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
            if not stor7[stor4[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
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
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor9[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor9[stor8[address(arg1)][stor5[address(arg1)] - 1]] = stor9[arg3]
            stor9[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor9[arg3] = balanceOf[address(arg2)]
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
    if stor12:
        revert with 0, 'ERC721Pausable: token transfer while paused'
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
    mem[0] = arg1
    mem[32] = 4
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if not bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[96] = stor14.length.field_1
        if not bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor14.length.field_1:
                if stor14.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor14.length.field_1) + 192]) > mem[ceil32(stor14.length.field_1) + 192]:
                        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
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
                mem[ceil32(stor14.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                if ceil32(stor14.length.field_1) > stor14.length.field_1:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + 256] = 0
                return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
            if 31 >= stor14.length.field_1:
                mem[128] = 256 * stor14.length.field_8
                if stor14.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor14.length.field_1) + 192]) > mem[ceil32(stor14.length.field_1) + 192]:
                        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
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
                mem[ceil32(stor14.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                if ceil32(stor14.length.field_1) > stor14.length.field_1:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + 256] = 0
                return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
            mem[128] = uint256(stor14.field_0)
            idx = 128
            s = 0
            while stor14.length.field_1 + 96 > idx:
                mem[idx + 32] = stor14[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if stor14.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor14.length.field_1) + 192]) > mem[ceil32(stor14.length.field_1) + 192]:
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
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
            mem[ceil32(stor14.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            if ceil32(stor14.length.field_1) > stor14.length.field_1:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) + 32], 
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor14.length.field_1:
            if stor14.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor14.length.field_1) + 192]) > mem[ceil32(stor14.length.field_1) + 192]:
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
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
            mem[ceil32(stor14.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            if ceil32(stor14.length.field_1) > stor14.length.field_1:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) + 32], 
        if 31 >= stor14.length.field_1:
            mem[128] = 256 * stor14.length.field_8
            if stor14.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor14.length.field_1) + 192]) > mem[ceil32(stor14.length.field_1) + 192]:
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
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
            mem[ceil32(stor14.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            if ceil32(stor14.length.field_1) > stor14.length.field_1:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) + 32], 
        mem[0] = 14
        mem[128] = uint256(stor14.field_0)
        idx = 128
        s = 0
        while stor14.length.field_1 + 96 > idx:
            mem[idx + 32] = stor14[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor14.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor14.length.field_1) + 192]) > mem[ceil32(stor14.length.field_1) + 192]:
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
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
        mem[ceil32(stor14.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) > stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
        mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + 256] = 0
        return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor14.length.field_1
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor14.length.field_1:
            if stor14.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor14.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                    mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                        _3670 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3670)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3670)]
                        if ceil32(_3670) > _3670:
                            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3670 + 256] = 0
                        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3670) + 32], 
                    _3702 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3702)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3702)]
                    if ceil32(_3702) > _3702:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3702 + 256] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3702) + 32], 
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                    _3671 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3671)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3671)]
                    if ceil32(_3671) > _3671:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3671 + 256] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3671) + 32], 
                _3703 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3703)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3703)]
                if ceil32(_3703) > _3703:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3703 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3703) + 32], 
            mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                    _3672 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3672)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3672)]
                    if ceil32(_3672) > _3672:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3672 + 256] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3672) + 32], 
                _3704 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3704)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3704)]
                if ceil32(_3704) > _3704:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3704 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3704) + 32], 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _3673 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3673)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3673)]
                if ceil32(_3673) > _3673:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3673 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3673) + 32], 
            _3705 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3705)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3705)]
            if ceil32(_3705) > _3705:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3705 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3705) + 32], 
        if 31 >= stor14.length.field_1:
            mem[128] = 256 * stor14.length.field_8
            if stor14.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor14.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                    mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                        _3674 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3674)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3674)]
                        if ceil32(_3674) > _3674:
                            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3674 + 256] = 0
                        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3674) + 32], 
                    _3706 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3706)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3706)]
                    if ceil32(_3706) > _3706:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3706 + 256] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3706) + 32], 
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                    _3675 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3675)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3675)]
                    if ceil32(_3675) > _3675:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3675 + 256] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3675) + 32], 
                _3707 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3707)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3707)]
                if ceil32(_3707) > _3707:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3707 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3707) + 32], 
            mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                    _3676 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3676)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3676)]
                    if ceil32(_3676) > _3676:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3676 + 256] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3676) + 32], 
                _3708 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3708)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3708)]
                if ceil32(_3708) > _3708:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3708 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3708) + 32], 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _3677 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3677)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3677)]
                if ceil32(_3677) > _3677:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3677 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3677) + 32], 
            _3709 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3709)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3709)]
            if ceil32(_3709) > _3709:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3709 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3709) + 32], 
        mem[0] = 14
        mem[128] = uint256(stor14.field_0)
        idx = 128
        s = 0
        while stor14.length.field_1 + 96 > idx:
            mem[idx + 32] = stor14[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor14.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor14.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                    _4406 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4406)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4406)]
                    if ceil32(_4406) > _4406:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4406 + 256] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4406) + 32], 
                _4422 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4422)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4422)]
                if ceil32(_4422) > _4422:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4422 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4422) + 32], 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _4407 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4407)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4407)]
                if ceil32(_4407) > _4407:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4407 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4407) + 32], 
            _4423 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4423)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4423)]
            if ceil32(_4423) > _4423:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4423 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4423) + 32], 
        mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) <= stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _4408 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4408)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4408)]
                if ceil32(_4408) > _4408:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4408 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4408) + 32], 
            _4424 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4424)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4424)]
            if ceil32(_4424) > _4424:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4424 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4424) + 32], 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
        mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
            _4409 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4409)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4409)]
            if ceil32(_4409) > _4409:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4409 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4409) + 32], 
        _4425 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4425)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4425)]
        if ceil32(_4425) > _4425:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4425 + 256] = 0
        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4425) + 32], 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 'NH{q', 34
    if not stor14.length.field_1:
        if stor14.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor14.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                    _3678 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3678)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3678)]
                    if ceil32(_3678) > _3678:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3678 + 256] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3678) + 32], 
                _3710 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3710)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3710)]
                if ceil32(_3710) > _3710:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3710 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3710) + 32], 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _3679 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3679)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3679)]
                if ceil32(_3679) > _3679:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3679 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3679) + 32], 
            _3711 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3711)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3711)]
            if ceil32(_3711) > _3711:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3711 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3711) + 32], 
        mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) <= stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _3680 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3680)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3680)]
                if ceil32(_3680) > _3680:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3680 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3680) + 32], 
            _3712 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3712)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3712)]
            if ceil32(_3712) > _3712:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3712 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3712) + 32], 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
        mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
            _3681 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3681)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3681)]
            if ceil32(_3681) > _3681:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3681 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3681) + 32], 
        _3713 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3713)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3713)]
        if ceil32(_3713) > _3713:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3713 + 256] = 0
        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3713) + 32], 
    if 31 >= stor14.length.field_1:
        mem[128] = 256 * stor14.length.field_8
        if stor14.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor14.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                    _3682 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3682)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3682)]
                    if ceil32(_3682) > _3682:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3682 + 256] = 0
                    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3682) + 32], 
                _3714 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3714)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3714)]
                if ceil32(_3714) > _3714:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3714 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3714) + 32], 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _3683 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3683)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3683)]
                if ceil32(_3683) > _3683:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3683 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3683) + 32], 
            _3715 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3715)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3715)]
            if ceil32(_3715) > _3715:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3715 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3715) + 32], 
        mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) <= stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _3684 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3684)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3684)]
                if ceil32(_3684) > _3684:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3684 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3684) + 32], 
            _3716 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3716)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3716)]
            if ceil32(_3716) > _3716:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3716 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3716) + 32], 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
        mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
            _3685 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3685)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3685)]
            if ceil32(_3685) > _3685:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3685 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3685) + 32], 
        _3717 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_3717)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_3717)]
        if ceil32(_3717) > _3717:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _3717 + 256] = 0
        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_3717) + 32], 
    mem[0] = 14
    mem[128] = uint256(stor14.field_0)
    idx = 128
    s = 0
    while stor14.length.field_1 + 96 > idx:
        mem[idx + 32] = stor14[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor14.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = '0'
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor14.length.field_1) + 192]) <= mem[ceil32(stor14.length.field_1) + 192]:
            return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 192] + 289] = 0
        return 32, mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257 len ceil32(mem[ceil32(stor14.length.field_1) + 192]) + 32], 
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
    mem[ceil32(stor14.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) <= stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
            mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                _4410 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4410)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4410)]
                if ceil32(_4410) > _4410:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4410 + 256] = 0
                return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4410) + 32], 
            _4426 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4426)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4426)]
            if ceil32(_4426) > _4426:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4426 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4426) + 32], 
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
        mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
            _4411 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4411)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4411)]
            if ceil32(_4411) > _4411:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4411 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4411) + 32], 
        _4427 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4427)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4427)]
        if ceil32(_4427) > _4427:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4427 + 256] = 0
        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4427) + 32], 
    mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
    if ceil32(stor14.length.field_1) <= stor14.length.field_1:
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
        mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
            _4412 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4412)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4412)]
            if ceil32(_4412) > _4412:
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4412 + 256] = 0
            return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4412) + 32], 
        _4428 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4428)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4428)]
        if ceil32(_4428) > _4428:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4428 + 256] = 0
        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4428) + 32], 
    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 0
    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
    mem[64] = ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192
    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 192] = 32
    if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
        _4413 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4413)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4413)]
        if ceil32(_4413) > _4413:
            mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4413 + 256] = 0
        return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4413) + 32], 
    _4429 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 256 len ceil32(_4429)] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(_4429)]
    if ceil32(_4429) > _4429:
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + _4429 + 256] = 0
    return 32, mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + mem[ceil32(stor14.length.field_1) + 128] + 224 len ceil32(_4429) + 32], 
}



}
